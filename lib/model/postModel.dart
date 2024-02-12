// ignore_for_file: public_member_api_docs, sort_constructors_first
class PostModel {
  String? userEmail;
  String? post;
  DateTime? time;
  String? postId;
  List<String>? likes;
  PostModel({
    this.userEmail,
    this.post,
    this.time,
    this.postId,
    this.likes,
  });
}
