import 'package:gemographyMobileChallenge/Constants/constants.dart';
import 'package:gemographyMobileChallenge/Models/Core/RepoModel.dart';
import 'package:http/http.dart' as http;

class GithubRepoApi {
  Future<RepositoryModel> getGithubRepos(int pageNumber) async {
    final response = await http.get(API_URL + '$pageNumber');
    // if the api responds with OK we parse the api response using repositoryFromJson
    if (response.statusCode == 200) {
      return repositoryModelFromJson(response.body);
    }
    // By default return a RepositoryModel Object which has an empty array in its prop repositories
    return RepositoryModel(repositories: []);
  }
}
