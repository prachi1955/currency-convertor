import 'package:flutter/material.dart';
 //1.Create  variable that stores the converted currency value
  //2.Create a function that multiplies the value given by the textfield 
  //3.Store the value in the variable we created
  //4.display the variable
  class CurrencyConvertorMaterialPage extends StatefulWidget{
    const CurrencyConvertorMaterialPage({super.key});
    @override
    State<CurrencyConvertorMaterialPage> createState() => _CurrencyConvertorMaterialPageState();
      }
      class _CurrencyConvertorMaterialPageState extends State<CurrencyConvertorMaterialPage> {
      double result = 0;
      final TextEditingController textEditingController = TextEditingController();
      @override 
      Widget build(BuildContext context){
  final border = OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blueGrey,
                width: 3.0,
                style: BorderStyle.none,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
             );
 return MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.blueGrey,
    appBar: AppBar(
      backgroundColor: Colors.blueGrey,
      title: Text('Currency Convertor'),
      centerTitle: true,
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          Text(result.toStringAsFixed(2), 
          style: TextStyle(
            fontSize: 55,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,
              style:TextStyle(
                color: Colors.black,
              ) ,
              decoration: InputDecoration(
               hintText: 'Please enter the amount in USD to convert it into INR',
               hintStyle: TextStyle(
                color: Colors.black,
               ),
               prefixIcon: Icon(Icons.monetization_on_outlined),
               prefixIconColor: Colors.black,
               filled: true,
               fillColor: Colors.white,
               focusedBorder: border,
               enabledBorder: border,
              ),
            
            ),
          ),
//button
//raised
//appears like a text
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(onPressed: (){
            //types of mode: debug, release, profile
           
              setState((){
            result = double.parse(textEditingController.text)*81;
              });   
          }, 
          
          style:  ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.black),
          foregroundColor: WidgetStatePropertyAll(Colors.white),
          minimumSize: WidgetStatePropertyAll(Size(double.infinity,50)),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
          ),
          ),
          
          child: Text('convert'),
          ),
        ),
        ],
      ),
    ) 
   ),
 );
}
}


