import 'package:flutter/material.dart';
import 'package:workwalk/c_presentation/view/function_card/view_card_template.dart';
import 'package:workwalk/c_presentation/view/map_widget.dart';

class ViewCardCommunity extends StatelessWidget with ViewCardTemplate {
  ViewCardCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: cardHeight + 66,
            child: ListView(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/images/group1.png'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('모임명 : 빠른걷기'),
                                SizedBox(
                                  width: 180,
                                  child: Text('  진행상태 : 출발대기'),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('출발 시간 : 12:30'),
                                SizedBox(
                                  width: 180,
                                  child: Text('  리더 : 빠른랩업'),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text('참여인원 : 2'),
                                SizedBox(
                                  width: 180,
                                  child: Text('  목적지 : 유수지 2'),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/images/group2.png'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('모임명 : 천천히 걸어요'),
                                SizedBox(
                                  width: 180,
                                  child: Text('  진행상태 : 출발대기'),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('출발 시간 : 13:00'),
                                SizedBox(
                                  width: 180,
                                  child: Text('  리더 : 점심산책'),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text('참여인원 : 4'),
                                SizedBox(
                                  width: 180,
                                  child: Text('  목적지 : 코엑스 1'),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/images/group3.png'),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('모임명 : 걸으며 커피'),
                                SizedBox(
                                  width: 180,
                                  child: Text('  진행상태 : 10분 전 출발'),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('출발 시간 : 12:00'),
                                SizedBox(
                                  width: 180,
                                  child: Text('  리더 : 홍보팀고양이'),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text('  참여인원 : 6'),
                                SizedBox(
                                  width: 180,
                                  child: Text('  목적지 : 카페베네 루첸'),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
