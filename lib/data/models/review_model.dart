import 'package:restaurantour/data/models/user_model.dart';
import 'package:restaurantour/domain/entities/review_entity.dart';
import 'package:restaurantour/domain/entities/user_entity.dart';
import 'package:restaurantour/models/restaurant.dart';

class ReviewModel extends ReviewEntity {
  const ReviewModel({
    required String id,
    required double rating,
    required UserEntity user,
  }) : super(id: id, rating: rating, user: user);

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
        id: json['id'],
        rating: (json['rating']) * 1.0,
        user: json['rating'] != null ? UserModel.fromJson(json['user']) :
            const UserModel(
              id: '',
              imageUrl: '',
              name: '',
            ),
      );
}
