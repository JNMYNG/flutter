import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:layoutexercise/mypage.dart';

void main() {
  KakaoSdk.init(nativeAppKey: '4005866f1153cc3391697e1762c2b417');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ListViewPage(),
        '/my': (context) => mypage(),
      },
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var productName = [
    '아이브 포카 에스파 교환 아이돌 리즈 포카 장원영',
    '애플워치3 GPS 38mm',
    '하이레그 비키니 한번 착용',
    '애플워치 SE 나이키 44mm GPS + 애플 케어 플러스',
    '닥터 쁘띠 의원 노원점',
    '아이브 포카 에스파 교환 아이돌 리즈 포카 장원영',
    '애플워치3 GPS 38mm',
    '하이레그 비키니 한번 착용',
    '애플워치 SE 나이키 44mm GPS + 애플 케어 플러스',
    '닥터 쁘띠 의원 노원점'
  ];

  var location = [
    '도봉구 방학제3동 . 27초전',
    '노원구 월계동 . 끌올 52초 전',
    '상계5동 . 44분 전',
    '상계5동 . 끌올 1초 전',
    '상계동 . 광고',
    '도봉구 방학제3동 . 27초전',
    '노원구 월계동 . 끌올 52초 전',
    '상계5동 . 44분 전',
    '상계5동 . 끌올 1초 전',
    '상계동 . 광고'
  ];

  var price = [
    '9억 9999만 9999원',
    '90000원',
    '9000원',
    '250000원',
    '10000원',
    '9억 9999만 9999원',
    '90000원',
    '9000원',
    '250000원',
    '10000원'
  ];

  var img = [
    'image/01.JPG',
    'image/02.JPG',
    'image/03.JPG',
    'image/04.JPG',
    'image/05.JPG',
    'image/01.JPG',
    'image/02.JPG',
    'image/03.JPG',
    'image/04.JPG',
    'image/05.JPG',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('상계동'),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        actions: [Icon(Icons.search), Icon(Icons.menu), Icon(Icons.add_alert)],
        backgroundColor: Colors.black87,
      ),
      body: ListView.builder(
        itemCount: productName.length,
        itemBuilder: (context, index) {
          return Container(
            height: 165,
            color: Colors.black87,
            child: Card(
              margin: EdgeInsets.all(0),
              color: Colors.black87,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      img[index],
                      width: 130,
                      height: 130,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: width,
                          child: Text(
                            productName[index],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width,
                          child: Text(
                            location[index],
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          width: width,
                          child: Text(
                            price[index],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.chat_outlined,
                              color: Colors.grey,
                            ),
                            Text(
                              '4',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Icon(Icons.heart_broken, color: Colors.grey),
                            Text('5', style: TextStyle(color: Colors.grey))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.black87,
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.home),
                      color: Colors.white70,
                    ),
                    Text('홈',
                        style: TextStyle(color: Colors.white70, fontSize: 10))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.apartment),
                      color: Colors.white70,
                    ),
                    Text('동네생활',
                        style: TextStyle(color: Colors.white70, fontSize: 10))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.location_on),
                      color: Colors.white70,
                    ),
                    Text('내 근처',
                        style: TextStyle(color: Colors.white70, fontSize: 10))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chat),
                      color: Colors.white70,
                    ),
                    Text('채팅',
                        style: TextStyle(color: Colors.white70, fontSize: 10))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/my');
                      },
                      icon: Icon(Icons.person),
                      color: Colors.white70,
                    ),
                    Text('나의 당근',
                        style: TextStyle(color: Colors.white70, fontSize: 10))
                  ],
                ),
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
