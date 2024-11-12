import 'package:demo_app/models/userdata_model.dart';
import 'package:demo_app/services/userdata_demo_services.dart';
import 'package:demo_app/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final UserDataService userDataService = UserDataService();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<UserData>>(
        future: userDataService.fetchUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No users found.'));
          }

          final users = snapshot.data!;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return ListTile(
                title: Text(user.name),
                subtitle: Text(user.email),
              );
            },
          );
        },
      ),
    );
  }
}

