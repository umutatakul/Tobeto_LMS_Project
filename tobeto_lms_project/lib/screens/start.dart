import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/auth_bloc/auth_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/auth_bloc/auth_bloc_state.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/profile_bloc/profile_bloc_event.dart';
import 'package:tobeto_lms_project/screens/home_screen.dart';
import 'package:tobeto_lms_project/screens/login_screen.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        //Splash screein im yok olunca kullanırım
        // if (state is AuthLoading) {
        //   return const SplashScreen();
        // }
        if (state is AuthenticatedState) {
          //tekrardan istek atım güncel veriyi alması için istek atıyoruz
          //her home ekranı geldiğinde user ın yeni verileri çekiliyor
          //iki kez istek atıp azaltan istek kullanıyor. masraflı ama güvenli
          context.read<ProfileBloc>().add(GetProfileEvent());
          return const HomeScreen();
        }
        return const LoginScreen();
      },
    );
  }
}
