import 'package:flutter/material.dart';
import 'dream.dart';

void main() => runApp(MaterialApp(
      // ignore: prefer_const_constructors
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    ));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        elevation: 0.5,
        toolbarHeight: 100.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.deepPurple[800],
        title: Column(
          children: [
            Text(
              "Dream Catcher",
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w600,
                shadows: const <Shadow>[
                  Shadow(
                    offset: Offset(-1.0, 3.0),
                    blurRadius: 4.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  Shadow(
                    offset: Offset(3.0, -1.0),
                    blurRadius: 2.0,
                    color: Color.fromARGB(125, 0, 0, 255),
                  ),
                ],
                //decoration: TextDecoration.underline,
                fontFamily: 'Lobster',
                wordSpacing: 8.0,
                letterSpacing: 2.0,
                color: Colors.deepPurple[400],
              ),
            ),
            const Text(
              "Captivate your dreams",
              style: TextStyle(
                fontSize: 20.0,
                color: Color.fromARGB(255, 29, 20, 66),

                //fontFamily: 'Lobster',
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime(2022, 1, 1),
            lastDate: DateTime.now().add(const Duration(days: 1825)),
            onDateChanged: (DateTime value) {},
          ),
          Row(
            // stats & info buttons
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: const Text('Achievements\n& Statistics'),
                    icon: const Icon(Icons.auto_graph),
                    style:
                        ElevatedButton.styleFrom(fixedSize: const Size(1, 80)),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(5.0),
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    label: const Text('Dream Theory'),
                    icon: const Icon(Icons.info_outline),
                    style:
                        ElevatedButton.styleFrom(fixedSize: const Size(1, 80)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings_outlined),
          color: Colors.deepPurple,
          iconSize: 45.0,
          alignment: Alignment.bottomRight,
        ),
      ),
    );
  }
}

class DreamList extends StatefulWidget {
  const DreamList({Key? key}) : super(key: key);

  @override
  State<DreamList> createState() => _DreamListState();
}

class _DreamListState extends State<DreamList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
