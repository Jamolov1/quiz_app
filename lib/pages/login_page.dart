import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home_page.dart';
import 'package:quiz_app/pages/person_page.dart';
import 'package:quiz_app/service/shared_prefece.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _nameController = TextEditingController();

  void saveInfo() {
    String name = _nameController.text.trim().toString();
    if (name.isEmpty) {
      return;
    }
    SharedPrefece.storeName(name);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
      return PersonPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                height: 220,
                child: Image.asset(
                  "assets/crown.png",
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "UQUIZ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 26),
                child: Text(
                  "We provide make more experience for playing game.Just be happy!",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 66,
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    border: Border.all(width: 2, color: Colors.grey.shade600),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                  child: TextField(
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                    controller: _nameController,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Your Name",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  saveInfo();
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  height: 66,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(40)),
                  child: const Center(
                    child: Text(
                      "Create Your Team",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
