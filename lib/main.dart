import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'screens/welcome_screen.dart';
import 'screens/create_trip_screen.dart';
import 'screens/add_people_screen.dart';
import 'screens/trip_created_screen.dart';
import 'screens/emergency_sos_screen.dart';
import 'screens/location_sharing_screen.dart';
import 'screens/geofencing_screen.dart';
import 'widgets/main_navigation_wrapper.dart';
import 'services/navigation_service.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const LocatableApp());
}

class LocatableApp extends StatelessWidget {
  const LocatableApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Locatable',
      navigatorKey: NavigationService.instance.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Sora',
      ),
      home: const WelcomeScreen(),
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/main': (context) => const MainNavigationWrapper(),
        '/create-trip': (context) => const MainNavigationWrapper(
          child: CreateTripScreen(),
        ),
        '/add-people': (context) => const MainNavigationWrapper(
          child: AddPeopleScreen(),
        ),
        '/trip-created': (context) => const MainNavigationWrapper(
          child: TripCreatedScreen(),
        ),
        '/emergency-sos': (context) => const MainNavigationWrapper(
          child: EmergencySOSScreen(),
        ),
        '/location-sharing': (context) => const MainNavigationWrapper(
          child: LocationSharingScreen(),
        ),
        '/geofencing': (context) => const MainNavigationWrapper(
          child: GeofencingScreen(),
        ),
      },
    );
  }
}