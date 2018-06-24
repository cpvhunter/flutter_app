// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Article.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => new Article(
    json['postid'] as String,
    json['hasCover'] as bool,
    json['hasHead'] as int,
    json['replyCount'] as int,
    json['hasImg'] as int,
    json['digest'] as String,
    json['hasIcon'] as bool,
    json['docid'] as String,
    json['title'] as String,
    json['order'] as int,
    json['priority'] as int,
    json['lmodify'] as String,
    json['boardid'] as String,
    json['photosetID'] as String,
    json['template'] as String,
    json['votecount'] as int,
    json['skipID'] as String,
    json['alias'] as String,
    json['skipType'] as String,
    json['cid'] as String,
    json['hasAD'] as int,
    json['imgsrc'] as String,
    json['tname'] as String,
    json['ename'] as String,
    json['ptime'] as String,
    json['source'] as String,
    json['name'] as String,
    json['email'] as String);

abstract class _$ArticleSerializerMixin {
  String get postid;
  bool get hasCover;
  int get hasHead;
  int get replyCount;
  int get hasImg;
  String get digest;
  bool get hasIcon;
  String get docid;
  String get title;
  int get order;
  int get priority;
  String get lmodify;
  String get boardid;
  String get photosetID;
  String get template;
  int get votecount;
  String get skipID;
  String get alias;
  String get skipType;
  String get cid;
  int get hasAD;
  String get imgsrc;
  String get tname;
  String get ename;
  String get ptime;
  String get source;
  String get name;
  String get email;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'postid': postid,
        'hasCover': hasCover,
        'hasHead': hasHead,
        'replyCount': replyCount,
        'hasImg': hasImg,
        'digest': digest,
        'hasIcon': hasIcon,
        'docid': docid,
        'title': title,
        'order': order,
        'priority': priority,
        'lmodify': lmodify,
        'boardid': boardid,
        'photosetID': photosetID,
        'template': template,
        'votecount': votecount,
        'skipID': skipID,
        'alias': alias,
        'skipType': skipType,
        'cid': cid,
        'hasAD': hasAD,
        'imgsrc': imgsrc,
        'tname': tname,
        'ename': ename,
        'ptime': ptime,
        'source': source,
        'name': name,
        'email': email
      };
}
