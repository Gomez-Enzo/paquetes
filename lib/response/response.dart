import 'dart:convert';

import 'package:paquetes/response/person.dart';

Response responseFromJson(String str) => Response.fromJson(json.decode(str));

String responseToJson(Response data) => json.encode(data.toJson());

class Response {
  Response({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
    required this.support,
  });

  int page;
  int perPage;
  int total;
  int totalPages;
  List<Person> data;
  Support support;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Person>.from(json["data"].map((x) => Person.fromJson(x))),
        support: Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support.toJson(),
      };
}
