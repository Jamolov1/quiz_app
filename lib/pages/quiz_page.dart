import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/model/test_model.dart';
import 'package:quiz_app/pages/result_page.dart';
import 'package:quiz_app/widgets/item_variant_quiz.dart';

class QuizPage extends StatefulWidget {
  List<TestModel> quizs;
  String name;

  QuizPage({super.key, required this.name, required this.quizs});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionCount = 0;
  int expendedValue = 1;
  final CountDownController _controller = CountDownController();
  int trueQuestionCount = 0;
  String isSelected = "";
  List<String> choseAnswers = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade800,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Text(
          widget.name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
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
              Colors.deepPurple.shade600,
              Colors.deepPurple.shade500,
              Colors.deepPurple.shade400,
            ])),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(width: 1.5, color: Colors.grey.shade600),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: expendedValue,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                  Expanded(
                                    flex: widget.quizs.length - expendedValue,
                                    child: Container(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "$expendedValue/${widget.quizs.length}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: CircularCountDownTimer(
                        textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),

                        controller: _controller,
                        width: 50,
                        height: 50,
                        duration: 10,
                        fillColor: Colors.deepPurple.shade400,
                        ringColor: Colors.orange,
                        isReverse: true,
                        onComplete: () {
                          if (currentQuestionCount + 1 < widget.quizs.length) {
                            setState(() {
                              expendedValue++;
                              currentQuestionCount++;
                              isSelected = "";
                              choseAnswers.add("Xato");
                            });
                            _controller.restart();
                          } else {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return ResultPage(
                                truefalseAnswers: choseAnswers,
                                truAnswers: trueQuestionCount,
                                savollar: widget.quizs,
                              );
                            }));
                          }
                        },
                      )),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height*0.2,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2,color: Colors.grey.shade600)
              ),
              child: Column(
                children: [
                  Text(
                    "Question:${currentQuestionCount + 1}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.quizs[currentQuestionCount].quiz,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ItemVariantQuiz(
              testVariant: widget.quizs[currentQuestionCount].a,
              isSelected: isSelected == "A",
              ontTap: () {
                setState(() {
                  isSelected = "A";
                });
              },
            ),
            ItemVariantQuiz(
              testVariant: widget.quizs[currentQuestionCount].b,
              isSelected: isSelected == "B",
              ontTap: () {
                setState(() {
                  isSelected = "B";
                });
              },
            ),
            ItemVariantQuiz(
              testVariant: widget.quizs[currentQuestionCount].c,
              isSelected: isSelected == "C",
              ontTap: () {
                setState(() {
                  isSelected = "C";
                });
              },
            ),
            ItemVariantQuiz(
              testVariant: widget.quizs[currentQuestionCount].d,
              isSelected: isSelected == "D",
              ontTap: () {
                setState(() {
                  isSelected = "D";
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (isSelected != "") {
                    _controller.restart();
                    if (currentQuestionCount + 1 < widget.quizs.length) {
                      if (isSelected ==
                          widget.quizs[currentQuestionCount].trueAnswer) {
                        choseAnswers.add("Tug'ri");
                        trueQuestionCount++;
                      } else {
                        choseAnswers.add("Xato");
                      }
                      expendedValue++;
                      currentQuestionCount++;
                      isSelected = "";
                    } else if (currentQuestionCount ==
                        widget.quizs.length - 1) {
                      if (isSelected ==
                          widget.quizs[currentQuestionCount].trueAnswer) {
                        choseAnswers.add("Tug'ri");
                        trueQuestionCount++;
                      } else {
                        choseAnswers.add("Xato");
                      }
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return ResultPage(
                          truefalseAnswers: choseAnswers,
                          truAnswers: trueQuestionCount,
                          savollar: widget.quizs,
                        );
                      }));
                    }
                  }
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                height: 66,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: 6,color: Colors.deepPurple.shade300)
                ),
                child: const Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
