import 'dart:ui';
import 'package:flutter/material.dart';
import 'app_color.dart';
import 'app_extensions.dart';

class LoadingOverlay {
  static final LoadingOverlay _loadingOverlay = LoadingOverlay._internal();

  factory LoadingOverlay() {
    return _loadingOverlay;
  }

  LoadingOverlay._internal();

  static OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: .4, sigmaY: .5),
          child: Container(
            color: Colors.black12.withOpacity(0.5),
            height: 100.fh,
            width: 100.fw,
          ),
        ),
        Center(
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: AppColor.lightGrey.withOpacity(.6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const SizedBox(
              height: 28,
              width: 28,
              child: CircularProgressIndicator.adaptive(),
            ),
          ),
        ),
      ],
    );
  });

  bool overlayOnSurface = false;

  ///Displays [CircularProgressIndicator] as an Overlay from anywhere in the app.
  static void showLoading(BuildContext context) async {
    if (!overlayEntry.mounted) {
      OverlayState overlayState = Overlay.of(context);
      overlayState.insert(overlayEntry);
    }
  }

  ///Hides the displayed overlay
  static void hideLoading() {
    if (overlayEntry.mounted) {
      overlayEntry.remove();
    }
  }
}
