import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() => runApp(ProgrammaticAdjacentDate());

class ProgrammaticAdjacentDate extends StatefulWidget {
  @override
  AdjacentDateState createState() => AdjacentDateState();
}

class AdjacentDateState extends State<ProgrammaticAdjacentDate> {
  final CalendarController? _controller = CalendarController();

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
                  child: RaisedButton.icon(
                    icon: Icon(Icons.arrow_back),
                    label: Text('Backward'),
                    onPressed: () {
                      _controller!.backward!();
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(70, 20, 0, 20),
                  child: RaisedButton.icon(
                    label: Text('Forward'),
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      _controller!.forward!();
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
