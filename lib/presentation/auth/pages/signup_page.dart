import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/common/helper/navigation/app_navigtion.dart';
import 'package:movie_app/common/helper/message/display_message.dart';
import 'package:movie_app/core/configs/assets/app_string.dart';
import 'package:movie_app/core/configs/theme/app_color.dart';
import 'package:movie_app/data/auth/models/signup_req_params.dart';
import 'package:movie_app/domain/auth/usecases/signup.dart';
import 'package:movie_app/presentation/auth/pages/signin_page.dart';
import 'package:movie_app/presentation/home/pages/home_page.dart';
import 'package:movie_app/service_locator.dart';
import 'package:reactive_button/reactive_button.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: const EdgeInsets.only(top: 100, right: 16, left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                AppString.signUp,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(hintText: AppString.hintTextEmail),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _passController,
                decoration:
                    InputDecoration(hintText: AppString.hintTextPassword),
              ),
              const SizedBox(height: 60),
              ReactiveButton(
                  title: AppString.signUp,
                  activeColor: AppColor.primary,
                  onPressed: () async {
                     await sl<SignupUseCase>().call(
                        params: SignupReqParams(
                            email: _emailController.text,
                            password: _passController.text));
                  },
                  onSuccess: () {
                    AppNavigtion.pushAndRemove(context, HomePage());
                  },
                  onFailure: (error) {
                    DisplayMessage.errorMessage(error, context);
                  }),
              const SizedBox(height: 10),
              Text.rich(TextSpan(children: [
                const TextSpan(text: AppString.haveAcc),
                TextSpan(
                    text: AppString.signIn,
                    style: const TextStyle(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        AppNavigtion.push(context, SigninPage());
                      })
              ]))
            ],
          )),
    );
  }
}
