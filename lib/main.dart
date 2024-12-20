import 'package:film_mate/application/detail/detail_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/firebase_options.dart';
import 'package:film_mate/presentation/splash/screen_splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'application/explore/explore_bloc.dart';
import 'application/home/home_bloc.dart';
import 'application/main_navigator/main_navigator_bloc.dart';
import 'application/search/search_bloc.dart';
import 'application/user/user_bloc.dart';
import 'core/di/injectable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'domain/models/user/genre.dart';
import 'domain/models/user/user_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
 );
  await configureInjectable();
  await SharedPreferences.getInstance();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(UserAdapter().typeId)) {
    Hive.registerAdapter(UserAdapter());
  }

  if (!Hive.isAdapterRegistered(GenreAdapter().typeId)) {
    Hive.registerAdapter(GenreAdapter());
  }

  await Hive.openBox<User>('user');
  await Hive.openBox<Genre>('genre');
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
        BlocProvider(create: ((ctx) => getIt<DetailBloc>())),
        BlocProvider(create: ((ctx) => getIt<SearchBloc>())),
        BlocProvider(create: ((ctx) => getIt<UserBloc>())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FilmMate',
        theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          scaffoldBackgroundColor: kBackgroundColor,
          useMaterial3: true,
        ),
        home: const ScreenSplash(),
      ),
    );
  }
}
