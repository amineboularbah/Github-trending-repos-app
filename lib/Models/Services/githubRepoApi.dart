import 'package:gemographyMobileChallenge/Models/Core/RepoModel.dart';
import 'package:http/http.dart' as http;

class GithubRepoApi {
  String endpoint =
      'https://api.github.com/search/repositories?q=created:%3E2017-10-22&sort=stars&order=desc';

  Future<RepositoryModel> getGithubRepos() async {
    final response = await http.get(endpoint);
    if (response.statusCode == 200) {
      print(response.body);
      return repositoryFromJson(response.body);
    }
    return RepositoryModel(repositories: []);
  }
}
