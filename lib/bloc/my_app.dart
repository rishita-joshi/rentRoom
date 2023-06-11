import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:rent_a_room/bloc/theme_cubit.dart';
import 'package:rent_a_room/bloc/theme_reposatry.dart';
import 'package:rent_a_room/providers/login_provider.dart';
import 'package:rent_a_room/screens/bottom%20nav/home.dart';
import 'package:rent_a_room/themes/app_theme.dart';

class App extends StatelessWidget {
  const App({required this.themeRepository, super.key});

  final ThemeRepository themeRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: themeRepository,
      child: BlocProvider(
        create: (context) => ThemeCubit(
          themeRepository: context.read<ThemeRepository>(),
        )..getCurrentTheme(),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => LoginProvider()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: state.themeMode,
            //  navigatorKey:  navigatorKey,
            home: const HomePage(),
          ),
        );
      },
    );
  }
}
