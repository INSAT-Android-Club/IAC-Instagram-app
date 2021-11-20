

import 'package:workshop4/Models/comment.dart';
import 'package:workshop4/Models/user.dart';

class Post {
  late User user;
  late List<String> pictures;
  late List<Comment> comments;
  late int likes;
  late int shares;

  Post({required this.user, required this.pictures, required this.comments, required this.likes, required this.shares}){
    
  }
}
