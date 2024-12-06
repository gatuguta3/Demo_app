// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import, unnecessary_import

import 'package:demo_app/models/experiences_model.dart';
import 'package:demo_app/screens/experience_view_screen.dart';
import 'package:demo_app/services/experiences_demodata_service.dart';
import 'package:demo_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  final ExperiencesService experiencesService = ExperiencesService();

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
            
           FutureBuilder<List<Experiences>>(
                  future: experiencesService.fetchExperiences(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Center(child: Text('No experiences found.'));
                    }

                    final experiences = snapshot.data!;

                    return ListView.builder(
            itemCount: experiences.length,
            itemBuilder: (context, index) {
              final experience = experiences[index];
              return Container(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: 320,
                      
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
                                        experience.image_url,
                                        fit: BoxFit.cover, // Use BoxFit.cover to fill the container
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                             Row(
                              children: [
                                SizedBox(width: 5),
                                Text(experience.title),
                              ],
                            ),
                            const SizedBox(height: 5),
                            const Divider(thickness: 1,),
                            
                             Row(
                              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                              
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                SizedBox(width: 5),
                                Column(children: [
                                  Text('Subtitle'),
                                  Text(
                                  experience.subtitle,
                                   softWrap: true, // Ensures the text wraps when needed
                                    maxLines: null, // Allows unlimited lines (or set a specific number)
                                    overflow: TextOverflow.visible,
                                  style: TextStyle(fontSize: 11, color: Color.fromARGB(125, 0, 0, 0)),
                                ),

                                ],),
                                Column(children: [
                                  Text('Venue'),
                                  Text(
                                  experience.location,
                                  softWrap: true, // Ensures the text wraps when needed
                                    maxLines: null, // Allows unlimited lines (or set a specific number)
                                    overflow: TextOverflow.visible,
                                  style: TextStyle(fontSize: 11, color: Color.fromARGB(125, 0, 0, 0)),
                                ),

                                ],),
                                
                              ],
                            ),
                            const SizedBox(height: 5),
                            const Divider(thickness: 1,),
                             Row(
                              children: [
                                SizedBox(width: 5),
                                Text(
                                  experience.description,
                                  style: TextStyle(fontSize: 11, color: Color.fromARGB(125, 0, 0, 0)),
                                ),
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                  );
                

                   }); }),

            
          ],
        ),

    ));
  }
}

