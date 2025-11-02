/// Review/Rating data model
class ReviewModel {
  final String id;
  final String reviewerId; // Who gave the review
  final String revieweeId; // Who received the review
  final String? jobId; // Related job
  final double rating; // 1-5 stars overall
  final double communicationRating; // 1-5 stars
  final double paymentRating; // 1-5 stars
  final double workEnvironmentRating; // 1-5 stars
  final double overallExperienceRating; // 1-5 stars
  final double reliabilityRating; // 1-5 stars (for students)
  final double qualityRating; // 1-5 stars (for students)
  final double professionalismRating; // 1-5 stars
  final String? comment;
  final List<String>?
  tags; // e.g., "punctual", "professional", "poor_communication"
  final bool isVisible;
  final bool isReported;
  final DateTime createdAt;
  final DateTime? updatedAt;

  ReviewModel({
    required this.id,
    required this.reviewerId,
    required this.revieweeId,
    this.jobId,
    required this.rating,
    required this.communicationRating,
    required this.paymentRating,
    required this.workEnvironmentRating,
    required this.overallExperienceRating,
    required this.reliabilityRating,
    required this.qualityRating,
    required this.professionalismRating,
    this.comment,
    this.tags,
    this.isVisible = true,
    this.isReported = false,
    required this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'reviewerId': reviewerId,
      'revieweeId': revieweeId,
      'jobId': jobId,
      'rating': rating,
      'communicationRating': communicationRating,
      'paymentRating': paymentRating,
      'workEnvironmentRating': workEnvironmentRating,
      'overallExperienceRating': overallExperienceRating,
      'reliabilityRating': reliabilityRating,
      'qualityRating': qualityRating,
      'professionalismRating': professionalismRating,
      'comment': comment,
      'tags': tags,
      'isVisible': isVisible,
      'isReported': isReported,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      id: json['id'],
      reviewerId: json['reviewerId'],
      revieweeId: json['revieweeId'],
      jobId: json['jobId'],
      rating: (json['rating'] ?? 0.0).toDouble(),
      communicationRating: (json['communicationRating'] ?? 0.0).toDouble(),
      paymentRating: (json['paymentRating'] ?? 0.0).toDouble(),
      workEnvironmentRating: (json['workEnvironmentRating'] ?? 0.0).toDouble(),
      overallExperienceRating: (json['overallExperienceRating'] ?? 0.0)
          .toDouble(),
      reliabilityRating: (json['reliabilityRating'] ?? 0.0).toDouble(),
      qualityRating: (json['qualityRating'] ?? 0.0).toDouble(),
      professionalismRating: (json['professionalismRating'] ?? 0.0).toDouble(),
      comment: json['comment'],
      tags: json['tags'] != null ? List<String>.from(json['tags']) : null,
      isVisible: json['isVisible'] ?? true,
      isReported: json['isReported'] ?? false,
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,
    );
  }
}
