import 'package:demo_app/screens/payment_page_screen.dart';
import 'package:demo_app/screens/reservation_view_page_screen.dart';
import 'package:demo_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


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


