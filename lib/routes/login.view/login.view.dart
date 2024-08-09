import 'package:flutter/material.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';
import '../../routes/login.view/login.layout.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      body: SafeArea(
        child: ResponsiveWebLayout.buildPlatformSpecificLayout(
            context: context,
            quadHDLayout: desktopLoginView(context),
            fullHDLayout: desktopLoginView(context),
            hdLayout: desktopLoginView(context),
            sdLayout: desktopLoginView(context),
            largeMobileLayout: mobileLoginView(context),
            mediumMobileLayout: mobileLoginView(context),
            smallMobileLayout: mobileLoginView(context),
            highResTabletLayout: tabletLoginView(context),
            standardTabletLayout: tabletLoginView(context)
        ),
      ),
    );
  }
}
