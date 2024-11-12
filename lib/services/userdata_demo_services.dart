import 'dart:async';
import 'package:demo_app/models/userdata_model.dart';
 

class UserDataService {
  
  final List<UserData> _demoUsers = [
    UserData(id: '1', name: 'John Doe', email: 'john@example.com'), 
    UserData(id: '2', name: 'John Doe', email: 'john@example.com'), 
    UserData(id: '1', name: 'John Doe', email: 'john@example.com'),    
  ];

  
  Future<List<UserData>> fetchUsers() async {   
    
    return _demoUsers;
  }

  
  Future<UserData> createUser (UserData user) async {
    await Future.delayed(Duration(seconds: 1));
    _demoUsers.add(user);
    return user;
  }
}