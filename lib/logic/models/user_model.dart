/// Base user model
/// Common properties for all user types
class UserModel {
  final String id;
  final String email;
  final String name;
  final String phoneNumber;
  final String location; // City/area
  final String? profilePicture;
  final String accountType; // 'student' or 'employer'
  final DateTime createdAt;
  final DateTime? updatedAt;

  UserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.phoneNumber,
    required this.location,
    this.profilePicture,
    required this.accountType,
    required this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'phoneNumber': phoneNumber,
      'location': location,
      'profilePicture': profilePicture,
      'accountType': accountType,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt?.toIso8601String(),
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      name: json['name'],
      phoneNumber: json['phoneNumber'],
      location: json['location'],
      profilePicture: json['profilePicture'],
      accountType: json['accountType'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: json['updatedAt'] != null
          ? DateTime.parse(json['updatedAt'])
          : null,
    );
  }
}
