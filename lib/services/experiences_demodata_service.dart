

import 'package:demo_app/models/experiences_model.dart';

class ExperiencesService {
  
  Future<List<Experiences>> fetchExperiences() async {
    
    await Future.delayed(Duration(seconds: 1));
    
    List<Experiences> experiencesList = [
      Experiences(
        image_url: 'images/beachview.jpeg',
        title: 'Beach Getaway',
        description: 'A relaxing weekend at the beach with sun and sand.',
        location: 'Malibu, California',
        occasion: 'Vacation',
        package_activities: 'Swimming, Surfing, Beach Volleyball',
      ),
      Experiences(
        image_url: 'images/man.jpeg',
        title: 'Mountain Hiking',
        description: 'An adventurous hike in the mountains.',
        location: 'Rocky Mountain National Park, Colorado',
        occasion: 'Adventure',
        package_activities: 'Hiking, Camping, Photography',
      ),
      Experiences(
        image_url: 'images/couple.jpeg',
        title: 'City Tour',
        description: 'Explore the vibrant city life and culture.',
        location: 'New York City, New York',
        occasion: 'Sightseeing',
        package_activities: 'Museums, Restaurants, Parks',
      ),
      Experiences(
        image_url: 'images/edwin.jpeg',
        title: 'Cultural Festival',
        description: 'Experience the rich culture at the annual festival.',
        location: 'New Orleans, Louisiana',
        occasion: 'Festival',
        package_activities: 'Music, Dance, Food Tasting',
      ),
    ];

    return experiencesList;
  }
}