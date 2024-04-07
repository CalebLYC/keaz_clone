import 'package:flutter/material.dart';
import 'package:keaz_clone/core/themes/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late PageController _pageController;
  double _progress = 0;
  double _currentPage = 0;

  @override
  void initState() {
    _pageController = PageController()
      ..addListener(
        () => setState(() {
          _progress = _pageController.page ?? 0;
        }),
      );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Container(
              height:
                  size.height * 0.6 - (_progress > 1 ? -1.5 : _progress * 140),
              width: double.infinity,
              padding: EdgeInsets.all(90.w),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    AppColors.colorPrimary.withOpacity(.5),
                    BlendMode.darken,
                  ),
                  image: const AssetImage("assets/images/cover.jpg"),
                ),
              ),
              child: Image.asset(
                "assets/images/keaz.png",
                height: 90.h,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height:
                  size.height * 0.5 + (_progress > 1 ? -1.5 : _progress * 110),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    width: double.infinity,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
