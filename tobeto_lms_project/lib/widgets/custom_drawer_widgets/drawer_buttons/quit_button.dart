import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/auth_bloc/auth_bloc.dart';
import 'package:tobeto_lms_project/api/blocs/auth_bloc/auth_event.dart.dart';
import 'package:tobeto_lms_project/screens/login_screen.dart';

class QuitButton extends StatelessWidget {
  const QuitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).colorScheme.onPrimaryContainer;
    final backgroundColor = Colors.red.shade900;
    const String text = "Çıkış";

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              foregroundColor: textColor,
              textStyle: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
              )),
          onPressed: () {
            BlocProvider.of<AuthBloc>(context).add(AuthSignOutUserEvent());
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ));
          },
          child: const Text(text)),
    );
  }
}
