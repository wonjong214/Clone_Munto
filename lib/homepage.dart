import 'package:flutter/material.dart';
import 'package:loginscreen/ViewModel//ResolutionProvider.dart';
import 'package:provider/provider.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    try{
    }
    catch(e)
    {
      print('$e');
    }

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child:
          Column(
            children : [
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                    'NAVER',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontSize: 40
                    )
                )
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                      'PC 키보드 보기',
                      style: TextStyle(
                          fontSize: 20
                      )
                  )
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(width: 1), left: BorderSide(width: 1), right: BorderSide(width: 1), bottom: BorderSide.none )
                ),
                child: Row(
                    children:[
                      Icon(
                          Icons.supervised_user_circle
                      ),
                      SizedBox(width: 5),
                      new Flexible(
                          child: new TextField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "아이디"
                            ),
                          )
                      ),
                    ]
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(width: 1)
                ),
                child: Row(
                    children:[
                      Icon(
                          Icons.lock_outline
                      ),
                      SizedBox(width: 5),
                      new Flexible(
                          child: new TextField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "비밀번호"
                            ),
                          )
                      ),
                    ]
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                child : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, '/meetingpage');

                      },
                      child: Text(
                          "로그인",
                          style: TextStyle(
                              fontSize: 20
                          )
                      )
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('비밀번호 찾기'),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    margin: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(width: 1), right: BorderSide(width: 1))
                    ),
                    child: Text('아이디 찾기'),
                  ),
                  Text("회원가입",
                  style: TextStyle(
                    color: Colors.green
                  ),)
                ],
              )

            ]
          )

      ),
    );
  }
}