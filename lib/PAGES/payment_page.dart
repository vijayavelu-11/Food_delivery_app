import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery_app/PAGES/delivery_progress_page.dart';
import 'package:food_delivery_app/components/my_buttons.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey <FormState> formKey = GlobalKey <FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused= false;
 //user want to pay
  void userTappedPay(){
    if(formKey.currentState!.validate()){
      showDialog(context: context,
       builder: (context)=> AlertDialog(
        title: const Text("Confirm Payment"),
        content: SingleChildScrollView(
          child: ListBody(children: [
            Text("Card Number : $cardNumber"),
            Text("Expiry Date : $expiryDate"),
            Text("Card Holder Name : $cardHolderName"),
            Text("Cvv : $cvvCode"),
          ],
          ),
        ),
        actions: [
          //cancel buttom
          TextButton(onPressed: () => Navigator.pop(context),
           child: Text("Cancel"),),
           //yes button
          TextButton(
            onPressed:  (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DeliveryProgressPage(),
            ),
            );
            },
            
          child: Text("yes"),),
        ],
       ));
    }

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor:Theme.of(context).colorScheme.inversePrimary ,
        title: Text("Checkout"),
        centerTitle: true,
        ),
        body: Column(
          children: [
            //credicard
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (p0) {} ),
              //creditcard form
              CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,

                    onCreditCardModelChange: (data){
                      setState(() {
                        cardNumber = data.cardNumber;
                      expiryDate= data.expiryDate;
                      cardHolderName= data.cardHolderName;
                      cvvCode= data.cvvCode;
                      });

                    },
                     formKey: formKey),

                     const Spacer(),
                     MyButton(
                      onTap: userTappedPay,
                      text: "Pay Now"
                      ),

                      const SizedBox(height: 7,)
          ],
        ),
    );
  }
}