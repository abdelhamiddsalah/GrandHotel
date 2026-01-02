import 'package:flutter/material.dart';
import 'package:grandhotel/features/onboarding/view/widgets/dots_indicator.dart';

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
                Container(
                  color: Colors.redAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.hotel, size: 100, color: Colors.white),
                      SizedBox(height: 20),
                      Text(
                        "Welcome",
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Discover amazing hotels near you",
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                /// Page 2
                Container(
                  color: Colors.greenAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.shopping_cart, size: 100, color: Colors.white),
                      SizedBox(height: 20),
                      Text(
                        "Easy Booking",
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Book rooms with a few taps",
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),

                /// Page 3
                Container(
                  color: Colors.blueAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.delivery_dining, size: 100, color: Colors.white),
                      SizedBox(height: 20),
                      Text(
                        "Fast Service",
                        style: TextStyle(fontSize: 32, color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Enjoy seamless hotel services",
                        style: TextStyle(fontSize: 18, color: Colors.white70),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
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
