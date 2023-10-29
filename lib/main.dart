import 'package:flutter/material.dart';

void main() {
  runApp(Basketball_Points());
}

class Basketball_Points extends StatefulWidget {
  @override
  State<Basketball_Points> createState() => _Basketball_PointsState();
}

class _Basketball_PointsState extends State<Basketball_Points> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points Counter'),
          backgroundColor: const Color.fromARGB(255, 168, 71, 186),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  const Text(
                    "Team A",
                    style: TextStyle(
                      fontSize: 42,
                    ),
                  ),
                  Text(
                    '$teamAPoints',
                    style: const TextStyle(
                      fontSize: 200,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          minimumSize: const Size(150, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 168, 71, 186)),
                      child: const Text(
                        'Add 1 point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          minimumSize: const Size(150, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 168, 71, 186)),
                      child: const Text(
                        'Add 2 point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          minimumSize: const Size(150, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 168, 71, 186)),
                      child: const Text(
                        'Add 3 point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )),
                ]),
                const SizedBox(
                  height: 420,
                  child: VerticalDivider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ),
                ),
                Column(children: [
                  const Text(
                    "Team B",
                    style: TextStyle(
                      fontSize: 42,
                    ),
                  ),
                  Text(
                    "$teamBPoints",
                    style: const TextStyle(
                      fontSize: 200,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          minimumSize: const Size(150, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 168, 71, 186)),
                      child: const Text(
                        'Add 1 point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          minimumSize: const Size(150, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 168, 71, 186)),
                      child: const Text(
                        'Add 2 point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(8),
                          minimumSize: const Size(150, 50),
                          backgroundColor:
                              const Color.fromARGB(255, 168, 71, 186)),
                      child: const Text(
                        'Add 3 point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )),
                ]),
              ],
            ),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamAPoints = teamBPoints = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(8),
                    minimumSize: const Size(150, 50),
                    backgroundColor: const Color.fromARGB(255, 168, 71, 186)),
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
