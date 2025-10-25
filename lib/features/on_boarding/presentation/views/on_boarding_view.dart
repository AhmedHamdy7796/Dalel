import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/features/on_boarding/presentation/views/functions/on_boarding.dart';
import 'package:dalel/features/on_boarding/presentation/views/widgets/custom_navbar.dart';
import 'package:dalel/features/on_boarding/presentation/views/widgets/get_buttons.dart';
import 'package:dalel/features/on_boarding/presentation/views/widgets/on_borading_widget_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() =>
      _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              SizedBox(height: 40),
              CustomNavBar(
                onTap: () {
                  onBoardingVsisited();
                  customRepalcementNavigate(
                    context,
                    '/signUp',
                  );
                },
              ),
              OnBoradingWidgetBody(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              SizedBox(height: 88),
              GetButtons(
                currentindex: currentIndex,
                controller: _controller,
              ),
              SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}
