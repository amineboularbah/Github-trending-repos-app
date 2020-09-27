import 'package:flutter/cupertino.dart';
import 'package:gemographyMobileChallenge/Provider/RepositoryProvider.dart';
import 'package:provider/provider.dart';

class Repositories {
  Future<void> fetchRepos(BuildContext context) async {
    // in this phase we don't need to listen to the provider we just want to put data on it, that's why we will set the listen prop to false
    RepoProvider repoProvider = Provider.of(context, listen: false);
    await repoProvider.fetchRepositories();
  }
}
