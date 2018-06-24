import '../bean/Article.dart' as ArticleAs;

class NewsBean {
  final List<ArticleAs.Article> T1348647909107;

  NewsBean(this.T1348647909107);

  NewsBean.fromJson(Map<String, dynamic> json)
      : T1348647909107 = json['T1348647909107'];

  Map<String, dynamic> toJson() => {
        'T1348647909107': T1348647909107,
      };
}
