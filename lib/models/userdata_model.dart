class UserData {
  late final String id;
  late final String name;
  late final String email;

  UserData({
    required this.id,
    required this.name,
    required this.email,
  });

  
  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }

 
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }
}