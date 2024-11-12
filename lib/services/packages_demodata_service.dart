import 'package:demo_app/models/packages_model.dart';

class PackagesService{
  Future<List<Packages>> fetchPackages() async {
    
    await Future.delayed(Duration(seconds: 2));

    List<Packages> packagelist =[
      Packages(
        type: 'Standard',
         price_per_person: '4500',
          max_people: '16',
           status: 'Active'
           ),
      Packages(
        type: 'Premium',
        price_per_person: '6500',
        max_people: '20',
        status: 'Inactive'
       )
    ];
    return packagelist;
  }
}