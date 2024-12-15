// import 'Article.dart';

// class ArticlesResponse {
//   String? status;
//   int? totalResults;
//   String? message;
//   String? code;
//   List<Article>? articles;

//   ArticlesResponse({
//     this.status,
//     this.totalResults,
//     this.message,
//     this.code,
//     this.articles,
//   });

//   ArticlesResponse.fromJson(dynamic json) {
//     status = json['status'];
//     totalResults = json['totalResults'];
//     message = json['message'];
//     code = json['code'];
//     if (json['articles'] != null) {
//       articles = [];
//       json['articles'].forEach((v) {
//         articles?.add(Article.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['status'] = status;
//     map['totalResults'] = totalResults;
//     map['message'] = message;
//     map['code'] = code;
//     if (articles != null) {
//       map['articles'] = articles?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
// }
