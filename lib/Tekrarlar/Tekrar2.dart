import 'package:flutter/material.dart';

class ScaffoldLearn1 extends StatelessWidget {
  const ScaffoldLearn1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BAŞLIK'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.accessibility_new),
        ),
        leadingWidth: 50,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.account_balance_rounded))
        ],
        backgroundColor: Colors.transparent ,
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
            onPressed: () => {},
            child: Text(
              'textbuton',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
          ),
          ElevatedButton(onPressed: () => {}, child: Text('ElvatedButton')),
          IconButton(
              onPressed: () => {},
              icon: Icon(
                Icons.access_alarm_sharp,
                color: Colors.white,
              )),
          Container(
              child: Text('${MediaQuery.of(context).size.width}',
                  style: TextStyle(
                      fontSize: 56,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(4, 5),
                          blurRadius: 5,
                          color: Colors.lightBlue,
                        )
                      ])),
              transform: Matrix4.rotationX(70 * 3.14 / 180)),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit_sharp),
          label: 'a',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.access_alarms), label: 'v')
      ]),
      backgroundColor: Colors.amber,
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
                showModalBottomSheet(
                    context: context, builder: (context) => Container())
              }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(),
    );
  }
}
