import 'dart:convert';

RepositoryModel repositoryModelFromJson(String str) =>
    RepositoryModel.fromJson(json.decode(str));

String repositoryModelToJson(RepositoryModel data) =>
    json.encode(data.toJson());

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
    this.fullName,
    this.owner,
    this.description,
    this.stargazersCount,
    this.updatedAt,
    this.language,
  });

  String name;
  String fullName;
  Owner owner;
  dynamic description;
  int stargazersCount;
  String updatedAt;
  String language;

  factory Repository.fromJson(Map<String, dynamic> json) => Repository(
        name: json["name"],
        fullName: json["full_name"],
        owner: Owner.fromJson(json["owner"]),
        description: json["description"],
        stargazersCount: json["stargazers_count"],
        updatedAt: json["updated_at"],
        language: json["language"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "full_name": fullName,
        "owner": owner.toJson(),
        "description": description,
        "stargazers_count": stargazersCount,
        "language": language,
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
