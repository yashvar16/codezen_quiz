import 'package:codezen/service/database.dart';
import 'package:flutter/material.dart';

class AddQuiz extends StatefulWidget {
  const AddQuiz({super.key});

  @override
  State<AddQuiz> createState() => _AddQuizState();
}

class _AddQuizState extends State<AddQuiz> {
  upLoadItem() async {
    if (questioncontroller != "" &&
        option1controller.text != "" &&
        option2controller.text != "" &&
        option3controller.text != "" &&
        option4controller.text != "" &&
        answercontroller.text != "") {
      Map<String, dynamic> addQuiz = {
        "question": questioncontroller.text,
        "option1": option1controller.text,
        "option2": option2controller.text,
        "option3": option3controller.text,
        "option4": option4controller.text,
        "answer": answercontroller.text,
      };

      await DatabaseMethods().addQuizCategory(addQuiz, value!).then((value) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Color.fromARGB(7, 148, 127, 112),
            content: Text(
              "Quiz Submitted Successfully",
              style: TextStyle(fontSize: 18.0),
            )));
      });
    }
  }

  String? value;
  final List<String> topics = ['C', 'C++', 'Python', 'JAVA', 'DBMS', 'HTML'];
  TextEditingController questioncontroller = TextEditingController();
  TextEditingController option1controller = TextEditingController();
  TextEditingController option2controller = TextEditingController();
  TextEditingController option3controller = TextEditingController();
  TextEditingController option4controller = TextEditingController();
  TextEditingController answercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Quiz",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold)),
        ),
        body: SingleChildScrollView(
          child: Container(
              margin: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 20.0, bottom: 40.0),
              child: Column(children: [
                const Text(
                  "Question",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xFFececf8),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: questioncontroller,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Question",
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.8,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Option 1",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xFFececf8),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: option1controller,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Option 1",
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.8,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Option 2",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xFFececf8),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: option2controller,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Option 2",
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.8,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Option 3",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xFFececf8),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: option3controller,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Option 3",
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.8,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Option 4",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xFFececf8),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: option4controller,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Enter Option 4",
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.8,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Correct Answer",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xFFececf8),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    controller: answercontroller,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Correct Answer",
                        hintStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.8,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xFFececf8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            items: topics
                                .map((item) => DropdownMenuItem(
                                    value: item,
                                    child: Text(item,
                                        style: const TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.black))))
                                .toList(),
                            onChanged: ((value) => setState(() {
                                  this.value = value;
                                })),
                            dropdownColor: Colors.white,
                            hint: const Text("Select Topic"),
                            iconSize: 36,
                            icon: const Icon(Icons.arrow_drop_down,
                                color: Colors.black),
                            value: value))),
                const SizedBox(
                  height: 30.0,
                ),
                GestureDetector(
                  onTap: () {
                    upLoadItem();
                  },
                  child: Center(
                    child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 5.0),
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                "Add",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))),
                  ),
                )
              ])),
        ));
  }
}
