part of '../register_page.dart';

class _RegisterForm extends StatefulWidget {
  const _RegisterForm({super.key});

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CuidapetTextformField(label: 'Login'),
           const SizedBox(
            height: 20,
          ),
          CuidapetTextformField(label: 'senha',obscureText: true,),
          const SizedBox(
            height: 20,
          ),
          CuidapetTextformField(label: 'confirmar senha',obscureText: true,),
           const SizedBox(
            height: 20,
          ),
          CuidapetDefaultButton(onPressed: () {}, label: 'Cadastrar')
        ],
      ),
    );
  }
}
