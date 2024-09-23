import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/common/widgets/bottom/basic_app_bottom.dart';
import 'package:spotify/presentation/auth/pages/sign_in.dart';

import '../../../core/configs/assets/app_vectors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _siginText(context),
      appBar: BasicAppbar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
          width: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 30
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            const SizedBox(
              height: 50,
            ),
            _fullNameField(context),
            const SizedBox(
              height: 30,
            ),
            _emailField(context),
            const SizedBox(
              height: 30,
            ),
            _passwordField(context),
            const SizedBox(
              height: 30,
            ),
            BasicAppBottom(
                onPressed: (){},
                title: 'Create Account'
            )
          ],
        ),
      ),
    );
  }

  Widget _registerText(){
    return const Text(
        'Register',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25
    ),
      textAlign: TextAlign.center,
    );
  }

  Widget _fullNameField(BuildContext context){
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Full Name'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _emailField(BuildContext context){
    return TextField(
      decoration: const InputDecoration(
          hintText: 'Enter Email'
      ).applyDefaults(
          Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _passwordField(BuildContext context){
    return TextField(
      decoration: const InputDecoration(
          hintText: 'Password'
      ).applyDefaults(
          Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _siginText(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Do you have an account ?',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14
          ),
        ),
        TextButton(
            onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const SigninPage()
              ),
            );
           },
            child: const Text(
                'Sign In',
            )
        )
      ],
        ),
    );
  }

}
