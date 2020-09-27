import 'dart:ui';

import 'package:flutter/material.dart';

class RepositoryItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(25, 15, 20, 25),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Repo Name',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'Repo Description',
            style: TextStyle(fontSize: 18),
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
                        'https://avatars0.githubusercontent.com/u/40356278?v=4',
                        fit: BoxFit.contain,
                      )),
                  Text(
                    'Repo Owner Name',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.star),
                  Text(
                    'Repo stars',
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
