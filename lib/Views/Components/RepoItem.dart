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
            repoName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            description ?? 'No Description',
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
                        '$ownerAvatar',
                        fit: BoxFit.contain,
                      )),
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
