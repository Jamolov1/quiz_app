import 'package:flutter/material.dart';
import 'package:quiz_app/pages/login_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: [
              itemIntro(
                image: "assets/intro.png",
                title: "Select a Contest",
                subTitle:
                    "Unlock any event you find exciting and pay entry fee to enter the contest",
              ),
              itemIntro(
                image: "assets/intro1.png",
                title: "Play Quiz",
                subTitle:
                    "Once you enter, pick a topic and Play Quiz and increase your knowledge",
              ),
              itemIntro(
                image: "assets/intro3.png",
                title: "Score",
                subTitle:
                    "Your score will be presented to you at the end of the Quiz",
              ),
              itemIntro(
                image: "assets/intro2.png",
                title: "Leaderboard",
                subTitle: "Fastest to answer all Quiz questions Correctly Wins",
              ),
              itemIntro(
                image: "assets/intro4.png",
                title: "Cash-Out",
                subTitle:
                    "You Won! Time to Cash-out. You can cash out from My Wallet",
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: currentIndex == 4
                ? ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) {
                        return const LoginPage();
                      }));
                    },
                    child: const Text("Selected Next"),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: buildIndicator(),
                  ),
          ),
        ],
      ),
    );
  }

  Widget itemIntro({image, title, subTitle,}) {
    return Container(
      padding: const EdgeInsets.all(30),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [
            0.1,
            0.5,
            0.7,
            0.9
          ],
              colors: [
            Colors.deepPurple.shade800,
            Colors.deepPurple.shade500,
            Colors.deepPurple.shade400,
            Colors.deepPurple.shade300,
          ])),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
             height: MediaQuery.of(context).size.height*0.25,
              child: Image.asset(image),
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Text(
              subTitle,
              style: const TextStyle(color: Colors.grey, fontSize: 18),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  Widget indicator(isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: isActive ? 35 : 20,
      width: 5,
      margin: const EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
          color: isActive ? Colors.red : Colors.grey,
          borderRadius: BorderRadius.circular(8)),
    );
  }

  List<Widget> buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 5; i++) {
      if (currentIndex == i) {
        indicators.add(indicator(true));
      } else {
        indicators.add(indicator(false));
      }
    }
    return indicators;
  }
}
