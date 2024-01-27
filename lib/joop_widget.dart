import 'package:flutter/material.dart';

class JoopWidget extends StatelessWidget {
  const JoopWidget({super.key, this.text, this.tus, this.onTap});
  final String? text;
  final Color? tus;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          color: tus ?? Colors.green,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(color: Colors.white, fontSize: 32),
          ),
        ),
      ),
    );
  }
}
