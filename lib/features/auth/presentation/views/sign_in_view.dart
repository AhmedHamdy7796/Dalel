import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login'),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              customNavigate(context, '/signUp');
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 152),
            ),
            SliverToBoxAdapter(
              child: CustomTextFormFeild(
                labelText: 'Email',
                onChanged: (email) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
