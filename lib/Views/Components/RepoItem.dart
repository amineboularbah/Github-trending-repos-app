import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gemographyMobileChallenge/Constants/constants.dart';
import 'package:gemographyMobileChallenge/Models/Helpers/Helper.dart';
import 'package:hexcolor/hexcolor.dart';

class RepositoryItem extends StatelessWidget {
  final String repoName;
  final String fullName;
  final String description;
  final String ownerName;
  final String ownerAvatar;
  final String updatedAt;
  final int starsNumber;
  final String language;

  const RepositoryItem(
      {Key key,
      this.repoName,
      this.description,
      this.ownerName,
      this.ownerAvatar,
      this.starsNumber,
      this.updatedAt,
      this.fullName,
      this.language})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    String latestUpdateTime = Helpers().convertDateToDuration(updatedAt);
    return Container(
        height: MediaQuery.of(context).size.height / 3,
        padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.05),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: CachedNetworkImage(
                      height: 40,
                      width: 40,
                      imageUrl: '$ownerAvatar' ??
                          'https://icon-library.com/images/person-image-icon/person-image-icon-6.jpg',
                      placeholder: (context, url) => SpinKitDoubleBounce(
                        color: Theme.of(context).accentColor,
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  AutoSizeText(
                    ownerName,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 10,
              child: AutoSizeText(
                '$latestUpdateTime',
                style: TextStyle(
                    color: Theme.of(context).accentColor.withOpacity(0.5),
                    fontSize: 16),
              ),
            ),
            Positioned(
              top: 45,
              child: SizedBox(
                height: 1,
                width: MediaQuery.of(context).size.width,
                child: Divider(
                  thickness: 1,
                  color: Theme.of(context).canvasColor.withOpacity(0.5),
                ),
              ),
            ),
            Positioned(
                top: 55,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          // what does the ?? sign do ? Well it will try to show the value we gave it which is repoName and if it is null, it will show the string we provided to it (No Name)
                          fullName ?? 'No FullName',
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        AutoSizeText(
                          description ?? 'No Description',
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context)
                                  .accentColor
                                  .withOpacity(0.5),
                              fontSize: 16),
                        ),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width / 1.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 12,
                                      width: 12,
                                      margin: EdgeInsets.fromLTRB(0, 10, 5, 10),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: languageColor
                                                  .containsKey(language)
                                              ? Hexcolor(
                                                  languageColor[language])
                                              : Theme.of(context).primaryColor),
                                    ),
                                    SizedBox(
                                      width: 80,
                                      child: AutoSizeText(
                                          language ?? 'No Language',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .accentColor
                                                  .withOpacity(0.4),
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold)),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[700],
                                    ),
                                    AutoSizeText('$starsNumber' ?? '0',
                                        style: TextStyle(
                                            color: Theme.of(context)
                                                .accentColor
                                                .withOpacity(0.4),
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.yellow[700].withOpacity(0.1)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[700],
                                    ),
                                    AutoSizeText(
                                      'Star',
                                      style: TextStyle(
                                          color: Colors.yellow[700],
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ));
  }
}
