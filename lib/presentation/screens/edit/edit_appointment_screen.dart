part of 'edit_appointment.imports.dart';

@RoutePage()
class EditAppointmentScreen extends StatelessWidget {
  final String id;
  const EditAppointmentScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    DateTime? date;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Appointment"),
        centerTitle: true,
      ),
      body: BlocBuilder<AppointmentBloc, AppointmentState>(
        bloc: context.read<AppointmentBloc>()..add(AppointmentEvent.get(id)),
        builder: (context, state) {
          if (state.blocState == BlocState.error && state.error != null) {
            return Center(
              child: Text(state.error!.message),
            );
          } else {
            titleController.text = state.appointment?.name ?? '';
            descriptionController.text = state.appointment?.description ?? '';
            date = state.appointment?.date;

            return ListView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              children: [
                TextField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Appointment Name',
                    label: Text("Name"),
                  ),
                ),
                Gap(1.h),
                TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Appointment Description',
                    label: Text("Description"),
                  ),
                ),
                Gap(1.h),
                BlocBuilder<StateSetterBloc, StateSetterState>(
                  bloc: context.read<StateSetterBloc>()
                    ..add(StateSetterEvent.started(
                        value: date?.formatTo('yyyy-MM-dd HH:mm:ss') ??
                            'Choose date')),
                  builder: (context, state) {
                    return ListTile(
                      onTap: () async {
                        showDatePicker(
                                context: context,
                                firstDate: DateTime(2000),
                                lastDate: DateTime.now()
                                    .add(const Duration(days: 120)))
                            .then(
                          (selectedDate) {
                            if (selectedDate != null) {
                              date = selectedDate;
                              showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now())
                                  .then((time) {
                                if (time != null) {
                                  final result = DateTime(
                                    date!.year,
                                    date!.month,
                                    date!.day,
                                    time.hour,
                                    time.minute,
                                    0,
                                    0,
                                    0,
                                  );
                                  date = result;

                                  context.read<StateSetterBloc>().add(
                                      StateSetterEvent.setState(
                                          newValue: result.formatTo(
                                              'yyyy-MM-dd HH:mm:ss')));
                                }
                              });
                            }
                          },
                        );
                      },
                      leading: const Icon(Icons.date_range),
                      trailing: const Icon(Icons.open_in_new_outlined),
                      title: Text('${state.value}'),
                      shape: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                          borderRadius: BorderRadius.circular(5.0)),
                    );
                  },
                ),
                Gap(0.7.h),
                OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.tertiary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () {
                    if (titleController.text.isEmpty) {
                      Utils.showErrorSnackbar(
                          context, 'The Name field is required');
                      return;
                    }

                    if (date == null) {
                      Utils.showErrorSnackbar(
                          context, 'Please choose a Date & Time');
                      return;
                    }

                    if (!date!.isAfter(DateTime.now())) {
                      Utils.showErrorSnackbar(
                          context, 'The Date & Time should be in the future');
                      return;
                    }

                    context
                        .read<AppointmentBloc>()
                        .add(AppointmentEvent.edit(AppointmentModel(
                          id: state.appointment!.id,
                          notificationId: state.appointment?.notificationId,
                          date: date!,
                          name: titleController.text,
                          description: descriptionController.text,
                        )));
                    context.router.maybePop();
                  },
                  child: const Text("Update"),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
