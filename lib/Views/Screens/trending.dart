import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gemographyMobileChallenge/Models/Core/RepoModel.dart';
import 'package:gemographyMobileChallenge/Models/Helpers/Helper.dart';
import 'package:gemographyMobileChallenge/Provider/RepositoryProvider.dart';
import 'package:gemographyMobileChallenge/Views/Components/RepoItem.dart';
import 'package:gemographyMobileChallenge/main.dart';
import 'package:provider/provider.dart';

class TrendingPage extends StatefulWidget {
  @override
  _TrendingPageState createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  ScrollController scrollController = ScrollController();
  Helpers helper = Helpers();
  List<Repository> reposList = [];
  GlobalKey<RefreshIndicatorState> refreshKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        fetchNewRepos();
      }
    });
  }

  Future<void> refreshList() async {
    refreshKey.currentState?.show(atTop: true);
    await helper.fetchRepos(context, FetchType.refresh);
    setState(() {
      reposList.clear();
    });
  }

  void fetchNewRepos() async {
    await helper.fetchRepos(context, FetchType.nextPage);
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<RepoProvider>(
          builder: (context, repoProvider, child) {
            reposList = [
              ...reposList,
              ...repoProvider.repositoryModel.repositories
            ];
            return RefreshIndicator(
                color: Colors.black,
                key: refreshKey,
                onRefresh: refreshList,
                child: reposList.isEmpty
                    ? Center(
                        child: Text(
                          'There was an error loading data, please if check your are connected to the internet ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).accentColor),
                        ),
                      )
                    : buildList());
          },
        ),
      ),
    );
  }

  ListView buildList() {
    return ListView.builder(
        controller: scrollController,
        itemCount: reposList.length + 1,
        itemBuilder: (_, index) {
          if (index == reposList.length) {
            return Container(
              height: 100,
              child: SpinKitWave(
                size: 30,
                color: Theme.of(context).accentColor,
              ),
            );
          }
          Repository repository = reposList[index];
          return RepositoryItem(
            repoName: repository.name,
            fullName: repository.fullName,
            description: repository.description,
            ownerAvatar: repository.owner.avatarUrl,
            ownerName: repository.owner.login,
            starsNumber: repository.stargazersCount,
            updatedAt: repository.updatedAt,
            language: repository.language,
          );
        });
  }
}
