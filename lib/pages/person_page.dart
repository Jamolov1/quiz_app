import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:quiz_app/pages/home_page.dart';

class PersonPage extends StatefulWidget {

  PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {

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
              Colors.deepPurple.shade600,
              Colors.deepPurple.shade500,
              Colors.deepPurple.shade400,
            ])),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40),
              height: MediaQuery.of(context).size.height * 0.25,
              child: Image.asset(
                "assets/persons.png",
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "YOUR TEAM\n IS READY...",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.04,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    child: Row(
                      children: [
                        Expanded(child: item(name: "TOM",image: "assets/person2.png")),
                        Expanded(child: item(name: "EMMILY",image: "assets/person3.png")),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: item(name: "NICK",image: "assets/person4.png"),
                        ),
                        Expanded(
                          child: item(name: "LUNA",image: "assets/person5.png"),
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                  return HomePage();
                }));
              },
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border: Border.all(width: 5,color: Colors.grey.shade700)
                ),
                child: Center(child: Icon(Icons.play_arrow_rounded,color: Colors.white,size: 36,),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget item({name, image}) {
    return InkWell(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.grey.shade700),
                    image: DecorationImage(
                      image: AssetImage(image),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
