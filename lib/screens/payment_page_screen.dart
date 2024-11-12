import 'package:demo_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
   String? _selectedOption;
   final TextEditingController _controller = TextEditingController(text: '4500');

  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedOption = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: const Color.fromARGB(255, 6, 94, 9),
        title: Text('Make Payment',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400 , color: Colors.white)), 
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Padding(
            padding:  EdgeInsets.all(10.0),
            child:  Column(
          children: [

              Row(children: [
                              Text('Payment Option :',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400)), 
                            ],),

              Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                children: [
                       Row(
            children: [
              Radio<String>(
                value: 'M-Pesa',
                groupValue: _selectedOption,
                onChanged: _handleRadioValueChange,
              ),
              const Text('M-Pesa'),
            ],
          ),
          Row(
            children: [
              Radio<String>(
                value: 'Wallet',
                groupValue: _selectedOption,
                onChanged: _handleRadioValueChange,
              ),
              const Text('Wallet'),
            ],
          ),

          Row(
            children: [
              Radio<String>(
                value: 'Card',
                groupValue: _selectedOption,
                onChanged: _handleRadioValueChange,
              ),
              const Text('Card'),
            ],
          ),
                ],
              ),

              const SizedBox(height: 10,),

             const Row(children: [Text('Enter Amount :',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400)),],),
             const SizedBox(height: 5,),
             TextField(
                controller: _controller,
                enabled: false,                      
                decoration: InputDecoration(
                  labelText: 'Amount',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),                   

                  ),       
                ),
                style: TextStyle(
                  color: Colors.grey[700],           
                ),
              ),

              SizedBox(height: 15,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             ElevatedButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center, 
                                  children: [
                                    
                                    Text(
                                      'Complete',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.check, 
                                      color: Colors.white, 
                                    ),
                                     
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(255, 6, 94, 9), 
                                  minimumSize: Size(330, 40), 
                                ),
                              )       
                          
                          ],)
            
              

          ])
          )
          )
    );
  }
}


