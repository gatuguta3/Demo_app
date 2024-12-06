

import 'package:demo_app/models/experiences_model.dart';

class ExperiencesService {
  
  Future<List<Experiences>> fetchExperiences() async {
    
    await Future.delayed(Duration(seconds: 1));
    
    List<Experiences> experiencesList = [
      Experiences(
        id: 1,
        image_url: 'images/beachview.jpeg',
        title: 'Beach Getaway',
        description: 'A relaxing weekend at the beach with sun and sand.',
        location: 'Malibu, California',
        occasion: 'Vacation',
        subtitle: 'with you every step of the way',
        package_activities: 'Swimming, Surfing, Beach Volleyball',
      ),
      Experiences(
        id: 2,
        image_url: 'images/man.jpeg',
        title: 'Mountain Hiking',
        description: 'An adventurous hike in the mountains.',
        location: 'Rocky Mountain National Park, Colorado',
        occasion: 'Adventure',
        subtitle: 'with you every step of the way',
        package_activities: 'Hiking, Camping, Photography',
      ),
      Experiences(
        id: 3,
        image_url: 'images/couple.jpeg',
        title: 'City Tour',
        description: 'Explore the vibrant city life and culture.',
        location: 'New York City, New York',
        occasion: 'Sightseeing',
        subtitle: 'with you every step of the way',
        package_activities: 'Museums, Restaurants, Parks',
      ),
      Experiences(
        id: 4,
        image_url: 'images/edwin.jpeg',
        title: 'Cultural Festival',
        description: 'Experience the rich culture at the annual festival.',
        location: 'New Orleans, Louisiana',
        occasion: 'Festival',
        subtitle: 'with you every step of the way',
        package_activities: 'Music, Dance, Food Tasting',
      ),
    ];

    return experiencesList;
  }
}