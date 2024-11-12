import 'package:demo_app/screens/reservation_page_screen.dart';
import 'package:demo_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


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


