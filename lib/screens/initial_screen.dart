import 'package:flutter/material.dart';
import 'package:projeto_alura/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: 500),
        opacity: (opacidade ? 1 : 0),
        child: ListView(
          children: [
            const Task(
              'HTML',
              'assets/images/html5.png',
              1,
            ),
            const Task(
              'Javascript',
              'assets/images/js.png',
              2,
            ),
            const Task(
              'Flutter',
              'assets/images/flutter.png',
              2,
            ),
            const Task(
              'Java',
              'assets/images/java.png',
              5,
            ),
            const Task(
              ' React ',
              'assets/images/react.png',
              3,
            ),
            const Task(
              ' ASP.Net ',
              'assets/images/net.png',
              4,
            ),
            //melhorando visualização da última task
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
