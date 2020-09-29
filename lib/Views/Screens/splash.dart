import 'package:flutter/material.dart';
import 'package:gemographyMobileChallenge/Models/Services/repositories.dart';
import 'package:gemographyMobileChallenge/Views/Screens/mainPage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Repositories repositories = Repositories();

  @override
  void initState() {
    super.initState();
    /*in this step we need to call moveToNextPage method and this should be executed once the data in available, to do that we need to call the api and also use the context to navigate to the next screen.
    and since we are calling it in the initState method we still do no have access to the context, we only can use the context in the vuild method of our stateful widget, so we use WidgetsBinding.instance.addPostFrameCallback(callBack) which will execute the callBack function after the build method of our stateful widget(in this case our callBack is apiCall which will call the api and then navigate to the new page), that way we are sure that we have access to the context and can nabigate to the new page without problems 
     */
    WidgetsBinding.instance.addPostFrameCallback(apiCall);
  }

  moveToNextPage() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => MainPage()));
  }

  apiCall(_) async{
    await repositories.fetchRepos(context);
    moveToNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
