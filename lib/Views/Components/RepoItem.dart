import 'dart:ui';

import 'package:flutter/material.dart';

class RepositoryItem extends StatelessWidget {
  final String repoName;
  final String description;
  final String ownerName;
  final String ownerAvatar;
  final double score;

  const RepositoryItem(
      {Key key,
      this.repoName,
      this.description,
      this.ownerName,
      this.ownerAvatar,
      this.score})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4.5,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey, width: 0.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            // what does the ?? sign do ? Well it will try to show the value we gave it which is repoName and if it is null, it will show the string we provided to it (No Name)
            repoName ?? 'No Name',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            description ?? 'No Description',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      height: 20,
                      width: 20,
                      child: Image.network(
                        '$ownerAvatar' ??
                            'https://icon-library.com/images/person-image-icon/person-image-icon-6.jpg',
                        fit: BoxFit.contain,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    ownerName,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star),
                  Text(
                    '$score',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
