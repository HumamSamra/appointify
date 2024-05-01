import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ItemTile extends StatelessWidget {
  final Function()? onTap;
  final Function()? onDelete;
  final Function()? onEdit;
  final bool hasPassed;
  final String title;
  final String? subTitle;
  const ItemTile({
    super.key,
    required this.title,
    this.subTitle,
    this.onTap,
    this.onDelete,
    this.onEdit,
    required this.hasPassed,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: UniqueKey(),
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        dismissible: DismissiblePane(onDismissed: () {
          if (onDelete != null) {
            onDelete!();
          }
        }),
        extentRatio: 0.3,
        children: [
          SlidableAction(
            onPressed: (context) {
              if (onDelete != null) {
                _showDelete(context);
              }
            },
            backgroundColor: Theme.of(context).colorScheme.error,
            foregroundColor: Colors.white,
            icon: Icons.delete_outline,
            label: 'Delete',
          ),
        ],
      ),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
          ),
          child: Icon(
            hasPassed ? Icons.alarm_off_sharp : Icons.access_alarm_rounded,
            size: 30,
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
        title: Text(title),
        subtitle: subTitle == null
            ? null
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.date_range,
                    color: hasPassed
                        ? Theme.of(context).colorScheme.error
                        : Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    subTitle!,
                    style: TextStyle(
                      color: hasPassed
                          ? Theme.of(context).colorScheme.error
                          : Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
        trailing: PopupMenuButton(
          position: PopupMenuPosition.under,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          itemBuilder: (context) => [
            PopupMenuItem(
              onTap: onEdit,
              child: const Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 10,
                children: [
                  Icon(Icons.edit_note_outlined),
                  Text("Edit"),
                ],
              ),
            ),
            PopupMenuItem(
              onTap: onDelete == null
                  ? null
                  : () {
                      if (onDelete != null) {
                        _showDelete(context);
                      }
                    },
              child: const Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 10,
                children: [
                  Icon(Icons.delete_outline),
                  Text("Delete"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showDelete(BuildContext context) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      enableDrag: true,
      isDismissible: true,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.delete_outline_rounded,
              size: 50,
            ),
            Gap(1.h),
            const Text(
              "Are you sure?",
              style: TextStyle(fontSize: 20),
            ),
            Gap(1.h),
            const Text("The appointment will be deleted forever!"),
            Gap(3.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),
                Gap(7.w),
                ElevatedButton(
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      foregroundColor: Theme.of(context).colorScheme.error,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  onPressed: () {
                    onDelete!();
                    Navigator.pop(context);
                  },
                  child: const Text("Delete it"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
