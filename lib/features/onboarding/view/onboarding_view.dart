import 'package:flutter/material.dart';
import 'package:grandhotel/core/widgets/custom_button.dart';
import 'package:grandhotel/features/onboarding/view/widgets/dots_indicator.dart';
import 'package:grandhotel/features/onboarding/view/widgets/first_page_in_onboarding.dart';
import 'package:grandhotel/features/onboarding/view/widgets/second_page_in_onboarding.dart';
import 'package:grandhotel/features/onboarding/view/widgets/third_page_in_onboarding.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          children: [
            /// Pages
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                children: const [
                  FirstPageInOnboarding(),
                  SecondPageInOnboarding(),
                  ThirdPageInOnboarding(),
                ],
              ),
            ),

            MyDotsIndicatorWidget(currentIndex: currentIndex),

            const SizedBox(height: 40),

            _buildButtons(),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  /// ⬇⬇⬇ الأزرار حسب الصفحة ⬇⬇⬇
  Widget _buildButtons() {
    switch (currentIndex) {

      /// الصفحة الأولى
      case 0:
        return Column(
          children: [
            CustomButton(
              label: "Next",
              width: double.infinity,
              height: 56,
              onPressed: () {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
            const SizedBox(height: 16),
            CustomButton(
              label: "Skip",
              width: double.infinity,
              height: 56,
              onPressed: () {
                _pageController.jumpToPage(2);
              },
              gradient: LinearGradient(
                colors: [
                  Colors.grey.shade300,
                  Colors.grey.shade200,
                ],
              ),
              textColor: Colors.grey,
            ),
          ],
        );

      /// الصفحة الثانية
      case 1:
        return Row(
          children: [
            Expanded(
              child: CustomButton(
                label: "Back",
                height: 56,
                onPressed: () {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                gradient: LinearGradient(
                  colors: [
                    Colors.grey.shade300,
                    Colors.grey.shade200,
                  ],
                ),
                textColor: Colors.grey, width: 100,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CustomButton(
                label: "Next",
                height: 56,
                onPressed: () {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }, width: 100,
              ),
            ),
          ],
        );

      /// الصفحة الثالثة
      case 2:
        return CustomButton(
          label: "Get Started",
          width: double.infinity,
          height: 56,
          onPressed: () {
            // Navigate to Home
          },
        );

      default:
        return const SizedBox.shrink();
    }
  }
}
