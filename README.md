# How to programmatically navigate to the adjacent dates in the Flutter Calendar?

This example demonstrates how to programmatically navigate to the adjacent dates in the Flutter Calendar.

In the Flutter Event Calendar, you can programmatically navigate to the adjacent dates by using the [forward](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/CalendarController/forward.html) and [backward](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/CalendarController/backward.html) method of CalendarController.

```
final CalendarController _controller = CalendarController(); 

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

```

You can also refer our UG documentation to know more about [DateNavigation](https://help.syncfusion.com/flutter/calendar/date-navigations) in the Flutter Calendar.

## Requirements to run the demo
* [VS Code](https://code.visualstudio.com/download)
* [Flutter SDK v1.22+](https://flutter.dev/docs/development/tools/sdk/overview)
* [For more development tools](https://flutter.dev/docs/development/tools/devtools/overview)

## How to run this application
To run this application, you need to first clone or download the ‘create a flutter maps widget in 10 minutes’ repository and open it in your preferred IDE. Then, build and run your project to view the output.

## Further help
For more help, check the [Syncfusion Flutter documentation](https://help.syncfusion.com/flutter/introduction/overview),
 [Flutter documentation](https://flutter.dev/docs/get-started/install).