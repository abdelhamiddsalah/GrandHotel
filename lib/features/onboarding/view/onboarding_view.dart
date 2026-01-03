import 'package:flutter/material.dart';
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
      body: Column(
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
              children: [
                /// Page 1
                FirstPageInOnboarding(),
                /// Page 2
               SecondPageInOnboarding(),
                /// Page 3
                ThirdPageInOnboarding(),
              ],
            ),
          ),

       MyDotsIndicatorWidget(
            currentIndex: currentIndex,
          ),

          const SizedBox(height: 30),

          /// Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Skip
                TextButton(
                  onPressed: () {
                    _pageController.jumpToPage(2);
                  },
                  child: const Text("Skip"),
                ),

                /// Next / Done
                ElevatedButton(
                  onPressed: () {
                    if (currentIndex < 2) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      // Done Action
                      print("Onboarding Finished");
                    }
                  },
                  child: Text(currentIndex == 2 ? "Done" : "Next"),
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
