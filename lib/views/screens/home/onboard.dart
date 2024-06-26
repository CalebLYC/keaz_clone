import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keaz_clone/views/widgets/custom_button.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/splash_background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListView(
                  /*mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,*/
                  children: [
                    /*Expanded(
                      child:*/
                    Image.asset(
                      'assets/images/bank_card.png',
                      fit: BoxFit.scaleDown,
                      width: double.infinity,
                    ),
                    //),
                    SizedBox(height: 10.h),
                    Text(
                      "Bienvenue sur Keaz. La banque à portée du doigt",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.3,
                            fontSize: 26.sp,
                          ),
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      "Connectez-vous à MyKeaz et profitez d'une expérience riche et intuitive.",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(.8),
                            height: 1.6,
                            fontSize: 16.sp,
                          ),
                    ),
                    SizedBox(height: 5.h),
                    CustomButton(
                      key: const ValueKey('authButton'),
                      color: Colors.white,
                      text: "Se connecter",
                      textColor: Colors.black,
                      onPressed: () => Navigator.pushNamed(context, '/auth'),
                    ),
                    SizedBox(height: 3.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
