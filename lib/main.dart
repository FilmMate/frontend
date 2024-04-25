import 'package:film_mate/core/colors.dart';
import 'package:film_mate/presentation/main_navigator/main_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'application/explore/explore_bloc.dart';
import 'application/home/home_bloc.dart';
import 'application/main_navigator/main_navigator_bloc.dart';
import 'core/di/injectable.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjectable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ((ctx) => getIt<MainNavigatorBloc>())),
        BlocProvider(create: ((ctx) => getIt<HomeBloc>())),
        BlocProvider(create: ((ctx) => getIt<ExploreBloc>())),
      ],  
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FilmMate',
        theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          scaffoldBackgroundColor: kBackgroundColor,
          useMaterial3: true,
        ),
        home: const MainNavigator(),
      ),
    );
  }
}
