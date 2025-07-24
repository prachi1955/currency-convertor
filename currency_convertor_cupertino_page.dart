import 'package:flutter/cupertino.dart';
class CurrencyConvertorCupertinoPage extends StatefulWidget {
  const CurrencyConvertorCupertinoPage({super.key});

  @override
  State<CurrencyConvertorCupertinoPage> createState() => _CurrencyConvertorCupertinoPageState();
}

class _CurrencyConvertorCupertinoPageState extends State<CurrencyConvertorCupertinoPage> {
  double result = 0;
      final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    

  return CupertinoPageScaffold(
    backgroundColor: CupertinoColors.systemGrey2,
    navigationBar: CupertinoNavigationBar(
      backgroundColor:CupertinoColors.systemGrey2,
      middle: Text('Currency Convertor'),
      
    ),
    child: Center(
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

          
             CupertinoTextField(
              controller: textEditingController,
              style: const TextStyle(
                color: CupertinoColors.black,
              ) ,
              decoration:BoxDecoration(
                color: CupertinoColors.white,
                border:Border.all(),
                borderRadius: BorderRadius.circular(10),

                ), 
            prefix: const Icon(CupertinoIcons.money_dollar),
            placeholder: 'Please enter the amount in USD to convert it into INR',
            ),

        
           CupertinoButton(
            onPressed: (){
            
              setState((){
            result = double.parse(textEditingController.text)*81;
              }); 
          }, 
          
          color : CupertinoColors.black, 
          child: Text('convert'),
          ),
          
          
        
        ],
      ),
    ) 
   );
 
  }
}