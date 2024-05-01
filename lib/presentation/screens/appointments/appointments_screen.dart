part of 'appointments.imports.dart';

@RoutePage()
class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          context.router.pushNamed('/create');
        },
        label: const Text("Create Appointment"),
        icon: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("Appointify"),
        toolbarHeight: 6.h,
        actions: [
          PopupMenuButton(
            position: PopupMenuPosition.under,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                    onTap: () {
                      context
                          .read<ThemeBloc>()
                          .add(const ThemeEvent.toggleTheme());
                    },
                    child: Row(
                      children: [
                        Icon(context.read<ThemeBloc>().state.mode ==
                                ThemeMode.dark
                            ? Icons.light_mode_outlined
                            : CupertinoIcons.moon),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          context.read<ThemeBloc>().state.mode == ThemeMode.dark
                              ? "Light Mode"
                              : "Dark Mode",
                        )
                      ],
                    )),
              ];
            },
          ),
        ],
      ),
      body: BlocBuilder<AppointmentBloc, AppointmentState>(
        bloc: context.read<AppointmentBloc>()
          ..add(const AppointmentEvent.getAll()),
        builder: (context, state) {
          if (state.blocState == BlocState.loaded) {
            return Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color:
                        Theme.of(context).colorScheme.outline.withOpacity(0.15),
                  ),
                  child: TextField(
                    controller: searchController,
                    onChanged: (value) {
                      context
                          .read<AppointmentBloc>()
                          .add(AppointmentEvent.getAll(value));
                    },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: state.keyword.isEmpty
                          ? null
                          : IconButton(
                              onPressed: () {
                                searchController.text = '';
                                context
                                    .read<AppointmentBloc>()
                                    .add(const AppointmentEvent.getAll(''));
                              },
                              icon: const Icon(Icons.close),
                            ),
                      border: InputBorder.none,
                      hintText: 'Search...',
                    ),
                  ),
                ),
                if (state.appointments.isNotEmpty)
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async {
                        context
                            .read<AppointmentBloc>()
                            .add(const AppointmentEvent.getAll());
                      },
                      child: ListView(
                        physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics(),
                        ),
                        children: [
                          for (final item in state.appointments)
                            ItemTile(
                                onTap: () {
                                  context.router
                                      .push(EditAppointmentRoute(id: item.id));
                                },
                                onEdit: () {
                                  context.router
                                      .push(EditAppointmentRoute(id: item.id));
                                },
                                onDelete: () {
                                  context
                                      .read<AppointmentBloc>()
                                      .add(AppointmentEvent.delete(item.id));
                                },
                                title: item.name,
                                subTitle:
                                    item.date.formatTo('yyyy-MM-dd hh:mm a'),
                                hasPassed: !item.date.isAfter(
                                    state.currentDate ?? DateTime.now())),
                        ],
                      ),
                    ),
                  )
                else
                  const Center(
                    child: Text("No appointments found"),
                  ),
              ],
            );
          } else if (state.blocState == BlocState.error &&
              state.error != null) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      state.error!.message,
                      textAlign: TextAlign.center,
                    ),
                    Gap(1.h),
                    ElevatedButton(
                        onPressed: () {
                          context
                              .read<AppointmentBloc>()
                              .add(const AppointmentEvent.getAll());
                        },
                        child: const Text("Reload"))
                  ],
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
