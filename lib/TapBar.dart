import 'package:flutter/material.dart';
class TapBar extends StatefulWidget {
  const TapBar({super.key});

  @override
  State<TapBar> createState() => _TapBarState();
}

class _TapBarState extends State<TapBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:DefaultTabController(
        length:3,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "Tab Bar"
              ),
            ),
          ),
          body: Column(
            children: [
              Container(color: Colors.white,
                child: TabBar(
                  indicatorColor: Colors.blueGrey,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.blue,
                    unselectedLabelColor: Colors.blueAccent,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.home),

                    ),
                    Tab(
                      icon: Icon(Icons.menu),

                    ),
                    Tab(
                      icon: Icon(Icons.search),

                    ),

                  ],
                ),

              ),
              Expanded(child: TabBarView(
                children: [
                  Container(
                    child: Text("Home",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    )
                    ),
                  ),
                  Container(
                    child: Text("Menu",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  ),
                  Container(
                    child: Text("Search",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        )
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          child: Text("Search",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                        ),
                        Container(
                          height:400 ,
                          width: 200,
                          color: Colors.red,
                        ),
                        Container(
                          height:400 ,
                          width: 200,
                          color: Colors.yellow,
                        ),
                        Container(
                          height:400 ,
                          width: 200,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                ],


              )
              )
            ],
          ),
        ),
      ),
    );
  }
}
