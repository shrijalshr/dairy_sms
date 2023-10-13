
import 'package:dairy_sms/common/app_extensions.dart';
import 'package:flutter/material.dart';

import '../common/app_color.dart';
import '../common/style_manager.dart';

void showErrorSnackBar(
  BuildContext context,
  String msg,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: SizedBox(
        width: 100.fw - 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.report_problem_outlined,
              color: AppColor.error,
              size: 24,
            ).pr(8),
            SizedBox(
              width: 100.fw - 64 - 8 - 24,
              child: Text(
                msg,
                style: AppStyle.errorBoldStyle(),
                maxLines: null,
              ),
            ),
          ],
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: const EdgeInsets.all(16),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      backgroundColor: AppColor.white,
      duration: const Duration(seconds: 3),
    ),
  );
}

void showSuccessSnackBar(
  BuildContext context,
  String msg,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          const Icon(
            Icons.done,
            color: AppColor.green1,
          ).pr(8),
          Text(
            msg,
            style: AppStyle.successBoldStyle(),
            maxLines: null,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: const EdgeInsets.all(16),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      backgroundColor: AppColor.white,
      duration: const Duration(seconds: 3),
    ),
  );
}

void showInfoSnackBar(
  BuildContext context,
  String msg,
) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          const Icon(Icons.info_outline, color: AppColor.primary).pr(8),
          Text(
            msg,
            style: AppStyle.regularStyle(),
            maxLines: null,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      margin: const EdgeInsets.all(16),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      backgroundColor: AppColor.white,
      duration: const Duration(seconds: 3),
    ),
  );
}
