import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/utils/colors.dart';
import 'package:social_media_app/utils/textStyles.dart';

class ToastService {
  static sendAlert({
    required BuildContext context,
    required String message,
    required String toastStatus,
  }) {
    showToastWidget(
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: greyShade3,
            ),
          ),
          child: Row(
            children: [
              Icon(
                toastStatus == 'SUCCESS'
                    ? Icons.check_circle
                    : toastStatus == 'ERROR'
                        ? Icons.warning_sharp
                    : Icons.warning_rounded,
                color: toastStatus == 'SUCCESS'
                    ? success
                    : toastStatus == 'ERROR'
                        ? error
                        : Colors.green,
              ),
              const SizedBox(
                width: 8,
              ),
              SizedBox(
                width: 68.w,
                child: Text(
                  message,
                  textAlign: TextAlign.left,
                  style: AppTextStyles.small12,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        animation: StyledToastAnimation.slideFromBottom,
        reverseAnimation: StyledToastAnimation.slideFromBottomFade,
        context: context,
        duration: const Duration(seconds: 5),
        position: StyledToastPosition.bottom);
  }
}
