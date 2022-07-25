import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

// This view handles the behaviour when clocking on the event's date
class CalendarViewScreen extends StatelessWidget {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  CalendarViewScreen({Key? key, required this.id}) : super(key: key);

  final id;

  //id is used to handle datechange and display specific dates on calendar
  Event buildEvent({Recurrence? recurrence}) {
    return Event(
      title: 'Test eventeee',
      description: 'example',
      location: 'Flutter app',
      startDate: DateTime.now(),
      endDate: DateTime.now().add(
        Duration(minutes: 30),
      ),
      allDay: false,
      iosParams: const IOSParams(
        reminder: Duration(minutes: 40),
      ),
      androidParams: const AndroidParams(
        emailInvites: ["test@example.com"],
      ),
      recurrence: recurrence,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (id == 0) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Today\'s calendar'),
        ),
        body: DayView(
          initialDay: DateTime(2022, 5, 11),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('2 days from now'),
        ),
        body: DayView(
          initialDay: DateTime(2022, 7, 11),
        ),
      );
    }
  }
}
