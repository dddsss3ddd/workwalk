import 'package:flutter/material.dart';
import 'package:workwalk/c_presentation/view/function_card/view_card_template.dart';
import 'package:workwalk/c_presentation/view/workwalk_user.dart';

class ViewCardSearch extends StatelessWidget with ViewCardTemplate {
  ViewCardSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const String defaultImagePath = 'assets/images/';

    return Column(
      children: [
        const TextField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromRGBO(0x95, 0xD1, 0xE3, 1)),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(0xF3, 0x81, 0x81, 1))),
              hintText: 'search place, theme, user or party name'),
          autofocus: true,
        ),
        Row(
          children: [
            Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: cardHeight,
                child: const Column(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.location_city_rounded,
                          size: 20,
                          color: Color.fromRGBO(0x95, 0xD1, 0xE3, 1),
                        ),
                        Text(
                          'Place',
                          style: TextStyle(
                              color: Color.fromRGBO(0x95, 0xD1, 0xE3, 1)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Icon(Icons.person,
                            size: 20,
                            color: Color.fromRGBO(0xF3, 0x81, 0x81, 1)),
                        Text(
                          'User',
                          style: TextStyle(
                              color: Color.fromRGBO(0xF3, 0x81, 0x81, 1)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Icon(Icons.nature_rounded,
                            size: 20,
                            color: Color.fromRGBO(0x95, 0xD1, 0xE3, 1)),
                        Text(
                          'Theme',
                          style: TextStyle(
                              color: Color.fromRGBO(0x95, 0xD1, 0xE3, 1)),
                        ),
                      ],
                    )
                  ],
                )),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: cardHeight,
                child: const VerticalDivider(
                  color: Colors.black12,
                ),
              ),
            ),
            const SingleChildScrollView(
              clipBehavior: Clip.hardEdge,
              child: Wrap(
                direction: Axis.vertical,
                spacing: 5,
                children: [
                  WorkwalkUser(
                    profileImage: '${defaultImagePath}user1.png',
                    company: '오토에버',
                    nickname: '빠른랩업',
                    currentLocation: '삼성사옥',
                    favoriteRoute: '유수지 1',
                    lastTravel: '한강 산책 2',
                  ),
                  WorkwalkUser(
                    profileImage: '${defaultImagePath}user2.png',
                    company: '오토에버',
                    nickname: '점심산책',
                    currentLocation: '삼성사옥',
                    favoriteRoute: '코엑스 1',
                    lastTravel: '코엑스 1',
                  ),
                  WorkwalkUser(
                    profileImage: '${defaultImagePath}user3.png',
                    company: '오토에버',
                    nickname: '홍보팀고양이',
                    currentLocation: '루첸타워',
                    favoriteRoute: '역삼역 달동네',
                    lastTravel: '코엑스 2',
                  ),
                  WorkwalkUser(
                    profileImage: '${defaultImagePath}user4.png',
                    company: '위매프',
                    nickname: '나는누구',
                    currentLocation: '본사',
                    favoriteRoute: '코엑스 2',
                    lastTravel: '없음',
                  ),
                  WorkwalkUser(
                    profileImage: '${defaultImagePath}user5.png',
                    company: '크라이버거',
                    nickname: '요리사',
                    currentLocation: '삼성역점',
                    favoriteRoute: '유수지 2',
                    lastTravel: '유수지 2',
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child: ListView(
            //     padding: const EdgeInsets.all(8),
            //     children: const [
            //       WorkwalkUser(
            //         profileImage: '${defaultImagePath}user1',
            //         company: '오토에버',
            //         nickname: '빠른랩업',
            //         currentLocation: '삼성사옥',
            //         favoriteRoute: '유수지 공원 1',
            //         lastTravel: '한강 산책로 2',
            //       ),
            //       WorkwalkUser(
            //         profileImage: '${defaultImagePath}user1',
            //         company: '오토에버',
            //         nickname: '빠른랩업',
            //         currentLocation: '삼성사옥',
            //         favoriteRoute: '유수지 공원 1',
            //         lastTravel: '한강 산책로 2',
            //       ),
            //       WorkwalkUser(
            //         profileImage: '${defaultImagePath}user1',
            //         company: '오토에버',
            //         nickname: '빠른랩업',
            //         currentLocation: '삼성사옥',
            //         favoriteRoute: '유수지 공원 1',
            //         lastTravel: '한강 산책로 2',
            //       ),
            //       WorkwalkUser(
            //         profileImage: '${defaultImagePath}user1',
            //         company: '오토에버',
            //         nickname: '빠른랩업',
            //         currentLocation: '삼성사옥',
            //         favoriteRoute: '유수지 공원 1',
            //         lastTravel: '한강 산책로 2',
            //       ),
            //       WorkwalkUser(
            //         profileImage: '${defaultImagePath}user1',
            //         company: '오토에버',
            //         nickname: '빠른랩업',
            //         currentLocation: '삼성사옥',
            //         favoriteRoute: '유수지 공원 1',
            //         lastTravel: '한강 산책로 2',
            //       ),
            //     ],
            //   ),
            // )
          ],
        )
      ],
    );
  }
}
