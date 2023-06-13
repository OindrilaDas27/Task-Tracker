import 'package:flutter/material.dart';
import 'package:task_tracker/constants.dart';

class InputFormCard extends StatefulWidget {
  final String text;

  const InputFormCard({key, required this.text}) : super(key: key);

  @override
  State<InputFormCard> createState() => _InputFormCardState();
}

class _InputFormCardState extends State<InputFormCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            )
          ),
          labelStyle: TextStyle(
            color: Colors.white,

          ),
          labelText: widget.text,
        ),
        style: TextStyle(
            color: Colors.white
        ),
      ),
    );
  }
}

class InputButton extends StatefulWidget {
  final String text2;
  final VoidCallback onPressed;

  const InputButton({key, required this.text2, required this.onPressed}) : super(key: key);

  @override
  State<InputButton> createState() => _InputButtonState();
}

class _InputButtonState extends State<InputButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.075,
        width: MediaQuery.of(context).size.width * 0.9,
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          color: primary_theme,
        ),
        child: TextButton(
            onPressed: () { widget.onPressed(); },
            child: Text(
              widget.text2,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: bg,
              ),
            ),
          ),

      ),
    );
  }
}

