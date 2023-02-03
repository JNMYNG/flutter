import 'package:flutter/material.dart';
import 'package:layoutexercise/kakao_login.dart';
import 'package:layoutexercise/main_view_model.dart';


class mypage extends StatefulWidget {
  mypage({Key? key}) : super(key: key);

  @override
  State<mypage> createState() => _mypageState();
}

class _mypageState extends State<mypage> {
  final viewModel = MainViewModel(KakaoLogin());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('나의 당근'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                await viewModel.login();
                setState(() {});
              },
              child: Text('카카오톡으로 로그인하기', style: TextStyle(fontWeight: FontWeight.w700),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
              ),
            ),
            //Image.network(viewModel.user?.kakaoAccount?.profile?.profileImageUrl ?? ''),
            // Text(
            //   '${viewModel.isLogined}',
            //   style: Theme.of(context).textTheme.headline4,
            // ),


          ]
        )
      ),
    );
  }
}

