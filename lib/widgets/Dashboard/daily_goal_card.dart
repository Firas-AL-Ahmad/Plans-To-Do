import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytest/constants/back_constants.dart';
import 'package:mytest/controllers/user_task_controller.dart';

import '../../Values/values.dart';
import '../../constants/app_constans.dart';
import '../../services/auth_service.dart';

class DailyGoalCard extends StatefulWidget {
  DailyGoalCard(
      {Key? key,
      required this.message,
      required this.allStream,
      required this.forStatusStram})
      : super(key: key);
  String message;
  Stream allStream;
  Stream forStatusStram;
  @override
  State<DailyGoalCard> createState() => _DailyGoalCardState();
}

class _DailyGoalCardState extends State<DailyGoalCard> {
  @override
  Widget build(BuildContext context) {
    UserTaskController userTaskController = Get.put(UserTaskController());
    DateTime nowDate = DateTime.now();
    int first = 0;
    int second = 0;
    double percent = 0.0;
    DateTime todayDate = DateTime(
      nowDate.year,
      nowDate.month,
      nowDate.day,
      0,
      0,
      0,
    );
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      height: 220,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          color: AppColors.primaryBackgroundColor),
      child: StreamBuilder(
        stream: userTaskController.getUserTasksBetweenTowTimesStream(
            firstDate: todayDate,
            secondDate: todayDate.add(
              const Duration(days: 1),
            ),
            userId: AuthService.instance.firebaseAuth.currentUser!.uid),
        builder: (context, allTasks) {
          if (allTasks.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (allTasks.hasError) {
            return Text('Error: ${allTasks.error}');
          }
          if (allTasks.hasData) {
            return StreamBuilder(
              stream:
                  userTaskController.getUserTasksStartInADayForAStatusStream(
                      date: DateTime.now(),
                      userId:
                          AuthService.instance.firebaseAuth.currentUser!.uid,
                      status: statusDone),
              builder: (context, doneTasks) {
                if (doneTasks.hasData) {
                  first = doneTasks.data!.size;
                  second = allTasks.data!.size;
                  percent = (second != 0 ? ((first / second) * 100) : 0);
                  percent = percent / 100;
                  return dailygoal(
                    first: first,
                    second: second,
                    percent: percent,
                    message: widget.message,
                  );
                }
                return dailygoal(
                  first: first,
                  second: second,
                  percent: percent,
                  message: widget.message,
                );
              },
            );
          }
          return dailygoal(
            first: first,
            second: second,
            percent: percent,
            message: widget.message,
          );
        },
      ),
    );
  }
}

class dailygoal extends StatelessWidget {
  dailygoal({
    super.key,
    required this.first,
    required this.second,
    required this.percent,
    required this.message,
  });

  final int first;
  final int second;
  final double percent;
  String message;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //left side
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppConstants.daily_goal_key.tr,
                style: GoogleFonts.lato(
                    color: HexColor.fromHex("616575"),
                    fontSize: 17,
                    fontWeight: FontWeight.w500)),
            AppSpaces.verticalSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: 50,
                    height: 25,
                    decoration: BoxDecoration(
                        color: HexColor.fromHex("8ACA72"),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0))),
                    child: Center(
                      child: Text('$first/$second',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 16,
                          )),
                    )),
                AppSpaces.horizontalSpace10,
                Text('Tasks',
                    style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            AppSpaces.verticalSpace10,
            Text("you marked  $first $second $message  are Done  ",
                style: GoogleFonts.lato(
                    color: HexColor.fromHex("616575"),
                    fontSize: 17,
                    fontWeight: FontWeight.w500)),
            AppSpaces.verticalSpace20,
            SizedBox(
              width: 120,
              height: 40,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          HexColor.fromHex("C25FFF")),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(
                                  color: HexColor.fromHex("C25FFF"))))),
                  child: Text(AppConstants.all_task_key.tr,
                      style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
            )
          ],
        ),
        Stack(
          children: [
            Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 8, color: HexColor.fromHex("434552"))),
                child: Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: const ClipOval(
                      child: Image(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          "assets/small-logo.png",
                        ),
                      ),
                    ),
                  ),
                )),
            Positioned(
              top: 5,
              left: 5,
              child: RotatedBox(
                quarterTurns: 4,
                child: TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0.0, end: 0.80),
                  duration: const Duration(milliseconds: 1000),
                  builder: (context, value, _) => SizedBox(
                    width: 90,
                    height: 90,
                    child: CircularProgressIndicator(
                        strokeWidth: 8,
                        value: percent,
                        color: HexColor.fromHex("8FFFCF")),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
