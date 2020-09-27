import 'package:gemographyMobileChallenge/Models/Core/RepoModel.dart';
import 'package:http/http.dart' as http;

class GithubRepoApi {
  String endpoint =
      'https://api.github.com/search/repositories?q=created:%3E2017-10-22&sort=stars&order=desc';

  Future<RepositoryModel> getGithubRepos() async {
    final response = await http.get(endpoint);
    // if the api responds with OK we parse the api response using repositoryFromJson
    if (response.statusCode == 200) {
      return repositoryFromJson(response.body);
    }
    // By default return a RepositoryModel Object which has an empty array in its prop repositories
    return RepositoryModel(repositories: []);
  }
}
