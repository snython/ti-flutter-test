import 'package:chrconnecthpdraft/feature/home/components/appointments/appointments.dart';
import 'package:chrconnecthpdraft/feature/home/components/inbox/inbox.dart';
import 'package:chrconnecthpdraft/feature/home/components/more_resources.dart';
import 'package:chrconnecthpdraft/feature/home/components/welcoming.dart';
import 'package:flutter/material.dart';

import 'components/reminders/reminders.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(
      {Key? key,
      required this.welcomeKey,
      required this.remindersKey,
      required this.joinButtonKey,
      required this.appointmentsViewAllKey,
      required this.appointmentsKey,
      required this.inboxKey,
      required this.moreResourcesKey})
      : super(key: key);

// define global keys for each section to be used in the tutorial
  final GlobalKey welcomeKey;
  final GlobalKey remindersKey;
  final GlobalKey joinButtonKey;
  final GlobalKey appointmentsViewAllKey;
  final GlobalKey appointmentsKey;
  final GlobalKey inboxKey;
  final GlobalKey moreResourcesKey;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('images/background.png'),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Welcoming(
                  key: welcomeKey,
                  state: WelcomingStates.evening,
                  name: "Linda",
                ),
              ),
              SizedBox(height: 32),
              Reminders(remindersKey: remindersKey),
              SizedBox(height: 32),
              Appointments(
                  appointmentsKey: appointmentsKey,
                  joinButtonKey: joinButtonKey,
                  appointmentsViewAllKey: appointmentsViewAllKey,
                  verticalLayout: true),
              SizedBox(height: 32),
              Inbox(inboxKey: inboxKey, verticalLayout: true),
              SizedBox(height: 32),
              MoreResources(moreResourcesKey: moreResourcesKey),
              SizedBox(height: 88),
            ],
          ),
        ),
      ],
    );
  }
}
