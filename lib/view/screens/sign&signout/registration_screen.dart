import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:social_media_app/controller/signup_controller.dart';
import 'package:social_media_app/model/registrationModel.dart';
import 'package:social_media_app/utils/colors.dart';
import 'package:social_media_app/utils/textStyles.dart';
import 'package:social_media_app/utils/utils.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  final globalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
                vertical: 1.h,
              ),
              child: Consumer<SignUpController>(
                builder: (context, value, child) {
                  return Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Column(
                          children: [
                            Image(
                              image: const AssetImage(
                                  'assets/images/playstore.png'),
                              height: 20.h,
                            ),
                            Text(
                              'SOZO',
                              style: AppTextStyles.body18Bold,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sign Up',
                            style: AppTextStyles.body18Bold,
                          ),
                          Text(
                            'please fill up the details to sign up',
                            style: AppTextStyles.small8,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Form(
                        key: globalKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: nameController,
                              keyboardType: TextInputType.name,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter Valid Name';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 5.w, vertical: 2.h),
                                hintText: 'Name',
                                hintStyle: AppTextStyles.textFieldHintTextStyle,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            TextFormField(
                              validator: (value) {
                                bool emailValid = RegExp(
                                        r"^[a-zA-Z0-9.a-zA-z0-9.!#$%&'*+/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value!);
                                if (value.isEmpty) {
                                  return 'Enter Valid Email';
                                } else if (!emailValid) {
                                  return "Enter valid Email";
                                } else {
                                  return null;
                                }
                              },
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              focusNode: emailFocusNode,
                              onFieldSubmitted: (value) {
                                Utils.focusNoteUtils(
                                    context, emailFocusNode, passwordFocusNode);
                              },
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 5.w, vertical: 2.h),
                                  hintText: 'Email',
                                  hintStyle:
                                      AppTextStyles.textFieldHintTextStyle,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  )),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter Valid Password';
                                } else {
                                  return null;
                                }
                              },
                              controller: passwordController,
                              focusNode: passwordFocusNode,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 5.w, vertical: 2.h),
                                  hintText: 'Password',
                                  hintStyle:
                                      AppTextStyles.textFieldHintTextStyle,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  )),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(94.w, 6.h),

                                  backgroundColor: Colors.yellow[300],
                                  foregroundColor: black,
                                  // disabledBackgroundColor: black,
                                ),
                                onPressed: () {
                                  if (globalKey.currentState!.validate()) {
                                    value.signUpFunction(
                                        context,
                                        RegistrationModel(
                                          name: nameController.text,
                                          email: emailController.text,
                                          password: passwordController.text,
                                        ));
                                  } else {
                                    // Utils.toastMessage('Sign Up Failed');
                                  }

                                  // Navigator.pushAndRemoveUntil(
                                  //     context,
                                  //     PageTransition(
                                  //         child: const MainScreen(),
                                  //         type: PageTransitionType.leftToRight),
                                  //     (route) => false);
                                },
                                child: Text(
                                  'Sign Up',
                                  style: AppTextStyles.authButtonTextStyle,
                                )),
                            SizedBox(
                              height: 4.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account?",
                                  style: AppTextStyles.small8,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text('Sign In',
                                      style: AppTextStyles
                                          .simpleFieldTextStyleyeloow),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ))),
    );
  }
}
