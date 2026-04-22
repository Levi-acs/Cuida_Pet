part of '../login_page.dart';

class LoginRegisterButtons extends StatelessWidget {
  const LoginRegisterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: [
        RoundedButtonIcon(
          onTap: () {},
          width: .42.sw,
          color: Color(0xFF426783),
          icon: CuidaPetIcons.facebook,
          label: 'Facebook',
        ),
        RoundedButtonIcon(
          onTap: () {},
          width: .42.sw,
          color: Color(0xFFEE5C2E),
          icon: CuidaPetIcons.google,
          label: 'Google',
        ),
        RoundedButtonIcon(
          onTap: () {},
          width: .42.sw,
          color: context.primaryColorDark,
          icon: Icons.mail_rounded,
          label: 'Cadastre-se',
        ),
      ],
    );
  }
}
