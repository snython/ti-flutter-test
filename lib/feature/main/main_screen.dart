import 'package:chrconnecthpdraft/feature/app/extension/context.dart';
import 'package:chrconnecthpdraft/feature/appointment/appointment_screen.dart';
import 'package:chrconnecthpdraft/feature/billing/billing_screen.dart';
import 'package:chrconnecthpdraft/feature/home/components/tutorial_coach_mark.dart';
import 'package:chrconnecthpdraft/feature/home/home_screen.dart';
import 'package:chrconnecthpdraft/feature/inbox/inbox_screen.dart';
import 'package:chrconnecthpdraft/feature/main/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '../home/home_screen_alternative.dart';

class MainScreen extends StatefulWidget {
  static String routeName = '/';

  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late MainBloc _mainBloc;

  // define global keys for each section to be used in the tutorial
  final welcomeKey = GlobalKey();
  final remindersKey = GlobalKey();
  final joinButtonKey = GlobalKey();
  final appointmentsViewAllKey = GlobalKey();
  final appointmentsKey = GlobalKey();
  final inboxKey = GlobalKey();
  final moreResourcesKey = GlobalKey();
  final homeBTNKey = GlobalKey();
  final appointmentBTNKey = GlobalKey();
  final inboxBTNKey = GlobalKey();
  final billingBTNKey = GlobalKey();
  final navbarkEY = GlobalKey();

  late TutorialCoachMark tutorialCoachMark;

  void _initOnboarding() {
    int counter = 0;
    List<TargetFocus> targetsList = addHomeDashBoardTargetList(
        welcomeKey: welcomeKey,
        remindersKey: remindersKey,
        joinButtonKey: joinButtonKey,
        appointmentsViewAllKey: appointmentsViewAllKey,
        appointmentsKey: appointmentsKey,
        inboxKey: inboxKey,
        moreResourcesKey: moreResourcesKey,
        homeBTNKey: homeBTNKey,
        appointmentBTNKey: appointmentBTNKey,
        inboxBTNKey: inboxBTNKey,
        billingBTNKey: billingBTNKey,
        navbarkEY: navbarkEY,
        mainBloc: _mainBloc);
    Scrollable.ensureVisible(
        targetsList[counter].keyTarget?.currentContext ?? context);
    tutorialCoachMark = TutorialCoachMark(
      targets: targetsList,
      colorShadow: Color.fromARGB(255, 224, 145, 238),
      paddingFocus: 10,
      hideSkip: false,
      opacityShadow: 0.9,
      onFinish: () {
        _mainBloc.add(MainEvent.changePage(index: 0));
      },
      onClickTarget: (target) {
        // Handle click on target
        // You can navigate to the next step here
        counter++;
        if (counter < targetsList.length) {
          print(counter);
          Scrollable.ensureVisible(
              targetsList[counter].keyTarget?.currentContext ?? context);
        }
      },
    );
  }

  void _showOnboarding() {
    Future.delayed(const Duration(seconds: 2), () {
      tutorialCoachMark.show(context: context);
    });
  }

  @override
  void initState() {
    _mainBloc = MainBloc();
    super.initState();
// initialize
    _initOnboarding();

    //show onboarding
    _showOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Theme.of(context).colorScheme.onBackground,
        iconTheme: context.theme.iconTheme,
        elevation: 0,
        scrolledUnderElevation: 2,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Image.asset('images/bell-24.png'),
            tooltip: context.localizations.show_notifications,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: SizedBox.shrink(),
            ),
            ListTile(
              title: Text(
                'Default',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.w400),
              ),
              trailing: BlocBuilder<MainBloc, MainState>(
                bloc: _mainBloc,
                buildWhen: (previous, current) =>
                    previous.defaultVersion != current.defaultVersion,
                builder: (context, state) {
                  return Switch(
                    value: _mainBloc.state.defaultVersion,
                    onChanged: (bool value) => _mainBloc.add(
                      MainEvent.changeDashboard(defaultVersion: value),
                    ),
                  );
                },
              ),
              onTap: () => _mainBloc.add(
                MainEvent.changeDashboard(
                    fullDashboard: !_mainBloc.state.defaultVersion),
              ),
            ),
            ListTile(
              title: Text('Show onboarding'),
              onTap: () {
                Navigator.of(context).pop();
                //show onboatding
                _showOnboarding();
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BlocBuilder<MainBloc, MainState>(
        key: navbarkEY,
        bloc: _mainBloc,
        buildWhen: (previous, current) => previous.index != current.index,
        builder: (context, state) {
          return BottomNavigationBar(
            selectedItemColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Theme.of(context).colorScheme.outline,
            selectedLabelStyle: context.textTheme.labelMedium,
            unselectedLabelStyle: context.textTheme.labelMedium,
            items: [
              BottomNavigationBarItem(
                key: homeBTNKey,
                icon: Image.asset(
                  'images/home-24.png',
                  color: state.index == 0 ? context.colorScheme.primary : null,
                ),
                label: context.localizations.home,
                backgroundColor: Theme.of(context).colorScheme.background,
              ),
              BottomNavigationBarItem(
                key: appointmentBTNKey,
                icon: Image.asset(
                  'images/schedule-24.png',
                  color: state.index == 1 ? context.colorScheme.primary : null,
                ),
                label: context.localizations.appointments,
                backgroundColor: Theme.of(context).colorScheme.background,
              ),
              BottomNavigationBarItem(
                key: inboxBTNKey,
                icon: Image.asset(
                  'images/inbox-24.png',
                  color: state.index == 2 ? context.colorScheme.primary : null,
                ),
                label: context.localizations.inbox,
                backgroundColor: Theme.of(context).colorScheme.background,
              ),
              BottomNavigationBarItem(
                key: billingBTNKey,
                icon: Image.asset(
                  'images/money-24.png',
                  color: state.index == 3 ? context.colorScheme.primary : null,
                ),
                label: context.localizations.billing,
                backgroundColor: Theme.of(context).colorScheme.background,
              ),
            ],
            currentIndex: _mainBloc.state.index,
            onTap: (index) =>
                {_mainBloc.add(MainEvent.changePage(index: index))},
          );
        },
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        type: ExpandableFabType.up,
        distance: 64,
        expandedFabSize: ExpandableFabSize.regular,
        closeButtonStyle: ExpandableFabCloseButtonStyle(
          child: const Icon(Icons.add_rounded),
          backgroundColor: context.colorScheme.primary,
        ),
        backgroundColor: context.colorScheme.primary,
        child: const Icon(Icons.add_rounded),
        children: [
          FloatingActionButton.extended(
            icon: Image.asset(
              'images/hospital.png',
              color: context.colorScheme.onPrimary,
            ),
            label: Text(
              context.localizations.find_new_clinic,
              style: context.textTheme.displaySmall
                  ?.copyWith(color: context.colorScheme.onPrimary),
            ),
            backgroundColor: context.colorScheme.primary,
            onPressed: () {},
          ),
          FloatingActionButton.extended(
            icon: Image.asset(
              'images/edit-20.png',
              color: context.colorScheme.onPrimary,
            ),
            label: Text(
              context.localizations.new_message,
              style: context.textTheme.displaySmall
                  ?.copyWith(color: context.colorScheme.onPrimary),
            ),
            backgroundColor: context.colorScheme.primary,
            onPressed: () {},
          ),
          FloatingActionButton.extended(
            icon: const Icon(Icons.add_rounded),
            label: Text(
              context.localizations.book_appointment,
              style: context.textTheme.displaySmall
                  ?.copyWith(color: context.colorScheme.onPrimary),
            ),
            backgroundColor: context.colorScheme.primary,
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<MainBloc, MainState>(
          bloc: _mainBloc,
          builder: (context, state) {
            return _showPage();
          },
        ),
      ),
    );
  }

  Widget _showPage() {
    switch (_mainBloc.state.index) {
      case 0:
        return _mainBloc.state.defaultVersion
            ? HomeScreen(
                welcomeKey: welcomeKey,
                remindersKey: remindersKey,
                joinButtonKey: joinButtonKey,
                appointmentsViewAllKey: appointmentsViewAllKey,
                appointmentsKey: appointmentsKey,
                inboxKey: inboxKey,
                moreResourcesKey: moreResourcesKey)
            : HomeScreenAlternative(
                welcomeKey: welcomeKey,
                remindersKey: remindersKey,
                joinButtonKey: joinButtonKey,
                appointmentsViewAllKey: appointmentsViewAllKey,
                appointmentsKey: appointmentsKey,
                inboxKey: inboxKey,
                moreResourcesKey: moreResourcesKey);
      case 1:
        return const AppointmentScreen();
      case 2:
        return const InboxScreen();
      default:
        return const BillingScreen();
    }
  }
}
