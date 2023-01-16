import 'package:flutter/material.dart';


class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(
            color, Icons.call, "CALL", "Llamando a ...", context),
        _buildButtonColumn(
            color, Icons.near_me, "ROUTE", "Dirigiendo a ...", context),
        _buildButtonColumn(
            color, Icons.share, "SHARE", "Compartiendo a ...", context)
      ],
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label,
      String message, BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: Text(message),
              duration: const Duration(milliseconds: 500),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          icon: Icon(
            icon,
            color: color,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
