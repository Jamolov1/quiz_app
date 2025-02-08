import 'package:flutter/material.dart';
import 'package:quiz_app/pages/quiz_page.dart';

import '../model/test_model.dart';
import '../repasitory/java_quiz_repository.dart';
class ItemCategoryQuiz extends StatelessWidget {
  String image;
  String name;
  VoidCallback onTap;

  ItemCategoryQuiz({super.key,required this.image,required this.name,required this.onTap});
  @override
  Widget build(BuildContext context) {
    List<TestModel> tests = JavaQuizRepository.setJava();
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (_){
          tests.shuffle();
          return QuizPage(name: name, quizs: tests,);
        }));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        padding: const EdgeInsets.all(12),
        height: 140,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 20.0,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Expanded(
                child: Center(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                )),
            Expanded(
                child: Center(
                  child: Text(
                   name,
                    style: const TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
