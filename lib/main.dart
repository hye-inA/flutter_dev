import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
// runApp(MaterialApp()); -> 클래스로 뺴주자
//MaterialApp() : 프로젝트(앱) 관리 위젯
  runApp(MyApp()); // MaterialApp의 인스턴스인 MyApp을 매개변수로 가짐

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    // home:앱을 실행할 때 첫 화면에 무엇을 표시할지 정함
      home: MyPage(), // MyPage 클래스를 위젯의 첫화면으로 실행
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AppBar appBar = AppBar(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {}, //
        icon: Icon(Icons.menu),
      ),
      title: Text("Connection"),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {}, //null
          icon: Icon(Icons.notifications),
        )
      ],
    ); //AppBar를 여러 곳에서 재사용, 클래스 내부에서 final AppBar 객체를 선언 - 해당 객체는 해당 클래스의 인스턴스가 존재하는 동안 변경X
    final double size = MediaQuery.of(context).size.width * 0.5 - 15;
    Widget buildProfileStack(String imageUrl, bool isOnline) {
      return Stack(
          children: [
            Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:NetworkImage(imageUrl),
                    )
                )
            ),
            if (isOnline)
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(width: 4.0, color: Colors.white),
                ),
              ),
            ),
          ],
      );
    }
    Widget itemFunc(double leftMargin, double rightMargin, double topMargin, double bottomMargin,
        String imageUrl, bool isOnline ){
      return GestureDetector(
        onTap: (){ // 이벤트 처리 콜백함수
          Navigator.of(context).push(
            // 전환할 화면을 지칭하는 라우트 객체
            MaterialPageRoute(
                builder: (context) => MyPage2()),
          );
        },
        child: Container(
          color: Colors.white,
          width: size,
          height: size,
          margin: EdgeInsets.only(left: leftMargin, right: rightMargin, top: topMargin ,bottom: bottomMargin),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                color: Colors.white,
                child: Icon(Icons.more_horiz),
              ),
              buildProfileStack(imageUrl, isOnline),
              Container(
                child: Text("Clarie Wilson"),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      width: 60,
                      height: 55,
                      margin: EdgeInsets.only(left: 15, right: 5),
                      child: Icon(Icons.person_2_sharp),
                    ),
                    Container(
                        color: Colors.white,
                        width: 60,
                        height: 55,
                        margin: EdgeInsets.only(left: 5, right: 15),
                        child: Icon(Icons.message),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold( //페이지
      appBar: appBar,
      body: SingleChildScrollView(
          child: Container(
            color: Colors.grey,
            child: Column(
              children: [
                Container(
                  child: Row(
                    //0이면 첫 번째 margin 세트를 , 1이면 2번째 margin 세트를 넘김
                    children: <int>[0,1].map<Widget>((int e) {
                      return e == 0 ? itemFunc(10, 5, 10, 5,'https://i.pinimg.com/236x/dc/14/24/dc142465dadd5b622d5b28468e152456.jpg', true)
                          : itemFunc(5, 10, 10, 5,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ74oQ34k-uMihbMenZsa7ytEBedUf7U-KS6g&usqp=CAU',true);
                    }).toList(), //foreach도 가능
                ),
                ),
                Container(
                  child: Row(
                    //0이면 첫 번째 margin 세트를 , 1이면 2번째 margin 세트를 넘김
                    children: <int>[0,1].map<Widget>((int e) {
                      return e == 0 ? itemFunc(10, 5, 10, 5,'https://i.pinimg.com/236x/ed/c0/32/edc032bc99a897206970bf949ba274f8.jpg',false)
                          : itemFunc(5, 10, 10, 5,'https://pbs.twimg.com/media/DQuk4CJUMAEwae6.jpg',true);
                    }).toList(),
                  ),
                ),
                Container(
                  child: Row(
                    //0이면 첫 번째 margin 세트를 , 1이면 2번째 margin 세트를 넘김
                    children: <int>[0,1].map<Widget>((int e) {
                      return e == 0 ? itemFunc(10, 5, 10, 5,'https://t1.daumcdn.net/thumb/R720x0/?fname=http://t1.daumcdn.net/brunch/service/user/3mm/image/sknMyUB4sU-_FplAP6ZeainEGF8',false)
                          : itemFunc(5, 10, 10, 5,'https://mblogthumb-phinf.pstatic.net/MjAyMDA2MDRfNzcg/MDAxNTkxMTk2ODUzNjY1.g_q-16IJ8UbY39735kDZgqAlCTth44gNjxhjkao0_GEg.kkYXbU2H2tuaJKeE5M37YYlWLk4RusdXTf6oNnjzCKog.JPEG.umm-_-a/1591196852055.jpg?type=w800',true);
                    }).toList(),
                  ),
                )
                    ],
                  ),
                ),
            ),
          );
  }
}

class MyPage2 extends StatelessWidget {
  const MyPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Autopilot Tasks'),
      ),
    );
  }
}
