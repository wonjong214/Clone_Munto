import 'package:Clone_Munto/widget/atoms/common_border_container.dart';
import 'package:Clone_Munto/widget/molecules/border_textformfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController idController = TextEditingController();
  TextEditingController pwController = TextEditingController();

  late String _email;
  late String _password;
  bool isInput = true;
  bool isSignIn = true;

  void setEmail (String email){
    this._email = email;
  }

  void setPassword (String password){
    this._password = password;
  }

  @override
  void dispose() {
    idController.dispose();
    pwController.dispose();
    super.dispose();
  }

  showToast(String msg){
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  signIn() async{
    try{
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password)
          .then((value){
        print(value);
        if (value.user!.emailVerified){
          Navigator.of(context, rootNavigator: true)
              .pushNamed('/main');
        }
        else{
          showToast('emailVertified error');
        }
        return value;
      });
    }
    on FirebaseAuthException catch(e){
      if(e.code == 'user-not-found') {
        showToast('user-not-found');
      }
      else if (e.code == 'wrong-password'){
        showToast('wrong-password');
      }
      else{
        print(e.code);
      }
    }
  }

  signUp() async{
    try{
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: _email, password: _password)
          .then((value){
        if(value.user!.email != null){
          FirebaseAuth.instance.currentUser?.sendEmailVerification();
          showToast("이메일을 확인해주세요");
        }
        return value;
      });
    }
    on FirebaseAuthException catch(e){
      if(e.code == 'weak-password'){
        showToast('weak-password');
      }
      else if(e.code == 'email-already-in-use'){
        showToast('email-already-in-use');
      }
      else{
        showToast('other error');
        print(e.code);
      }
    }
    catch (e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Text(
                  'MUNTO',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'apptitle',
                  ),
                ),
                SizedBox(height: 40,),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                            '이메일'
                        ),
                      ),
                      SizedBox(height: 10,),
                      BorderTextformfield(
                          controller: idController,
                          hintText: '이메일을 입력해주세요',
                          getText: setEmail
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                            '비밀번호'
                        ),
                      ),
                      SizedBox(height: 10,),
                      BorderTextformfield(
                        controller: pwController,
                        hintText: '비밀번호를 입력해 주세요',
                        getText: setPassword,
                        obscure: true,
                      ),
                      SizedBox(height: 30,),
                      GestureDetector(
                        onTap: (){
                          if(_formKey.currentState?.validate() ?? false){
                            if(isSignIn){
                              signIn();
                              idController.clear();
                              pwController.clear();
                            }
                            else{
                              signUp();
                            }
                          }
                        },
                        child: CommonBorderContainer(
                          alignment: Alignment.center,
                          width: double.infinity,
                          widget: Text(
                            isSignIn ? "로그인" : "회원가입",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white
                            ),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 15),
                          backColor: Colors.red,
                        ),
                      ),
                      SizedBox(height: 30,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: (){
                            setState(() {
                              isSignIn = !isSignIn;
                            });
                          },
                          child: Text(
                            isSignIn ? "회원가입하기" : "로그인하기",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}