import 'package:flutter/material.dart';
import 'package:gemographyMobileChallenge/Models/Core/RepoModel.dart';
import 'package:gemographyMobileChallenge/Provider/RepositoryProvider.dart';
import 'package:gemographyMobileChallenge/Views/Components/RepoItem.dart';
import 'package:provider/provider.dart';

class TrendingPage extends StatefulWidget {
  @override
  _TrendingPageState createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<RepoProvider>(
          builder: (context, repoProvider, child) {
            return ListView.builder(
                itemCount: repoProvider.repositoryModel.repositories.length,
                itemBuilder: (_, index) {
                  Repository repository =
                      repoProvider.repositoryModel.repositories[index];
                  return RepositoryItem(
                    repoName: repository.name,
                    description: repository.description,
                    ownerAvatar: repository.owner.avatarUrl,
                    ownerName: repository.owner.login,
                    score: repository.score,
                  );
                });
          },
        ),
      ),
    );
  }
}
