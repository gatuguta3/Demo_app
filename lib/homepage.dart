import 'dart:io';

import 'package:flutter/cupertino.dart';

import 'themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int _currentIndex = 0;
  final screens=[
    const Home(),
   const  Discover(),
    const Payment(),
    const Profile()

  ];


Future<bool> _onWillPop() async {    
    return await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Exit App'),
            content: Text('Do you really want to exit the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false), 
                child: Text('No'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(true); 
                  exit(0); 
                },
                child: Text('Yes'),
              ),
            ],
          ),
        ) ??
        false; 
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(

         body: screens[_currentIndex],
bottomNavigationBar: BottomNavigationBar(
  backgroundColor: const Color.fromARGB(255, 253, 252, 253),
  selectedItemColor: Colors.orange,
  unselectedItemColor: const Color.fromRGBO(158, 158, 158, 1),
  type: BottomNavigationBarType.fixed,
  currentIndex: _currentIndex,
  onTap: (index) => setState(() => _currentIndex = index),
  items: [
    BottomNavigationBarItem(
      icon: const Icon(Icons.home_outlined),
      label: _currentIndex == 0 ? 'Home' : '',
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.directions),
      label: _currentIndex == 1 ? 'Discover' : '',
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.wallet),
      label: _currentIndex == 2 ? 'wallet' : '',
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.person_2_outlined),
      label: _currentIndex == 3 ? 'Profile' : '',
    ),
  ],
),
        
      )
    );
  }
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Wallet ID :  QW123456789 ',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromARGB(255, 235, 181, 34),
                                    ),
                                  ),
                                  SizedBox(width: 3),
                                  Icon(
                                    color: Color.fromARGB(255, 235, 181, 34),
                                    size: 15,
                                    Icons.copy_outlined,
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
                          const Text(
                                    'KES 0.oo',
                                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: Color.fromARGB(255, 255, 255, 255),),
                                  ),
                          const SizedBox(height: 15,),
                          
                         const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Show balance ',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Color.fromARGB(255, 235, 181, 34),
                                    ),
                                  ),
                                  SizedBox(width: 3),
                                  Icon(
                                    color: Color.fromARGB(255, 235, 181, 34),
                                    size: 15,
                                    Icons.remove_red_eye_outlined,
                                  ),
                                ],
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



class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child:Scaffold(
       appBar: AppBar(
        backgroundColor: const Color(0xFF00563B),         
          title:  Row(            
            children: [
              IconButton.filled(onPressed: (){},color: Colors.white, icon: const Icon(Icons.arrow_back)),
              const SizedBox(width: 10,),
                  const Text('Explore',
                  style: TextStyle(fontSize: 15, color: Colors.white , fontWeight: FontWeight.bold),
                  ),
                
             const  SizedBox(width: 150,),              
               IconButton(
                onPressed: (){},
                  iconSize: 30.0,
                  color: Color.fromARGB(218, 255, 255, 255),
                  icon: Icon(Icons.add),),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48.0), 
            child: Container(
              color: Colors.amber, 
              child: TabBar(
                tabs: [
                  Tab(text: 'Membership'),
                  Tab(text: 'Chamas'),
                  Tab(text: 'Fundraisers'),
                  Tab(text:'Experiences'),
                ],
                indicatorColor: Colors.red, 
                labelColor: Colors.white, 
                unselectedLabelColor: Colors.black, 
              ),
            ),
          ),
        ),
         body: TabBarView(
          children: [
            Center(child: Text('Content for Tab 1')),
            Center(child: Text('Content for Tab 2')),
            Center(child: Text('Content for Tab 3')),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                 const SizedBox(height: 10,),
                 const  Row(
                    children: [
                      SizedBox(width: 5,),
                       Text('Explore the best offers available !'),
                    ],
                  ),

                 Container(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: 320,
                      height: 210,
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return const ExperienceView();
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                height: 140.0,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: Image.asset(
                                        'images/beachview.jpeg',
                                        fit: BoxFit.cover, // Use BoxFit.cover to fill the container
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Row(
                              children: [
                                SizedBox(width: 5),
                                Text('DIANI NEPTUNE BEACH RESORT'),
                              ],
                            ),
                            const SizedBox(height: 5),
                            const Row(
                              children: [
                                SizedBox(width: 5),
                                Text(
                                  'Beautiful beach experience at the beautiful \nNeptune Beach Resort in Diani',
                                  style: TextStyle(fontSize: 11, color: Color.fromARGB(125, 0, 0, 0)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                
                Container(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: 320,
                      height: 210,
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 140.0,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: Image.asset(
                                        'images/man.jpeg',
                                        fit: BoxFit.cover, // Use BoxFit.cover to fill the container
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Row(children: [
                              SizedBox(width: 5),
                              Text('Machakos Colourfest'),
                            ]),
                            const SizedBox(height: 5),
                            const Row(children: [
                              SizedBox(width: 5),
                              Text(
                                'Get ready for a burst of color at the Machakos \ncolorfest this August',
                                style: TextStyle(fontSize: 12, color: Color.fromARGB(125, 0, 0, 0)),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ),

                      Container(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: 320,
                      height: 210,
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 140.0,
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: Image.asset(
                                        'images/man.jpeg',
                                        fit: BoxFit.cover, // Use BoxFit.cover to fill the container
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Row(children: [
                              SizedBox(width: 5),
                              Text('Machakos Colourfest'),
                            ]),
                            const SizedBox(height: 5),
                            const Row(children: [
                              SizedBox(width: 5),
                              Text(
                                'Get ready for a burst of color at the Machakos \ncolorfest this August',
                                style: TextStyle(fontSize: 12, color: Color.fromARGB(125, 0, 0, 0)),
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            )
          ],
        ),

    ));
  }
}

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class ExperienceView extends StatefulWidget {
  const ExperienceView({super.key});

  @override
  State<ExperienceView> createState() => _ExperienceViewState();
}

class _ExperienceViewState extends State<ExperienceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          
          Container(
          width: MediaQuery.of(context).size.width, 
          height: 250.0,
          child: Image.asset(
            'images/beachview.jpeg',
            fit: BoxFit.cover,
          ),
        ),
         const SizedBox(height: 10),
          Padding(
            padding:  EdgeInsets.all(8.0),
            child:          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                 const Row(children: [ 
                  SizedBox(width: 5,),                 
                  Text(
                  'Diani Neptune Beach Resort',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                 ],),
                 
                 const  Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Malipo in partnership with Aidan Safaris',
                  style: TextStyle(fontSize: 14 ,color: Color.fromARGB(158, 0, 0, 0)),
                ),]),
               const Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Venue: Diani Beach Resort',
                  style: TextStyle(fontSize: 14 ,color: Color.fromARGB(190, 0, 0, 0)),
                ),]),
                const Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Date : 03 May - 30 June, 2023',
                  style: TextStyle(fontSize: 14 ,color: Color.fromARGB(199, 0, 0, 0)),
                ),]),
                
               const SizedBox(height: 5),
                 const Divider(thickness: 1,),
                 const SizedBox(height: 5),

                 const Row(children: [ 
                  SizedBox(width: 5,),                 
                  Text(
                  'What to Expect :',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                 ],),
                 Text(
                  'Treating mom to the ulimate soft life experience at the Diani Neptune Beach Resort this Mother\'s Day. A day of luxury, relaxation and endless smiles',
                  style: TextStyle(fontSize: 12 ,color: Color.fromARGB(158, 0, 0, 0)),
                ),
                Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Package Include :',
                  style: TextStyle(fontSize: 14 ,color: Color.fromARGB(158, 0, 0, 0)),
                ),]),

                Text(
                  'Transport To & Fro , Buffet lunch , Steam bath or Sauna, Mothers Day Gift Hampers , Swimming , Photography',
                  style: TextStyle(fontSize: 12 ,color: Color.fromARGB(158, 0, 0, 0)),
                ),


                SizedBox(height: 5),
                 Divider(thickness: 1,),
                 SizedBox(height: 5),

                 Row(children: [ 
                  SizedBox(width: 5,),                 
                  Text(
                  'Packages :',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                 ],),


                  SizedBox(
                    width: 340,
                    child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color.fromARGB(34, 0, 0, 0), width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    color: Colors.white,
                    child:   Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Standard',style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold)),
                          Row(
                            children: [
                             const  CircleAvatar(),
                             const SizedBox(width: 3,),
                             Text('KES 4,500/Person',style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400)),
                          ],
                          ),
                          SizedBox(height: 5,),

                          Row(
                            children: [
                             const  CircleAvatar(),
                             const SizedBox(width: 3,),
                             Text('Up to 16 people',style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400)),
                          ],
                          ),
                          SizedBox(height: 5,),

                          Row(
                            children: [
                             const  CircleAvatar(),
                             const SizedBox(width: 3,),
                             Text('Active',style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w400)),
                          ],
                          ),           
                          SizedBox(height: 5,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             ElevatedButton(
                              onPressed: () { 
                                 Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return const ReservationPage();
                                    },
                                  ),
                                );                                
                              },
                              child: Text('Reserve',style: TextStyle(color: Colors.white),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 6, 94, 9), 
                                minimumSize: Size(300, 40), 
                              ),
                            ),                      
                          
                          ],)

                          
                          
                        ],
                      ),
                    ),
                  ),
                  ),

   

              ],
            ),),

            
          
        ],
      ),
    )
    );
  }
}

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {

  DateTime? _selectedDate;

void _openDatePicker(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (_) {
      return Container(
        height: 650, 
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             const Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Select a reservation date',
                  style: TextStyle(fontSize: 12 ,color: Color.fromARGB(190, 0, 0, 0)),
                ),]),
                const Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Event dates 3 May - 30 June 2023',
                  style: TextStyle(fontSize: 12 ,color: Color.fromARGB(190, 0, 0, 0)),
                ),]),
            SizedBox(height: 10),
            CalendarDatePicker(
              initialDate: _selectedDate ?? DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
              onDateChanged: (newDate) {
                setState(() {
                  _selectedDate = newDate;
                });
              },
            ),
            
            Text(
              'Selected Date: ${_selectedDate?.toLocal().toString().split(' ')[0] ?? 'No date selected'}',
              style: TextStyle(fontSize: 12),
            ),
            
          ],
        ),
      );
    },
  );
}


void _openCheckout(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (_) {
      return Container(
        height: 650, 
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Pay',style: TextStyle(color: const Color.fromARGB(255, 1, 85, 4) , fontSize: 25)),
                    IconButton(onPressed: (){}, 
                    color: Color.fromARGB(255, 1, 105, 27),
                    iconSize: 30,
                    icon: Icon(Icons.cancel))
                  ],),
                  SizedBox(height: 20,),
                  Container(
                    width: 100, 
                    height: 100, 
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 2), 
                    ),
                    child: Center(
                      child: Icon(
                        Icons.check, 
                        size: 90, 
                        color: Colors.green, 
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text('Reserve Successfully !', style: TextStyle(fontSize: 25)),
                  SizedBox(height: 20,),
                  Text(
                  'Reservation for standard package has been accepted',
                  style: TextStyle(fontSize: 14 ,color: Color.fromARGB(158, 0, 0, 0)),
                ),
                SizedBox(height: 10,),
                Text(
                  'Kindly proceed and pay',
                  style: TextStyle(fontSize: 14 ,color: Color.fromARGB(158, 0, 0, 0)),
                ),
                SizedBox(height: 10,),
                
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return const PaymentPage();
                                    },
                                  ),
                                );   
                              },
                              child: Text('Proceed to Pay',style: TextStyle(color: Colors.white),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 6, 94, 9), 
                                minimumSize: Size(300, 40), 
                              ),
                            ),                      
                          
                          ],),
                        const SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return const ReservationViewPage();
                                    },
                                  ),
                                );       
                              },
                              child: const Text('View reservation',                              
                                style: TextStyle(color: Color.fromARGB(129, 5, 5, 5),decoration: TextDecoration.underline,fontSize: 16,fontWeight: FontWeight.w300),),                              
                            ),                      
                          
                          ],)

            
          ],
        ),
      );
    },
  );
}


  String? _selectedOption;

  void _handleRadioValueChange(String? value) {
    setState(() {
      _selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
            padding:  EdgeInsets.all(10.0),
            child:  Column(
              children: [
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Reservation',style: TextStyle(color: const Color.fromARGB(255, 1, 85, 4) , fontSize: 25)),
                    IconButton(onPressed: (){}, 
                    color: Color.fromARGB(255, 1, 105, 27),
                    iconSize: 30,
                    icon: Icon(Icons.cancel))
                  ],),
                  SizedBox(height: 20,),


                 const Row(children: [ 
                  SizedBox(width: 5,),                 
                  Text(
                  'Diani Neptune Beach Resort',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                 ],),
                 
                 const  Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Malipo in partnership with Aidan Safaris',
                  style: TextStyle(fontSize: 14 ,color: Color.fromARGB(158, 0, 0, 0)),
                ),]),
               const Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Venue: Diani Beach Resort',
                  style: TextStyle(fontSize: 14 ,color: Color.fromARGB(190, 0, 0, 0)),
                ),]),
                const SizedBox(height: 10,),
                const Divider(thickness: 1,),
                const SizedBox(height: 10,),
                 const Row(children: [ 
                  SizedBox(width: 5,),                 
                  Text(
                  'Your Package',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                 ],),
                 
                 const  Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Standard',
                  style: TextStyle(fontSize: 14 ,color: Color.fromARGB(192, 0, 0, 0)),
                ),]),
               const Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Up to 15 People',
                  style: TextStyle(fontSize: 17 ,color: Color.fromARGB(94, 0, 0, 0)),
                ),]),
                const SizedBox(height: 10,),
                const Divider(thickness: 1,),
                const SizedBox(height: 10,),
                 Row(                  
                  children: [ 
                  SizedBox(width: 5,),                 
                  Text(
                  'Date *',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                const SizedBox(width: 140,),
                OutlinedButton.icon(onPressed: () => _openDatePicker(context),
                icon: Icon(
                  color: Colors.orange,
                  size: 20,
                  Icons.calendar_today_outlined), 
                 label: Text('Schedule',style: TextStyle(color: Colors.orange, fontSize: 14),))
                 ],),
                 const SizedBox(height: 10,),

                 const  Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Event Validity',
                  style: TextStyle(fontSize: 14 ,color: Color.fromARGB(192, 0, 0, 0)),
                ),]),
                const Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Sun , 12 May - Sun, 12 May',
                  style: TextStyle(fontSize: 17 ,color: Color.fromARGB(94, 0, 0, 0)),
                ),]),
                 const  Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Picked Date',
                  style: TextStyle(fontSize: 14 ,color: Color.fromARGB(192, 0, 0, 0)),
                ),]),
                 const Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Not Choosen',
                  style: TextStyle(fontSize: 17 ,color: Color.fromARGB(94, 211, 145, 3)),
                ),]),
                 const SizedBox(height: 10,),
                const Divider(thickness: 1,),
                const SizedBox(height: 10,),
                 const Row(children: [ 
                  SizedBox(width: 5,),                 
                  Text(
                  'Reservation Type',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                 ],),

                  Row(
            children: [
              Radio<String>(
                value: 'Individual Reservation',
                groupValue: _selectedOption,
                onChanged: _handleRadioValueChange,
              ),
              const Text('Individual Reservation'),
            ],
          ),
          Row(
            children: [
              Radio<String>(
                value: 'Group Reservation',
                groupValue: _selectedOption,
                onChanged: _handleRadioValueChange,
              ),
              const Text('Group Reservation'),
            ],
          ),
           const SizedBox(height: 8,),
           const Divider(thickness: 1,),
           const SizedBox(height: 8,),

                 const Row(children: [ 
                  SizedBox(width: 5,),                 
                  Text(
                  'Price :',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                 ],),
                 
                 const  Row(children: [ 
                  SizedBox(width: 5,),
                 Text(
                  'Kes 14,000.00',
                  style: TextStyle(fontSize: 14 ,color: Color.fromARGB(113, 0, 0, 0)),
                ),]),
                SizedBox(height: 5,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                             ElevatedButton(
                              onPressed: () => _openCheckout(context),
                              child: Text('Proceed',style: TextStyle(color: Colors.white),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color.fromARGB(255, 6, 94, 9), 
                                minimumSize: Size(300, 40), 
                              ),
                            ),                      
                          
                          ],)



              ],
            )
      )),
    );
  }
}


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