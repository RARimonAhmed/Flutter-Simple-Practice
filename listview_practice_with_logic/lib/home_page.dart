import 'package:flutter/material.dart';
import 'package:listview_practice_with_logic/new_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    'December',
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
    'December',
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
    'December',
  ];
  List nameOfDays = [
    // 'Saturday',
    // 'Sunday',
    // 'Monday',
    // 'Tuesday',
    // 'Wednesday',
    // 'Thirsday',
    // 'Friday'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Select Item"),
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
                    return InkWell(
                      onTap: () {
                        setState(() {
                          if (nameOfDays
                              .contains(nameOfMonth[index].toString())) {
                            nameOfDays.remove(nameOfMonth[index].toString());
                          } else {
                            nameOfDays.add(nameOfMonth[index].toString());
                          }
                        });
                        print('My Value : ');
                        print(nameOfDays.toString());
                      },
                      child: Card(
                        child: ListTile(
                          title: Text(
                            nameOfMonth[index].toString(),
                          ),
                          trailing: Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: nameOfDays
                                      .contains(nameOfMonth[index].toString())
                                  ? Colors.red
                                  : Colors.green,
                            ),
                            child: Center(
                              child: Text(nameOfDays
                                      .contains(nameOfMonth[index].toString())
                                  ? 'Remove'
                                  : 'Add'),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              FloatingActionButton(
                // ignore: sort_child_properties_last
                child: const Center(
                  child: Icon(
                    Icons.arrow_forward_sharp,
                  ),
                ),
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => DetailsPage(
                            getList: [nameOfDays],
                          )),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
