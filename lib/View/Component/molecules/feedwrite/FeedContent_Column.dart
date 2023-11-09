import 'package:flutter/material.dart';

class FeedContent_Column extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 0.8, color: Colors.grey.shade400)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1.5, color: Colors.grey.shade400),
                      ),
                      child: Icon(Icons.camera_alt,size: 18, color: Colors.grey,),
                    ),
                    Positioned(
                        bottom: -2,
                        right: -2,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              )
                          ),
                          child: Icon(Icons.add,color: Colors.white, size: 12,),
                        )
                    )
                  ],
                  clipBehavior: Clip.none,
                ),
                SizedBox(height: 5,),
                Text(
                  '0 / 10',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          TextFormField(
            maxLines: null,
            minLines: 5,
            style: TextStyle(
              fontSize: 15,
            ),
            cursorColor: Colors.blue,
            textAlign: TextAlign.left,
            textAlignVertical: TextAlignVertical.top,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                      color: Colors.transparent),
                ),
                hintText: '오늘 어떤 것을 보고, 느끼고, 생각하셨나요?',
                contentPadding: EdgeInsets.zero,
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                )
            ),
          ),
        ],
      ),
    );
  }
}