import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashView extends StatefulWidget {
  final Color? backgroundColor;
  final Widget? logo;
  final Widget? title;
  final Widget? subtitle;
  final Widget? loadingIndicator;
  final bool bottomLoading;
  final bool showStatusBar;
  final Gradient? gradient;
  final Duration? duration;
  final String? backgroundImageDecoration;
  final Widget done;
  const SplashView({
    Key? key,
    this.backgroundImageDecoration,
    this.backgroundColor,
    this.gradient,
    this.logo,
    this.title,
    this.subtitle,
    this.loadingIndicator,
    this.bottomLoading = false,
    this.duration = const Duration(seconds: 2),
    required this.done,
    this.showStatusBar = false,
  }) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      widget.duration!,
      () {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return widget.done;
        }), (route) => false);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          image: DecorationImage(
            image: ExactAssetImage("assets/images/splash.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (widget.bottomLoading) ? const Spacer() : const SizedBox(),
            widget.logo ?? const SizedBox(),
            widget.title ?? const SizedBox(),
            widget.subtitle ?? const SizedBox(),
            (widget.bottomLoading) ? const Spacer() : const SizedBox(),
            widget.loadingIndicator ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
