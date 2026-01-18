class PostModel {
  const PostModel({
    required this.id,
    required this.commentCount,
    required this.likeCount,
    required this.postName,
    required this.shareCount,
});

  factory PostModel.fromJson(Map<String,dynamic> json) {
    return PostModel(
    id: json ['id'] as String, 
    commentCount: json['commentCount'] as int, 
    likeCount: json ['likeCount'] as int, 
    postName: json ['postName'] as String, 
    shareCount: json ['shareCount'] as int,
    );
  }

final String id;
final String postName;
final int commentCount;
final int shareCount;
final dynamic likeCount;

}