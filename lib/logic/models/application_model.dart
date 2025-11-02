/// Application data model
class ApplicationModel {
  final String id;
  final String jobId;
  final String studentId;
  final String? coverMessage;
  final String? cvUrl;
  final String? portfolioUrl;
  final bool availabilityConfirmation;
  final String status; // 'pending', 'accepted', 'rejected', 'withdrawn'
  final bool isWithdrawn;
  final DateTime appliedAt;
  final DateTime? respondedAt;
  final String? employerNote;

  ApplicationModel({
    required this.id,
    required this.jobId,
    required this.studentId,
    this.coverMessage,
    this.cvUrl,
    this.portfolioUrl,
    this.availabilityConfirmation = true,
    this.status = 'pending',
    this.isWithdrawn = false,
    required this.appliedAt,
    this.respondedAt,
    this.employerNote,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'jobId': jobId,
      'studentId': studentId,
      'coverMessage': coverMessage,
      'cvUrl': cvUrl,
      'portfolioUrl': portfolioUrl,
      'availabilityConfirmation': availabilityConfirmation,
      'status': status,
      'isWithdrawn': isWithdrawn,
      'appliedAt': appliedAt.toIso8601String(),
      'respondedAt': respondedAt?.toIso8601String(),
      'employerNote': employerNote,
    };
  }

  factory ApplicationModel.fromJson(Map<String, dynamic> json) {
    return ApplicationModel(
      id: json['id'],
      jobId: json['jobId'],
      studentId: json['studentId'],
      coverMessage: json['coverMessage'],
      cvUrl: json['cvUrl'],
      portfolioUrl: json['portfolioUrl'],
      availabilityConfirmation: json['availabilityConfirmation'] ?? true,
      status: json['status'] ?? 'pending',
      isWithdrawn: json['isWithdrawn'] ?? false,
      appliedAt: DateTime.parse(json['appliedAt']),
      respondedAt: json['respondedAt'] != null
          ? DateTime.parse(json['respondedAt'])
          : null,
      employerNote: json['employerNote'],
    );
  }
}
