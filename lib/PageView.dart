import 'package:flutter/material.dart';

    class PageViewApp extends StatefulWidget {
      const PageViewApp({super.key});

      @override
      State<PageViewApp> createState() => _PageViewAppState();
    }

    class _PageViewAppState extends State<PageViewApp> {
      static const String _title='PageView App';

      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: _title,
          home: Scaffold(
            appBar: AppBar(
              title: Center(
                  child: Text(
                      "Page View Widget"
                  ),
              ),
            ),
            body: PageView(
              scrollDirection:Axis.horizontal ,
              children: [
                Container(
                  color: Colors.greenAccent,

                ),
                Container(
                  color: Colors.blueAccent,

                ),
                Container(
                  color: Colors.black87,

                ),
              ],
            ),

          ),
        );
      }
    }
