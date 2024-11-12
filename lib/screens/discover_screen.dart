import 'package:demo_app/screens/experience_view_screen.dart';
import 'package:demo_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


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

