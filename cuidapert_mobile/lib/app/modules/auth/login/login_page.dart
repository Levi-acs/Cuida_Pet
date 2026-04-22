import 'package:cuidapet_mobile/app/core/ui/widgets/cuidapet_textform_field.dart';
import 'package:flutter/material.dart';

// 1. Estrutura correta do StatefulWidget (dividido em duas classes)
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  // 2. O Controller fica aqui dentro do State (é padrão usar letra minúscula inicial)
  final textEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CuidapetTextformField(
              label: 'Login', 
              obscureText: false, 
              controller: textEC,
            ),
          ],
        ),
      ),
    );
  }
}