import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rest_api_project/presentation/ui/screens/auth/verify_otp_screen.dart';
import 'package:rest_api_project/presentation/ui/widgets/app_logo.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(
                height: 170,
              ),
              const AppLogo(
                height: 80,
              ),
              const SizedBox(
                height: 24.0,
              ),
              Text(
                'Welcome back',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Please enter your email address',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(const VerifyOTPScreen());
                      },
                      child: const Text('Next'))),
            ],
          ),
        ),
      ),
    );
  }
}
