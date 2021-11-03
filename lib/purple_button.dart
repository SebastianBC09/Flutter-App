import 'package:flutter/material.dart';

class PurpleButton extends StatelessWidget {
  final String buttonText;
  const PurpleButton({Key? key, required this.buttonText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Navegando'),
          duration: Duration(seconds: 5),
        ));
      },
      child: Container(
        margin: const EdgeInsets.only(
          top: 15.0,
          right: 20.0,
          left: 20.0,
          bottom: 15.0,
        ),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF4268D3),
              Color(0xFF584CD1),
            ],
            begin: FractionalOffset(1.8, 9.0),
            end: FractionalOffset(0.9, 0.1),
            tileMode: TileMode.clamp,
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 18.0,
              fontFamily: 'Montserrat',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
