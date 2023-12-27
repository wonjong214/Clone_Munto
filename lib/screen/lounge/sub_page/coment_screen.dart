import 'package:Clone_Munto/model/meeting/lounge/lounge_post.dart';
import 'package:Clone_Munto/widget/organisms/lounge/lounge_comment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants/border.dart';
import '../../../constants/colors.dart';
import '../../../providers/lounge_post_provider.dart';
import '../../../widget/atoms/app_bar_title_text.dart';
import '../../../widget/atoms/circle_border_image_container.dart';

class CommentScreen extends StatefulWidget {
  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  Color registrationTextColor = Colors.transparent;
  bool isRegistration = false;
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var loungePostProvider = Provider.of<LoungePostProvider>(context);
    final arg = ModalRoute.of(context)?.settings.arguments as LoungePost;
    return Scaffold(
      backgroundColor: AppBar_color,
      appBar: AppBar(
        backgroundColor: AppBar_color,
        foregroundColor: Colors.black,
        shape: appBarBottomBorder,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: AppBarTitle('댓글'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: arg.chatList == null ? [SizedBox(width: 1,)] : List.generate(arg.chatList!.length, (index){
                    return LoungeComment(
                        chatImage: arg.chatList![index].chatImage,
                        chatName: arg.chatList![index].chatName,
                        chatBody: arg.chatList![index].chatBody,
                        chatDate: arg.chatList![index].chatDate,
                        chatLikeNum: arg.chatList![index].chatLikeNum,
                        chatLike: arg.chatList![index].chatLike,
                        onTap: (){loungePostProvider.changeChatLike(arg.chatList![index]);},
                    );
                  }),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xffa9a9a9),
                    width: 0.3,
                  ),
                ),
              ),
              child: Row(
                children: [
                  CircleBorderImageContainer(
                    AssetImage('assets/images/recommend_page/Exhibitions/nacho.jpeg'),
                    width: 40,
                    height: 40,
                    border: Border.all(
                        width: 3,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: TextFormField(
                      controller: controller,
                      onChanged: (text){
                        setState(() {
                          if(text.length != 0){
                            registrationTextColor = Colors.red;
                          }
                          else{
                            registrationTextColor = Colors.grey;
                          }
                        });
                      },
                      onTap: (){
                        setState(() {
                          FocusManager.instance.primaryFocus?.requestFocus();
                          registrationTextColor = Colors.grey;
                        });
                      },
                      onTapOutside: (event){
                        FocusManager.instance.primaryFocus?.unfocus();
                        setState(() {
                          registrationTextColor = Colors.transparent;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: '댓글 달기...',
                        hintStyle: TextStyle(
                            color: Color(0xffa9a9a9),
                        ),
                        border: InputBorder.none
                      ),
                    )
                  ),
                  GestureDetector(
                    onTap: (){
                      if(!controller.text.isEmpty)
                        loungePostProvider.addChatList(controller.text, arg);
                      setState(() {
                        controller.clear();
                      });
                    },
                    child: Text(
                      '등록',
                      style: TextStyle(
                        fontSize: 15,
                        color: registrationTextColor,
                      ),
                    ),
                  ),
                  SizedBox(width: 15,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
