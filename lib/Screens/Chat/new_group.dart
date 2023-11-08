import 'package:flutter/material.dart';

import '../../Data/data_model.dart';
import '../../Values/values.dart';
import '../../widgets/Buttons/primary_buttons.dart';
import '../../widgets/DarkBackground/darkRadialBackground.dart';
import '../../widgets/Forms/search_box.dart';
import '../../widgets/Navigation/app_header.dart';
import '../../widgets/employee_card.dart';

class NewGroupScreen extends StatelessWidget {
  const NewGroupScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    final dynamic data = AppData.employeeData;
    List<Widget> cards = List.generate(
        AppData.employeeData.length,
        (index) => EmployeeCard(
              activated: data[index]['activated'],
              employeeImage: data[index]['employeeImage'],
              employeeName: data[index]['employeeName'],
              backgroundColor: data[index]["color"],
              employeePosition: data[index]["employeePosition"],
            ));
    return Scaffold(
        body: Stack(children: [
      DarkRadialBackground(
        color: HexColor.fromHex("#181a1f"),
        position: "topLeft",
      ),
      Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(children: [
            const Padding(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: TaskezAppHeader(
                title: "New Group",
                widget: AppPrimaryButton(
                  buttonHeight: 40,
                  buttonWidth: 70,
                  buttonText: "Next",
                ),
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
                flex: 1,
                child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecorationStyles.fadingGlory,
                    child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: DecoratedBox(
                            decoration: BoxDecorationStyles.fadingInnerDecor,
                            child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SearchBox(
                                       
                                        placeholder: 'Search',
                                        controller: searchController,
                                      ),
                                      AppSpaces.verticalSpace20,
                                      Expanded(
                                          child: MediaQuery.removePadding(
                                        context: context,
                                        removeTop: true,
                                        child: ListView(children: [...cards]),
                                      ))
                                    ]))))))
          ]))
    ]));
  }
}
