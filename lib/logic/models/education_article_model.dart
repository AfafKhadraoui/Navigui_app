/// Educational article/content data model
class EducationArticleModel {
  final String id;
  final String title;
  final String content;
  final String category; // 'resume', 'interview', 'application', etc.
  final String? imageUrl;
  final String? author;
  final DateTime publishedAt;
  final int readTime; // in minutes

  EducationArticleModel({
    required this.id,
    required this.title,
    required this.content,
    required this.category,
    this.imageUrl,
    this.author,
    required this.publishedAt,
    this.readTime = 5,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'category': category,
      'imageUrl': imageUrl,
      'author': author,
      'publishedAt': publishedAt.toIso8601String(),
      'readTime': readTime,
    };
  }

  factory EducationArticleModel.fromJson(Map<String, dynamic> json) {
    return EducationArticleModel(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      category: json['category'],
      imageUrl: json['imageUrl'],
      author: json['author'],
      publishedAt: DateTime.parse(json['publishedAt']),
      readTime: json['readTime'] ?? 5,
    );
  }
}
