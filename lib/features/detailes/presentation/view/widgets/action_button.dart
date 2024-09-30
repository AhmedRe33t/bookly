import 'package:bookapp/core/services/lunch_url.dart';
import 'package:bookapp/core/widgets/custom_button.dart';
import 'package:bookapp/features/home/data/models/books/books.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
         const Expanded(
              child: CustomButton(
              
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14), bottomLeft: Radius.circular(14)),
            text: 'free',
          )),
          Expanded(
              child: CustomButton(
                  onPressed: (){
                    customLunchUrl(context, bookModel.volumeInfo!.previewLink);
                    
                },
            backgroundColor:const Color.fromARGB(255, 19, 186, 27),
            textColor: Colors.white,
            borderRadius:const BorderRadius.only(
                topRight: Radius.circular(14),
                bottomRight: Radius.circular(14)),
            text: getText(bookModel),
          ))
        ],
      ),
    );
  }
  
 String getText(BookModel bookModel) {
  if(bookModel.volumeInfo!.previewLink==null){
    return 'Not available';
  }else{
    return 'Breview';
  }
 }
}
