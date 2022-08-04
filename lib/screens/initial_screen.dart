import 'package:flutter/material.dart';
import 'package:projeto_alura/components/task.dart';
import 'package:projeto_alura/screens/form/form.dart';

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
            Task(
              'HTML',
              'assets/images/html5.png',
              1,
            ),
            Task(
              'Javascript',
              'assets/images/js.png',
              2,
            ),
            Task(
              'Flutter',
              'assets/images/flutter.png',
              2,
            ),
            Task(
              'Java',
              'assets/images/java.png',
              5,
            ),
            Task(
              ' React ',
              'assets/images/react.png',
              3,
            ),
            Task(
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
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => FormScreen(
                taskContext: context,
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       opacidade = !opacidade;
      //     });
      //   },
      //   child: const Icon(Icons.remove_red_eye),
      // ),
    );
  }
}
