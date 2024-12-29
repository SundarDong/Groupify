import 'package:authentication_ui/common/common.dart';
import 'package:authentication_ui/router/router.dart';
import 'package:authentication_ui/screens/fade_animationtest.dart';
import 'package:authentication_ui/widgets/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromRGBO(232, 236, 244, 1),
      body: SafeArea(
        child: SingleChildScrollView(  // Added this to make the page scrollable
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInAnimation(
                  delay: 0.6,
                  child: IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: const Icon(
                      CupertinoIcons.back,
                      size: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInAnimation(
                        delay: 0.9,
                        child: Text(
                          "Hello! Register to get  ",
                          style: Common().titelTheme,
                        ),
                      ),
                      FadeInAnimation(
                        delay: 1.2,
                        child: Text(
                          "started",
                          style: Common().titelTheme,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Form(
                    child: Column(
                      children: [
                        FadeInAnimation(
                          delay: 1.5,
                          child: const CustomTextFormField(
                            hinttext: 'Username',
                            obsecuretext: false,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                       const FadeInAnimation(
                          delay: 1.8,
                          child: CustomTextFormField(
                            hinttext: 'Email',
                            obsecuretext: false,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                       const FadeInAnimation(
                          delay: 2.1,
                          child: CustomTextFormField(
                            hinttext: 'Password',
                            obsecuretext: true,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                       const FadeInAnimation(
                          delay: 2.4,
                          child: CustomTextFormField(
                            hinttext: 'Confirm password',
                            obsecuretext: false,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        FadeInAnimation(
                          delay: 2.7,
                          child: CustomElevatedButton(
                            message: "Register",
                            function: () {},
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Column(
                      children: [
                        FadeInAnimation(
                          delay: 2.9,
                          child: Text(
                            "Or Register with",
                            style: Common().semiboldblack,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        FadeInAnimation(
                          delay: 3.2,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 30, left: 30),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                    "assets/images/facebook_ic (1).svg"),
                                SvgPicture.asset("assets/images/google_ic-1.svg"),
                                Image.asset(
                                  "assets/images/Vector.png",
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FadeInAnimation(
                  delay: 2.8,
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: Column(
                        children: [
                          Text(
                            "Already have an account?",
                            style: Common().hinttext,
                          ),
                          TextButton(
                            onPressed: () {
                              GoRouter.of(context)
                                  .pushNamed(Routers.loginpage.name);
                            },
                            child: Text(
                              "Login Now",
                              style: Common().mediumTheme,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
