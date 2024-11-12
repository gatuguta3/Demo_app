import 'package:demo_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class ReservationViewPage extends StatefulWidget {
  const ReservationViewPage({super.key});

  @override
  State<ReservationViewPage> createState() => _ReservationViewPageState();
}

class _ReservationViewPageState extends State<ReservationViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text('RESERVATION 1234A', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400) ,),
            const SizedBox(width: 10,),
            IconButton(onPressed: (){},iconSize: 25, icon: Icon(Icons.more_horiz)),
            const SizedBox(width: 5,),
            IconButton(onPressed: (){},iconSize: 25, icon: Icon(Icons.cancel_outlined)),
          ],
        ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Padding(
            padding:  EdgeInsets.all(10.0),
            child:  Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 Container(
                                alignment: Alignment.center,
                                width: 80,height: 30,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 247, 167, 48), 
                                  borderRadius: BorderRadius.circular(12), // Set the border radius for rounded corners
                                ),                                
                                child: const  SizedBox(                               
                              child: Text('Pending',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200 ,color: Colors.white)),),
                              ),
                            const SizedBox(height: 10,),
                             
              ],
            ),
              const SizedBox(height: 10,),
                        const Row(
                            children: [
                             Icon(size: 40, color: Color.fromARGB(129, 0, 0, 0),Icons.person_outlined),
                              SizedBox(width: 3,),
                               Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Edwin Wafula',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400)),                                  
                                  Text('edwinwafula@gmail.com',style: TextStyle(fontSize: 11, color: Color.fromARGB(117, 0, 0, 0)),),
                                  Text('Owner',style: TextStyle(fontSize: 11, color: Color.fromARGB(117, 0, 0, 0)),)
                                ],
                              ),
          ],
        ),
        const SizedBox(height: 10,),
        const Row(
                            children: [
                             Icon(size: 40, color: Color.fromARGB(129, 0, 0, 0),Icons.list_alt_outlined),
                              SizedBox(width: 3,),
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Package Details',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400)),                                  
                                  Text('Diani Neptune Beach Resort',style: TextStyle(fontSize: 11, color: Color.fromARGB(117, 0, 0, 0)),),
                                  Text('Standard',style: TextStyle(fontSize: 11, color: Color.fromARGB(117, 0, 0, 0)),)
                                ],
                              ),
          ],
        ),
        const SizedBox(height: 10,),
                          const Row(
                            children: [
                             Icon(size: 40, color: Color.fromARGB(129, 0, 0, 0),Icons.calendar_month_outlined),
                              SizedBox(width: 3,),
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Date Reserved',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400)),                                  
                                  Text('11 May 2024  11:54 PM',style: TextStyle(fontSize: 11, color: Color.fromARGB(117, 0, 0, 0)),),                                  
                                ],
                              ),
                              ],
                            ),
        const SizedBox(height: 5,),
        const Divider(thickness: 1,),
        const SizedBox(height: 5,),
                            const Row(
                            children: [
                             Icon(size: 40, color: Color.fromARGB(129, 0, 0, 0),Icons.check),
                              SizedBox(width: 3,),
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Package Price',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400)),                                  
                                  Text('KES 4,500',style: TextStyle(fontSize: 11, color: Color.fromARGB(117, 0, 0, 0)),),                                  
                                ],
                              ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Row(
                            children: [
                             Icon(size: 40, color: Color.fromARGB(129, 0, 0, 0),Icons.check),
                              SizedBox(width: 3,),
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Reservation Type',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400)),                                  
                                  Text('Individual',style: TextStyle(fontSize: 11, color: Color.fromARGB(117, 0, 0, 0)),),                                  
                                ],
                              ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            const Row(
                            children: [
                             Icon(size: 40, color: Color.fromARGB(129, 0, 0, 0),Icons.check),
                              SizedBox(width: 3,),
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Member Id',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400)),                                  
                                  Text('4580A',style: TextStyle(fontSize: 11, color: Color.fromARGB(117, 0, 0, 0)),),                                  
                                ],
                              ),
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                OutlinedButton(onPressed: (){},
                                style: OutlinedButton.styleFrom(
                                      foregroundColor: const Color.fromARGB(129, 244, 67, 54), side: BorderSide(color: const Color.fromARGB(136, 244, 67, 54), width: 2), 
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),      
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 12), 
                                    ),
                                 child: Text('Cancel')),
                                const SizedBox(width: 10,),
                                ElevatedButton(onPressed: (){},
                                 style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white, backgroundColor: Colors.green,      
                                              
                                        elevation: 5,                   
                                        shape: RoundedRectangleBorder(  
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        padding: EdgeInsets.symmetric(horizontal: 28, vertical: 12),  
                                      ),
                                 child: Text('Pay')),

                              ],
                            ),

                            const SizedBox(height: 5,),
                            const Divider(thickness: 1,),
                            const SizedBox(height: 5,),

                            const Row(children: [
                              Text('Payment',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400)), 
                            ],),
               SizedBox(
                    width: 340,
                    child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: const Color.fromARGB(111, 0, 0, 0), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    color: Colors.white,
                    child:  Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                       
                           Row(
                            children: [
                              const SizedBox(width: 3,),
                              const Text('KES 4500',style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w300)),
                              const SizedBox(width: 180,),
                              Container(
                                alignment: Alignment.center,
                                width: 60,height: 20,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(167, 241, 184, 26), 
                                  borderRadius: BorderRadius.circular(12), // Set the border radius for rounded corners
                                ),                                
                                child: const  SizedBox(                               
                              child: Text('Pending',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w200 ,color: Color.fromARGB(255, 252, 251, 250))),),
                              )

                            ],
                          ),
                          const SizedBox(height: 10,),
                            const Row(
                            children: [                             
                               Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('DHSTY456JK',style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w400)),                                  
                                  Text('Transaction ref',style: TextStyle(fontSize: 11, color: Color.fromARGB(117, 0, 0, 0)),),                                  
                                ],
                              ),
                               SizedBox(width: 150,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('D456Y',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),                                  
                                  Text('Pay Id',style: TextStyle(fontSize: 11, color: Color.fromARGB(117, 0, 0, 0)),),                                  
                                ],
                              ),
                              ],
                            ),
                          const SizedBox(height: 10,),
                            Row(children: [
                              Text('Now',style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400)),
                            ],)
                          
                          
                        ],
                      ),
                    ),
                  ),
                  )








        ]  )
        )
    ));
  }
}

