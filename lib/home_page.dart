import 'package:flutter/material.dart';
import 'package:quiz_app/joop_widget.dart';
import 'package:quiz_app/quiz_brain.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool suurooButtubu = false;
  List<Icon> icons = [];
  void userChoice(bool uzerdinjoobu) {
    final bizdinJoop = quizBrain.jooptuAlypkel();
    if (bizdinJoop == uzerdinjoobu) {
      icons.add(
        const Icon(
          Icons.check,
          color: Colors.green,
          size: 50,
        ),
      );
    } else if (bizdinJoop != uzerdinjoobu) {
      icons.add(
        const Icon(
          Icons.close,
          color: Colors.red,
          size: 50,
        ),
      );
    }

    quizBrain.otkoz();
    if (quizBrain.suroonuAlypkel() == 'Suroolor buttu!') {}
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.80),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Tapshyrma 7',
            style: TextStyle(fontSize: 23),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          suurooButtubu == true
              ? ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    quizBrain.suroonuAlypkel();
                    quizBrain.restart();
                    suurooButtubu = false;
                    icons = [];
                  },
                  child: const Text(
                    'Bashynan Bashta',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 32,
                    ),
                  ),
                )
              : Center(
                  child: Text(
                    quizBrain.suroonuAlypkel(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              JoopWidget(
                text: 'True',
                onTap: () {
                  userChoice(true);
                },
              ),
              const SizedBox(height: 20),
              JoopWidget(
                text: 'False',
                tus: Colors.red,
                onTap: () {
                  userChoice(false);
                },
              ),
            ],
          ),
          Row(
            children: icons,
          ),
        ],
      ),
    );
  }
}
