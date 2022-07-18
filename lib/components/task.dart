import 'package:flutter/material.dart';
import 'package:projeto_alura/components/difficulty.dart';

class Task extends StatefulWidget {
  //criando atributo nome para cada task
  final String nome;
  final String foto;
  final int dificuldade;

  const Task(this.nome, this.foto, this.dificuldade, {Key? key})
      : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.blue,
          ),
          height: 140,
        ),
        Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 70,
                    height: 60,
                    child: Image.asset(
                      widget.foto,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        child: Text(
                          widget.nome,
                          style: const TextStyle(
                            fontSize: 24,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      Container(
                        child: Difficulty(
                          dificultyLevel: widget.dificuldade,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 52,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          nivel++;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.arrow_drop_up,
                          ),
                          const Text(
                            "UP",
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    child: LinearProgressIndicator(
                      color: Colors.white,
                      value: (nivel / widget.dificuldade / 10),
                    ),
                    width: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'Nível: $nivel',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
