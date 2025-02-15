import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/model/test_model.dart';
import 'package:quiz_app/pages/home_page.dart';

class ResultPage extends StatefulWidget {
  List<String> truefalseAnswers;
  int truAnswers;
  List<TestModel> savollar;

  ResultPage({
    super.key,
    required this.truefalseAnswers,
    required this.truAnswers,
    required this.savollar,
  });

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String? lottie;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.truAnswers / widget.savollar.length * 100 > 80) {
      lottie = "assets/lottie/good.json";
    } else if (widget.truAnswers / widget.savollar.length > 60 &&
        widget.truAnswers / widget.savollar.length < 80) {
      lottie = "assets/lottie/congr.json";
    } else {
      lottie = "assets/lottie/bad.json";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade800,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                return HomePage();
              }));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
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
        child: Column(
          children: [
            Container(
              height: 250,
              child: Lottie.asset(lottie!),
            ),
            Center(
              child: Text(
                "${widget.truAnswers}/${widget.savollar.length}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(15),
                      border:
                          Border.all(width: 2, color: Colors.grey.shade600)),
                  child: ListTile(
                    title: Text(
                      "${index + 1}. ${widget.savollar[index].quiz}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      widget.truefalseAnswers[index] == "Tug'ri"
                          ? Icons.check_circle_outline
                          : Icons.clear,
                      color: widget.truefalseAnswers[index] == "Tug'ri"
                          ? Colors.green
                          : Colors.red,
                    ),
                    subtitle: Text(
                      "${index + 1}.Savoldagi tug'ri javob: ${widget.savollar[index].trueAnswer}",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                );
              },
              itemCount: widget.truefalseAnswers.length,
            ))
          ],
        ),
      ),
    );
  }
}
