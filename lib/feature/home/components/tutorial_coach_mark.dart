import 'package:chrconnecthpdraft/feature/main/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

List<TargetFocus> addHomeDashBoardTargetList(
    {required GlobalKey welcomeKey,
    required GlobalKey remindersKey,
    required GlobalKey joinButtonKey,
    required GlobalKey appointmentsViewAllKey,
    required GlobalKey appointmentsKey,
    required GlobalKey inboxKey,
    required GlobalKey moreResourcesKey,
    required GlobalKey homeBTNKey,
    required GlobalKey appointmentBTNKey,
    required GlobalKey inboxBTNKey,
    required GlobalKey billingBTNKey,
    required GlobalKey navbarkEY,
    required MainBloc mainBloc}) {
  List<TargetFocus> targets = [];
  late TutorialCoachMark tutorialCoachMark =
      TutorialCoachMark(targets: targets);
  late MainBloc _mainBloc = mainBloc;

// welcome section
  targets.add(
    TargetFocus(
      keyTarget: welcomeKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      enableTargetTab: false,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "We will take you on a quick tour of the application.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (1 < 13) {
                        Scrollable.ensureVisible(
                            targets[1].keyTarget?.currentContext ?? context);
                      }
                      controller.next();
                    },
                    child: const Text('Let Start'),
                  ),
                ],
              ),
            );
          },
        )
      ],
    ),
  );

// Reminders section
  targets.add(
    TargetFocus(
      keyTarget: remindersKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      enableTargetTab: false,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "This is the first section. It shows your reminders. If there are any tasks requiring action from you," +
                        " you'll find them here",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (2 < 13) {
                        Scrollable.ensureVisible(
                            targets[2].keyTarget?.currentContext ?? context);
                      }
                      controller.next();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Make the row size as small as possible
                      children: [
                        Text('Next'), // Your text
                        Icon(Icons.arrow_forward), // Your arrow icon
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    ),
  );

// Appointment section
  targets.add(
    TargetFocus(
      keyTarget: appointmentsKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      enableTargetTab: false,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "This is the second section. It gives you easy access to your upcomming appointments",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("appointmentsKey");
                      if (3 < 13) {
                        Scrollable.ensureVisible(
                            targets[3].keyTarget?.currentContext ?? context);
                      }
                      controller.next();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Make the row size as small as possible
                      children: [
                        Text('Next'), // Your text
                        Icon(Icons.arrow_forward), // Your arrow icon
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    ),
  );

// appointment button
  targets.add(
    TargetFocus(
      keyTarget: joinButtonKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      enableOverlayTab: false,
      enableTargetTab: false,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "There are direct link to your events",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("joinButtonKey");
                      if (4 < 13) {
                        Scrollable.ensureVisible(
                            targets[4].keyTarget?.currentContext ?? context);
                      }
                      controller.next();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Make the row size as small as possible
                      children: [
                        Text('Next'), // Your text
                        Icon(Icons.arrow_forward), // Your arrow icon
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    ),
  );

// View all appointment button
  targets.add(
    TargetFocus(
      keyTarget: appointmentsViewAllKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      enableTargetTab: false,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "You can view all your scheduled appointment via this link",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (5 < 13) {
                        Scrollable.ensureVisible(
                            targets[5].keyTarget?.currentContext ?? context);
                      }
                      controller.next();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Make the row size as small as possible
                      children: [
                        Text('Next'), // Your text
                        Icon(Icons.arrow_forward), // Your arrow icon
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    ),
  );

// Inbox section
  targets.add(
    TargetFocus(
      keyTarget: inboxKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      enableOverlayTab: false,
      enableTargetTab: false,
      contents: [
        TargetContent(
          align: ContentAlign.bottom,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "This is the third section. It shows your recent messages and gives easy access to your message list",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("inboxKey");
                      if (6 < 13) {
                        Scrollable.ensureVisible(
                            targets[6].keyTarget?.currentContext ?? context);
                      }
                      controller.next();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Make the row size as small as possible
                      children: [
                        Text('Next'), // Your text
                        Icon(Icons.arrow_forward), // Your arrow icon
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    ),
  );

// more resources section
  targets.add(
    TargetFocus(
      keyTarget: moreResourcesKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      enableOverlayTab: false,
      enableTargetTab: false,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "This section shows you other resources",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (7 < 13) {
                        Scrollable.ensureVisible(
                            targets[7].keyTarget?.currentContext ?? context);
                      }
                      controller.next();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Make the row size as small as possible
                      children: [
                        Text('Next'), // Your text
                        Icon(Icons.arrow_forward), // Your arrow icon
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    ),
  );

  // navigation tabs section
  targets.add(
    TargetFocus(
      keyTarget: navbarkEY,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      enableOverlayTab: false,
      enableTargetTab: false,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "This section shows the navigation tabs which permit to navigate to different screen",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (8 < 13) {
                        Scrollable.ensureVisible(
                            targets[8].keyTarget?.currentContext ?? context);
                      }
                      controller.next();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Make the row size as small as possible
                      children: [
                        Text('Next'), // Your text
                        Icon(Icons.arrow_forward), // Your arrow icon
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    ),
  );

  // home page button section
  targets.add(
    TargetFocus(
      keyTarget: homeBTNKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      enableOverlayTab: false,
      enableTargetTab: false,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "This button permit to navigate to the home screen",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (9 < 13) {
                        Scrollable.ensureVisible(
                            targets[8].keyTarget?.currentContext ?? context);
                      }
                      _mainBloc.add(MainEvent.changePage(index: 1));
                      controller.next();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Make the row size as small as possible
                      children: [
                        Text('Next'), // Your text
                        Icon(Icons.arrow_forward), // Your arrow icon
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    ),
  );

// appointment page button section
  targets.add(
    TargetFocus(
      keyTarget: appointmentBTNKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      enableOverlayTab: false,
      enableTargetTab: false,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "This button permit to navigate to the appointment screen",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (10 < 13) {
                        Scrollable.ensureVisible(
                            targets[8].keyTarget?.currentContext ?? context);
                      }
                      _mainBloc.add(MainEvent.changePage(index: 2));
                      controller.next();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Make the row size as small as possible
                      children: [
                        Text('Next'), // Your text
                        Icon(Icons.arrow_forward), // Your arrow icon
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    ),
  );

// appointment page button section
  targets.add(
    TargetFocus(
      keyTarget: inboxBTNKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      enableOverlayTab: false,
      enableTargetTab: false,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "This button permit to navigate to the inbox screen",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (11 < 13) {
                        Scrollable.ensureVisible(
                            targets[8].keyTarget?.currentContext ?? context);
                      }
                      _mainBloc.add(MainEvent.changePage(index: 3));
                      controller.next();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Make the row size as small as possible
                      children: [
                        Text('Next'), // Your text
                        Icon(Icons.arrow_forward), // Your arrow icon
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    ),
  );

// appointment page button section
  targets.add(
    TargetFocus(
      keyTarget: billingBTNKey,
      alignSkip: Alignment.topRight,
      radius: 10,
      shape: ShapeLightFocus.RRect,
      enableOverlayTab: false,
      enableTargetTab: false,
      contents: [
        TargetContent(
          align: ContentAlign.top,
          builder: (context, controller) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "This button permit to navigate to the billing screen",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (12 < 13) {
                        Scrollable.ensureVisible(
                            targets[8].keyTarget?.currentContext ?? context);
                      }
                      controller.next();
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Make the row size as small as possible
                      children: [
                        Text('Thank you and Good bye.'), // Your text
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    ),
  );
  // return targets
  return targets;
}
