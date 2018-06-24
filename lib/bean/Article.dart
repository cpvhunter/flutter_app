import 'package:json_annotation/json_annotation.dart';

part 'Article.g.dart';

@JsonSerializable(nullable: false)
class Article extends Object with _$ArticleSerializerMixin {
  final String postid;
  final bool hasCover;
  final int hasHead;
  final int replyCount;
  final int hasImg;
  final String digest;
  final bool hasIcon;
  final String docid;
  final String title;
  final int order;
  final int priority;
  final String lmodify;
  final String boardid;
  final String photosetID;
  final String template;
  final int votecount;
  final String skipID;
  final String alias;
  final String skipType;
  final String cid;
  final int hasAD;
  final String imgsrc;
  final String tname;
  final String ename;
  final String ptime;
  final String source;

  final String name;
  final String email;

  Article(
      this.postid,
      this.hasCover,
      this.hasHead,
      this.replyCount,
      this.hasImg,
      this.digest,
      this.hasIcon,
      this.docid,
      this.title,
      this.order,
      this.priority,
      this.lmodify,
      this.boardid,
      this.photosetID,
      this.template,
      this.votecount,
      this.skipID,
      this.alias,
      this.skipType,
      this.cid,
      this.hasAD,
      this.imgsrc,
      this.tname,
      this.ename,
      this.ptime,
      this.source,
      this.name,
      this.email);

  factory Article.fromJson(Map<String, dynamic> json) {
    return _$ArticleFromJson(json);
  }
}
