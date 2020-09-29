import 'package:flutter/cupertino.dart';
import 'package:gemographyMobileChallenge/Provider/RepositoryProvider.dart';
import 'package:gemographyMobileChallenge/main.dart';
import 'package:provider/provider.dart';

class Helpers {
  Future<void> fetchRepos(BuildContext context, FetchType type) async {
    // in this phase we don't need to listen to the provider we just want to put data on it, that's why we will set the listen prop to false
    RepoProvider repoProvider = Provider.of(context, listen: false);
    await repoProvider.fetchRepositories(type);
  }

  bool isNumberBetween(int min, int max, int value) {
    return value > min && value < max;
  }

  String convertDateToDuration(String updatedAt) {
    DateTime updatedDate = DateTime.parse(updatedAt);
    int dateDiff = DateTime.now().difference(updatedDate).inHours;
    if (isNumberBetween(24, 168, dateDiff)) {
      return "${(dateDiff / 24).round()} d";
    } else if (isNumberBetween(168, 730, dateDiff)) {
      return "${(dateDiff / 168).round()} wk";
    } else if (isNumberBetween(730, 8760, dateDiff)) {
      return "${(dateDiff / 730).round()} mo";
    } else if (dateDiff > 8760) {
      return "${(dateDiff / 8760).round()} y";
    } else {
      return "${dateDiff.round()} h";
    }
  }
}
