import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool enable = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    Future.delayed(Duration(seconds: 3));
    setState(() {
      enable = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Chat App'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: ((context, index) {
                  if (enable) {
                    return Shimmer.fromColors(
                      enabled: true,
                      baseColor: Colors.grey.shade700,
                      highlightColor: Colors.grey.shade300,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        title: Container(
                          color: Colors.white,
                          height: 20,
                          width: 50,
                        ),
                        subtitle: Container(
                          color: Colors.white,
                          height: 20,
                          width: 50,
                        ),
                      ),
                    );
                  } else {
                    return Shimmer.fromColors(
                      baseColor: Colors.red,
                      highlightColor: Colors.green,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        title: Text('Hussain'),
                        subtitle: Text('read this docs...'),
                      ),
                    );
                  }
                })),
          )
        ],
      ),
    ));
  }
}
