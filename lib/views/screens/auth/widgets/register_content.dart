import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keaz_clone/core/themes/app_colors.dart';
import 'package:keaz_clone/views/widgets/custom_button.dart';
import 'package:keaz_clone/views/widgets/custom_gradient_text.dart';
import 'package:keaz_clone/views/widgets/custom_text_field.dart';

class RegisterContent extends StatelessWidget {
  const RegisterContent({super.key, required this.progress});
  final double progress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: null,
              child: Text(
                '',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColors.colorPrimary,
                    ),
              ),
            ),
          ),
          const Spacer(),
          CustomGradientText(
            'Inscrivez-vous',
            gradient: const LinearGradient(
              colors: [AppColors.colorPrimary2, AppColors.colorPrimary],
            ),
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: AppColors.colorPrimary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Spacer(),
          const CustomTextField(
              label: "Nom complet", icon: Icons.person_3_outlined),
          SizedBox(height: 15.h),
          const CustomTextField(
              label: "Nom d'utilisateur", icon: Icons.person_outline),
          SizedBox(height: 15.h),
          const CustomTextField(
              label: "Mot de passe", icon: Icons.lock_outline),
          SizedBox(height: 5.h),
          Align(
            alignment: Alignment.centerRight,
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    "Pays actuel",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 14.5.sp),
                  ),
                  Text(
                    "TOGO TG",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14.5.sp,
                          color: AppColors.colorPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(flex: 5),
          CustomButton(
            color: AppColors.colorPrimary,
            text: "S'inscrire",
            textColor: Colors.white,
            onPressed: () {},
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
