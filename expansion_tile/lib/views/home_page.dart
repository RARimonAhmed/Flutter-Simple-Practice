import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List nameOfMonth = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    List nameOfDays = [
      'Saturday',
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thirsday',
      'Friday'
    ];
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Expanded Tile"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                    itemCount: nameOfMonth.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        child: ExpansionTile(
                          title: Text(nameOfMonth[index].toString()),
                          children: [
                            Container(
                              height: 150,
                              child: ListView.builder(
                                  itemCount: nameOfDays.length,
                                  itemBuilder: ((context, index) {
                                    return ListTile(
                                      title: Center(
                                        child: Text(
                                          nameOfDays[index].toString(),
                                        ),
                                      ),
                                    );
                                  })),
                            )
                          ],
                        ),
                      );
                    }))),
          ],
        ),
      ),
    ));
  }
}
