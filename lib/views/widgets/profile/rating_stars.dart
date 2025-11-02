import 'package:flutter/material.dart';

/// Rating stars widget
/// Displays star rating
class RatingStars extends StatelessWidget {
  final double rating;
  final int maxStars;
  final double size;

  const RatingStars({
    super.key,
    required this.rating,
    this.maxStars = 5,
    this.size = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(maxStars, (index) {
        if (index < rating.floor()) {
          return Icon(Icons.star, color: Colors.amber, size: size);
        } else if (index < rating) {
          return Icon(Icons.star_half, color: Colors.amber, size: size);
        } else {
          return Icon(Icons.star_border, color: Colors.amber, size: size);
        }
      }),
    );
  }
}
