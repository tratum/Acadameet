import 'package:flutter/material.dart';
import 'package:responsive_web_layout/responsive_web_layout.dart';
import 'package:stacked/stacked.dart';

import 'login_view_model.dart';

class LoginViewMobile extends ViewModelWidget<LoginViewModel> {
  const LoginViewMobile({super.key});

  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    return Scaffold(
      body: SafeArea(
        child: ResponsiveWebLayout.buildTabletLayout(
          context: context,
          highResTabletLayout: const Placeholder(),
          standardTabletLayout: const Placeholder(),
        ),
      ),
    );
  }
}
