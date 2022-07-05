import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/login_controller.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  const CustomLoginButtonComponent({Key? key, required this.loginController})
      : super(key: key);

  final LoginController loginController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? CircularProgressIndicator()
          : ElevatedButton(
              style: TextButton.styleFrom(
                elevation: 25,
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                loginController.auth().then((result) {
                  if (result) {
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text('Usuário ou senha inválido!'),
                      duration: const Duration(seconds: 1),
                    ));
                  }
                });
              },
              child: Text('Login'),
            ),
    );
  }
}
