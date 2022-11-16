import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(const ProgrammaticAdjacentDate());

class ProgrammaticAdjacentDate extends StatefulWidget {
  const ProgrammaticAdjacentDate({super.key});

  @override
  AdjacentDateState createState() => AdjacentDateState();
}

class AdjacentDateState extends State<ProgrammaticAdjacentDate> {
  final CalendarController _controller = CalendarController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                      child: TextButton.icon(
                        icon: const Icon(Icons.arrow_back),
                        label: const Text('Backward'),
                        onPressed: () {
                          _controller.backward!();
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(70, 20, 0, 20),
                      child: TextButton.icon(
                        label: const Text('Forward'),
                        icon: const Icon(Icons.arrow_forward),
                        onPressed: () {
                          _controller.forward!();
                        },
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: SfCalendar(
                    controller: _controller,
                  ),
                ),
              ],
            ),
          )

        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}