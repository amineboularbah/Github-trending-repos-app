import 'dart:convert';

RepositoryModel repositoryFromJson(String str) =>
    RepositoryModel.fromJson(json.decode(str));

String repositoryToJson(RepositoryModel data) => json.encode(data.toJson());

class RepositoryModel {
  RepositoryModel({
    this.repositories,
  });

  List<Repository> repositories;

  factory RepositoryModel.fromJson(Map<String, dynamic> json) =>
      RepositoryModel(
        repositories: List<Repository>.from(
            json["items"].map((x) => Repository.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(repositories.map((x) => x.toJson())),
      };
}

class Repository {
  Repository({
    this.name,
    this.owner,
    this.description,
    this.score,
  });

  String name;
  Owner owner;
  String description;
  double score;

  factory Repository.fromJson(Map<String, dynamic> json) => Repository(
        name: json["name"],
        owner: Owner.fromJson(json["owner"]),
        description: json["description"],
        score: json["score"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "owner": owner.toJson(),
        "description": description,
        "score": score,
      };
}

class Owner {
  Owner({
    this.login,
    this.avatarUrl,
  });

  String login;
  String avatarUrl;

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        login: json["login"],
        avatarUrl: json["avatar_url"],
      );

  Map<String, dynamic> toJson() => {
        "login": login,
        "avatar_url": avatarUrl,
      };
}
