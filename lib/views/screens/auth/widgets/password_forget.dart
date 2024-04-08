import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keaz_clone/core/themes/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keaz_clone/views/widgets/custom_button.dart';
import 'package:keaz_clone/views/widgets/custom_gradient_text.dart';
import 'package:keaz_clone/views/widgets/custom_text_field.dart';

class PasswordForget extends StatelessWidget {
  const PasswordForget({super.key});

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
            'Mot de passe oublié',
            gradient: const LinearGradient(
              colors: [AppColors.colorPrimary2, AppColors.colorPrimary],
            ),
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: AppColors.colorPrimary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Spacer(flex: 3),
          const CustomTextField(
              label: "Nom d'utilisateur", icon: Icons.person_outline),
          const Spacer(flex: 3),
          CustomButton(
            color: AppColors.colorPrimary,
            text: "Restaurer",
            textColor: Colors.white,
            onPressed: () {},
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
