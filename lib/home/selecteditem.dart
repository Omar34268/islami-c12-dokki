import 'package:flutter/material.dart';
class Selecteditem extends StatelessWidget {
   String Selected;
   Selecteditem(this.Selected);
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(Selected,style:Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontWeight: FontWeight.bold
        ),),
        Icon(Icons.check,
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          size: 20,

        )
      ],
    );
  }
}
