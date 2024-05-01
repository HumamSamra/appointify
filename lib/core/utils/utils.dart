import 'dart:math';

import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Utils {
  static int getUniqueId() {
    return Random().nextInt(999999999);
  }

  static showErrorSnackbar(BuildContext context, String err) {
    showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(
        message: err,
      ),
    );
  }
}
