import "package:flutter/material.dart";
import "package:islamy_c12_dokki/home/Themebottomsheet.dart";

import "../langaugebottomsheet.dart";
class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Lanuage",style:Theme.of(context).textTheme.bodySmall,),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              showModalBottomSheet(context: context, builder:(context) => Langaugebottomsheet(),);
            },
            child: Container(
              width: double.infinity,
              padding:EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                )
              ),
              child: Text("English",style:Theme.of(context).textTheme.bodySmall,),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("Theme",style:Theme.of(context).textTheme.bodySmall,),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              showModalBottomSheet(context: context, builder:(context) => Themebottomsheet(),);
            },
            child: Container(
              width: double.infinity,
              padding:EdgeInsets.symmetric(vertical: 5,horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  )
              ),
              child: Text("Light",style:Theme.of(context).textTheme.bodySmall),
            ),
          ),


        ],
      ),
    );
  }
}
