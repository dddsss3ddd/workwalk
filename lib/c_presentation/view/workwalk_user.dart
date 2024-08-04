import 'package:flutter/material.dart';

class WorkwalkUser extends StatelessWidget {
  final String profileImage;
  final String company;
  final String nickname;
  final String currentLocation;
  final String favoriteRoute;
  final String lastTravel;

  const WorkwalkUser(
      {super.key,
      required this.profileImage,
      required this.company,
      required this.nickname,
      required this.currentLocation,
      required this.favoriteRoute,
      required this.lastTravel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: Image.asset(profileImage),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('소속 : $company , 별명 : $nickname'),
              Text('현재 위치 : $currentLocation, 선호 경로 : $favoriteRoute ')
            ],
          )
        ],
      ),
    );
  }
}
