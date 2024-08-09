import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../app/app.colors.dart';
import '../../app/app.constants.dart';

Widget desktopLoginView(BuildContext context){
  final TextEditingController userEmailController = TextEditingController();
  return SafeArea(
    child: Stack(
      children: [
        Positioned(
            top: 200,
            left: 180,
            right: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                              'Welcome  back',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Outfit',
                                color: Color(0XFF222222),
                                fontSize: 62,
                                letterSpacing: 1),
                          ),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Outfit',
                                  color: Color(0XFF222222),
                                  fontSize: 62,
                                  letterSpacing: 1),
                              children: <TextSpan>[
                                TextSpan(text: 'to'),
                                TextSpan(
                                    text: "  Acadameet ",
                                    style: TextStyle(color: redPrimary)
                                ),
                              ],
                            ),
                          ),
                          verticalSpaceSemiMedium,
                          const Text(
                            "Log in to your account to get back to your hub for",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Outfit',
                                color: darkestGrey,
                                fontSize: 22,
                                letterSpacing: 1),
                            softWrap: true,
                            overflow: TextOverflow.clip,
                          ),
                          const Text(
                            "scheduling meetings.",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Outfit',
                                color: darkestGrey,
                                fontSize: 22,
                                letterSpacing: 1),
                            softWrap: true,
                            overflow: TextOverflow.clip,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                verticalSpaceLarge,
                const Text(
                  "Email Address",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'JosefinaSans',
                      color: Color(0XFF111111),
                      fontSize: 24,
                      letterSpacing: 1),
                ),
                verticalSpaceSmall,
                Row(
                  children: [
                    SizedBox(
                      width: getScreenWidth(context) / 5,
                      child: TextFormField(
                        controller: userEmailController,
                        cursorColor: const Color(0xFF000000),
                        cursorWidth: 3,
                        cursorRadius: const Radius.circular(5),
                        style: const TextStyle(color: Color(0xFF000000)),
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value == '') {
                            return 'Enter Your Email';
                          }
                          return null;
                        },
                        autovalidateMode: AutovalidateMode.disabled,
                        decoration: InputDecoration(
                          hintText: "Enter You Email",
                          hintStyle: const TextStyle(
                            color: Color(0XFF838383),
                            fontFamily: 'JosefinaSans',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: redPrimary,
                              width: 2,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Color(0xFFDBDBDB),
                              width: 2,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Color(0xFFDBDBDB),
                              width: 2,
                            ),
                          ),
                          suffixStyle: const TextStyle(
                            color: Color(0xFF000000),
                            fontFamily: 'JosefinaSans',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    horizontalSpaceSmall,
                    ElevatedButton(
                      onPressed: () async {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        backgroundColor: redPrimary,
                      ),
                      child: const Text(
                          'Log in',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Outfit',
                          fontSize: 20,
                          color: Color(0XFFFFFFFF),
                        ),
                      )
                    ),
                  ],
                ),
                verticalSpaceLarge,
                GestureDetector(
                  onTap: () {},
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Outfit',
                          color: redSecondary,
                          fontSize: 20,
                          letterSpacing: 1),
                      children: <TextSpan>[
                        TextSpan(text: "Don't have an account?"),
                        TextSpan(
                            text: "  Sign Up ",
                            style: TextStyle(color: redPrimary)
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.fromLTRB(180, 20, 180, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.network(
                  "https://tratum.github.io/cloud-asset-storage/images/acadameet/logo.black.nobg.webp",
                  cacheWidth: 80,
                  cacheHeight: 65,
                  width: 80,
                  height: 65,
                  fit: BoxFit.cover,
                ),
                horizontalSpaceSemiSmall,
                GestureDetector(
                  onTap: () => context.go('/'),
                  child: const Text(
                    "Acadameet",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'JosefinaSans',
                      color: Color(0xFF000000),
                      fontSize: 32,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget tabletLoginView(BuildContext context){
  return const Placeholder();
}

Widget mobileLoginView(BuildContext context) {
  return const Placeholder();
}