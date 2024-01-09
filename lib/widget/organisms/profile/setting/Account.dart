import 'package:Clone_Munto/widget/atoms/common_border_container.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/resolution_provider.dart';
import '../../../atoms/diverder_container.dart';
import '../../../atoms/setting_elemnet_row.dart';
import '../../../atoms/setting_group_title_text.dart';

class Account extends StatelessWidget{
  signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut().then((value) => Navigator.popUntil(context, ModalRoute.withName('/login')));
  }

  @override
  Widget build(BuildContext context) {
    double height = Provider.of<ResolutionProvider>(context).height_get;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SettingGroupTitleText(text: '계정'),
          /*SettingElementRow(text: '계정 관리'),
          thinDivider,*/
          GestureDetector(
            onTap: (){
              showModalBottomSheet(
                context: context,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                backgroundColor: Colors.grey[200],
                builder: (BuildContext context){
                  return SizedBox(
                    height: height * 0.2,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                                "로그아웃하시겠어요?",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.grey,
                                ),
                          ),
                        ),
                        Divider(color: Colors.black, thickness: 0.3,),
                        GestureDetector(
                          onTap: (){
                            signOut(context);
                          },
                          child: Text(
                              "로그아웃",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.red,
                              ),
                          ),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  );
                },
              );
            },
            child: SettingElementRow(text: '로그아웃'),
          ),
      ],
      ),
    );
  }
}