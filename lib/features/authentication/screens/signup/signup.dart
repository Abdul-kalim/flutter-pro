import 'package:demo/common/widgets/login_signup/form_divider.dart';
import 'package:demo/common/widgets/login_signup/social_buttons.dart';
import 'package:demo/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:demo/utils/constants/colors.dart';
import 'package:demo/utils/constants/sizes.dart';
import 'package:demo/utils/constants/text_strings.dart';
import 'package:demo/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///   Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              // form
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

            //   divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

            //   social button
              const TSocialButtons(),
              const SizedBox(height: TSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}


