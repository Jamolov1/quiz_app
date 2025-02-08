import 'package:flutter/material.dart';
import 'package:quiz_app/model/test_model.dart';
import 'package:quiz_app/repasitory/c++_quiz_repository.dart';
import 'package:quiz_app/repasitory/java_quiz_repository.dart';
import 'package:quiz_app/repasitory/python_quiz_repository.dart';
import 'package:quiz_app/widgets/item_category_quiz.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TestModel> tests1 = JavaQuizRepository.setJava();
  List<TestModel> tests2 = PythonQuizRepository.setPyhon();
  List<TestModel> tests3 = CplusplusQuizRepository.setCplusplus();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
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
                      child: Image.asset(
                        height: 240,
                        width: 240,
                        "assets/quiz.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 300,
              ),
              Expanded(
                  child: ListView(
                children: [
                  ItemCategoryQuiz(
                    image: "assets/java.png",
                    name: "Java", onTap: tests1.length.toString,
                  ),
                  ItemCategoryQuiz(
                    image: "assets/python.png",
                    name: "Python", onTap: tests2.length.toString,
                  ),
                  ItemCategoryQuiz(
                    image: "assets/c++.png",
                    name: "C++", onTap: tests3.length.toString,
                  ),
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
