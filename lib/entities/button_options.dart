import 'package:flutter/material.dart';

final List<ButtonOptions> buttonOptions = [
  ButtonOptions(title: 'Transferir', icon: Icons.compare_arrows),
  ButtonOptions(title: 'Pagar', icon: Icons.wallet),
  ButtonOptions(title: 'Retirar', icon: Icons.arrow_circle_up),
  ButtonOptions(title: 'Depositar', icon: Icons.arrow_circle_down),
];

class ButtonOptions {
  final String title;
  final IconData icon;

  ButtonOptions({
    required this.title,
    required this.icon,
  });
}
