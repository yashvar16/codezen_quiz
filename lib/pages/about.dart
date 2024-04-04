import 'package:flutter/material.dart';
import 'package:codezen/pages/home.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFa4a4a4),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2),
                padding:
                    const EdgeInsets.only(top: 45.0, left: 20.0, right: 20.0),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color.fromARGB(255, 53, 51, 51), Colors.black],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.vertical(
                        top: Radius.elliptical(
                            MediaQuery.of(context).size.width, 110.0))),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 60.0),
                child: Form(
                    child: Column(children: [
                  const Text(
                    "About ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => const Home()));
                    },
                    child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60)),
                        child: const Center(
                            child: Icon(Icons.arrow_back_ios,
                                color: Color(0xFF004840)))),
                  ),
                  const SizedBox(height: 30.0),
                  Material(
                      elevation: 30.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                          height: MediaQuery.of(context).size.height / 1.5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(children: [
                            const SizedBox(height: 30.0),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 28.0,
                                right: 28.0,
                              ),
                              child: const Text(
                                "Codezen coding society is incorporateed under MCA department of JSSATE Noida and is concerned with creating and promoting a computing culture in the department. The society aims at providing student exposure to several technologies in demand in the present tech scene and making way for innovative ideas. The society regularly organizes interactive competitions, quizzes, workshops, and bootcamps to achieve its aspirations.\n\nCodezen quiz application facilitates quizzes and MCQ tests organized by Codezen and can be used by students registering for tests based on wide variety of computer science topics such as programming languages , algorihtms, networking and database management along with the others. ",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ])))
                ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
