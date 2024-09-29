import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchText extends StatelessWidget {
  const CustomSearchText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        
        decoration: InputDecoration(
          enabledBorder: buildOutLineInputBoarder(),
          focusedBorder: buildOutLineInputBoarder(),
          hintText: 'Search',
          suffixIcon: IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.magnifyingGlass,color: Color.fromARGB(255, 234, 228, 226),)),
          
          
        ),
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBoarder() {
    return OutlineInputBorder(
          borderSide:const BorderSide(
            color: Colors.green
          ),
          borderRadius: BorderRadius.circular(16)
        );
  }
}