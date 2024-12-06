
import 'package:demo_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String WalletId="QW123456789";

   bool _isBlurred = false;

  void _toggleBlur() {
    setState(() {
      _isBlurred = !_isBlurred;
    });
  }


  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00563B), 
          title: const Row(            
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/edwin.jpeg"),                
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Good morning, ',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  Text('Edwin',
                  style: TextStyle(fontSize: 15, color: Colors.white , fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(width: 140,),              
                Icon(
                  size: 25.0,
                  color: Color.fromARGB(150, 255, 255, 255),
                  Icons.notifications_active_outlined),
                
              
            ],
          ),
        ),

        body:   SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                  Container(                      
                  width: double.infinity, 
                  height: 350.0,
                  color: Color(0xFF018749), 
                  child:  Column(                  
                    children: [ 
                     const SizedBox(height: 20,),
                      Container(
                        width: 310,
                        height: 300,
                        decoration: BoxDecoration(
                        color: Color.fromARGB(90, 53, 52, 52),
                        borderRadius: BorderRadius.circular(20),),                        
                      child:Column(
                        children: [
                          const SizedBox(height: 15,),
                          Container(
      width: 200,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Color.fromARGB(97, 233, 221, 88),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Wallet ID :  $WalletId ',
            style: TextStyle(
              fontSize: 11,
              color: Color.fromARGB(255, 235, 181, 34),
            ),
          ),
          SizedBox(width: 3),
          GestureDetector(
            onTap: () {              
              Clipboard.setData(ClipboardData(text: '$WalletId')).then((_) {              
              
              });
            },
            child: Icon(
              color: Color.fromARGB(255, 235, 181, 34),
              size: 15,
              Icons.copy_outlined,
            ),
          ),
        ],
      ),
    ),
                           const SizedBox(height: 20,),
                           const Text(
                                    'My Wallet Balance ',
                                    style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 71, 3, 88),),
                                  ),
                          const SizedBox(height: 8,),
                          Text(
          'KES 0.oo',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
            // Apply a blur effect based on the _isBlurred state
            decoration: _isBlurred ? TextDecoration.lineThrough : null,
          ),
        ),
        const SizedBox(height: 15),
        GestureDetector(
          onTap: _toggleBlur,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Show balance ',
                style: TextStyle(
                  fontSize: 11,
                  color: Color.fromARGB(255, 235, 181, 34),
                ),
              ),
              const SizedBox(width: 3),
              Icon(
                color: Color.fromARGB(255, 235, 181, 34),
                size: 15,
                Icons.remove_red_eye_outlined,
              ),
            ],
          ),
        ),
                         const SizedBox(height: 10,),
                         Container(
                          height: 50,
                          child:  SizedBox(
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton.icon(
                                onPressed: () {
                                  
                                },
                                icon: const Icon(Icons.arrow_upward_sharp), 
                                label: Text('Top Up'), 
                                style: CustomButtonStyle.buttonStyle(),
                              ),
                              const SizedBox(width: 10,),
                              const Divider(                                
                                thickness: 2, 
                                color: Color.fromARGB(255, 54, 3, 83), 
                              ),
                              const SizedBox(width: 10,),
                              ElevatedButton.icon(
                                onPressed: () {
                                  
                                },
                                icon: const Icon(Icons.arrow_downward_outlined), 
                                label: const Text('Withdraw'), 
                                style: CustomButtonStyle.buttonStyle2(),
                              ),
                            ],
                          ),
                          )
                         ),
                         
                              const SizedBox(height: 10,),
                          OutlinedButton(onPressed: (){}, 
                                child:  Text('View Transaction History',style: TextStyle(color: Colors.white , fontFamily: 'Roboto', fontSize:  13),),
                                style: CustomButtonStyle.outlinedButtonStyle()),
                         

                        ],
                      )
                     )
                    ]
                  ),
                ),

                   const SizedBox(height: 20,),
                   const Row(
                    children: [
                      SizedBox(width: 10,),
                       Text(
                            
                                    '4 Upcoming Contributions ',
                                    style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 5, 5, 5),fontWeight: FontWeight.w400),
                                  ),
                    ],
                   ),
                          const SizedBox(height: 8,),

                 SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row( // Use Row instead of ListView for a single item
                children: [

                  SizedBox(
                    width: 240,
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
                             const  CircleAvatar(),
                             const SizedBox(width: 3,),
                              const Column(
                                children: [
                                  Text('ELITE GROUP',style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold)),
                                  SizedBox(height: 2,),
                                  Text('Monthly contribution',style: TextStyle(fontSize: 11, color: Color.fromARGB(117, 0, 0, 0)),)
                                ],
                              ),
                              const SizedBox(width: 30,),
                              GestureDetector(
                                onDoubleTap: (){},
                                child: const Icon(
                                  color: Colors.amber,
                                  Icons.arrow_right_alt_outlined),
                              )
                            ],
                          ),           
                          const Divider(thickness: 1),
                          const Row(children: [
                            Text('KES 4000', style: TextStyle(fontSize: 14 , fontWeight: FontWeight.bold)),
                            SizedBox(width: 40,),
                            SizedBox(
                              child: Row(
                                children: [
                                  Icon(
                                    size: 15,
                                    Icons.punch_clock_outlined),
                                    SizedBox(width: 5,),
                                  Text('24-08-2023', style: TextStyle(fontSize: 13))
                                ],
                              ),
                            )
                          ],)

                          
                          
                        ],
                      ),
                    ),
                  ),
                  ),

                   SizedBox(
                    width: 240,
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
                             const  CircleAvatar(),
                             const SizedBox(width: 3,),
                              const Column(
                                children: [
                                  Text('STIMA',style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold)),
                                  SizedBox(height: 2,),
                                  Text('Monthly contribution',style: TextStyle(fontSize: 11, color: Color.fromARGB(117, 0, 0, 0)),)
                                ],
                              ),
                              const SizedBox(width: 30,),
                              GestureDetector(
                                onDoubleTap: (){},
                                child: const Icon(
                                  color: Colors.amber,
                                  Icons.arrow_right_alt_outlined),
                              )
                            ],
                          ),           
                          const Divider(thickness: 1),
                          const Row(children: [
                            Text('KES 4000', style: TextStyle(fontSize: 14 , fontWeight: FontWeight.bold)),
                            SizedBox(width: 40,),
                            SizedBox(
                              child: Row(
                                children: [
                                  Icon(
                                    size: 15,
                                    Icons.punch_clock_outlined),
                                    SizedBox(width: 5,),
                                  Text('24-08-2023', style: TextStyle(fontSize: 13))
                                ],
                              ),
                            )
                          ],)

                          
                          
                        ],
                      ),
                    ),
                  ),
                  ),
                    ],
                  ),
                ),

                const SizedBox(height: 13,),
                   const Row(
                    children: [
                      SizedBox(width: 10,),
                       Text(
                            
                                    'My Loans :',
                                    style: TextStyle(fontSize: 14,color: Color.fromARGB(255, 5, 5, 5),fontWeight: FontWeight.w400),
                                  ),
                    ],
                   ),
                          const SizedBox(height: 8,),

                 SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row( // Use Row instead of ListView for a single item
                children: [


                  SizedBox(
                    width: 240,
                    child: Card(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color:  Color.fromARGB(111, 0, 0, 0), width: 1),
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
                              const Column(
                                children: [
                                  Text('ELITE GROUP',style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold)),
                                  SizedBox(height: 2,),
                                  Text('Next Installment : 9-12-23',style: TextStyle(fontSize: 11, color: Color.fromARGB(117, 0, 0, 0)),)
                                ],
                              ),
                              const SizedBox(width: 30,),
                              GestureDetector(
                                onDoubleTap: (){},
                                child: const Icon(
                                  color: Colors.amber,
                                  Icons.arrow_right_alt_outlined),
                              )
                            ],
                          ),             
                          const Divider(thickness: 1),
                           Row(
                            children: [
                              const SizedBox(width: 3,),
                              const Text('BAL : KES 10000',style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w300)),
                             const SizedBox(width: 50,),
                            Container(
                                alignment: Alignment.center,
                                width: 60,height: 20,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF00563B), 
                                  borderRadius: BorderRadius.circular(12), // Set the border radius for rounded corners
                                ),                                
                                child: const  SizedBox(                               
                              child: Text('Active',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w100 ,color: Colors.white)),),
                              )

                            ],
                          )
                          
                          
                        ],
                      ),
                    ),
                  ),
                  ),

                   SizedBox(
                    width: 240,
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
                              const Column(
                                children: [
                                  Text('STIMA',style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold)),
                                  SizedBox(height: 2,),
                                  Text('Next Installment : 9-12-23',style: TextStyle(fontSize: 11, color: Color.fromARGB(117, 0, 0, 0)),)
                                ],
                              ),
                              const SizedBox(width: 30,),
                              GestureDetector(
                                onDoubleTap: (){},
                                child: const Icon(
                                  color: Colors.amber,
                                  Icons.arrow_right_alt_outlined),
                              )
                            ],
                          ),           
                          const Divider(thickness: 1),
                           Row(
                            children: [
                              const SizedBox(width: 3,),
                              const Text('BAL : KES 10000',style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w300)),
                              const SizedBox(width: 50,),
                              Container(
                                alignment: Alignment.center,
                                width: 60,height: 20,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF00563B), 
                                  borderRadius: BorderRadius.circular(12), // Set the border radius for rounded corners
                                ),                                
                                child: const  SizedBox(                               
                              child: Text('Active',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w100 ,color: Colors.white)),),
                              )

                            ],
                          )
                          
                          
                        ],
                      ),
                    ),
                  ),
                  )

                  
                    ],
                  ),
                )


                  ],
                ),
              ),
        
    );
  }
}

