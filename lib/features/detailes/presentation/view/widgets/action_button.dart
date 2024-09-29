import 'package:bookapp/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.0),
      child:  Row(
        children: [
          Expanded(
            child: CustomButton(backgroundColor: Colors.white, textColor: Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(14),bottomLeft: Radius.circular(14)), text: '19.9 \$',)
             ),
               Expanded(
            child: CustomButton(
              backgroundColor: Color.fromARGB(255, 19, 186, 27), 
              textColor: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(14),bottomRight: Radius.circular(14)), text: 'free breview',)
             )
        ],
      ),
    );
  }
}