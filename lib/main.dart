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
    return Scaffold( //페이지
      appBar: AppBar(
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
      ),
      body: ListView(
        children:[ Container( //
          color: Colors.grey,
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.5 - 15,
                      height: MediaQuery.of(context).size.width * 0.5 - 10,
                      margin: EdgeInsets.only(left: 10, right: 5, top: 10 ,bottom: 5),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            color: Colors.white,
                            child: Icon(Icons.more_horiz),
                          ),
                          Stack(
                            children: [
                              Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60.0),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:NetworkImage("https://i.pinimg.com/564x/26/91/c6/2691c65a2a8c4eed705d429f2bcbc6e1.jpg"),
                                )
                              )
                            ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                       borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(width: 4.0, color: Colors.white)
                                  ),
                                ),
                              )
                            ]
                          ),
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
                                  child: Icon(Icons.person_2_sharp
                                  ),
                                ),
                                Container(color: Colors.white,
                                  width: 60,
                                  height: 55,
                                  margin: EdgeInsets.only(left: 5, right: 15),
                                  child: Icon(Icons.message)
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.5 - 15,
                        height: MediaQuery.of(context).size.width * 0.5 - 10,
                        margin: EdgeInsets.only(left: 5, right: 10, top: 10 ,bottom: 5),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            color: Colors.white,
                            child: Icon(Icons.more_horiz),
                          ),
                          Stack(
                              children: [
                                Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60.0),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:NetworkImage("https://i.pinimg.com/564x/26/91/c6/2691c65a2a8c4eed705d429f2bcbc6e1.jpg"),
                                        )
                                    )
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10.0),
                                        border: Border.all(width: 4.0, color: Colors.white)
                                    ),
                                  ),
                                )
                              ]
                          ),
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
                                  child: Icon(Icons.person_2_sharp
                                  ),
                                ),
                                Container(color: Colors.white,
                                    width: 60,
                                    height: 55,
                                    margin: EdgeInsets.only(left: 5, right: 15),
                                    child: Icon(Icons.message)
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.5 - 15,
                      height: MediaQuery.of(context).size.width * 0.5 - 10,
                      margin: EdgeInsets.only(left: 10, right: 5, top: 10 ,bottom: 5),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            color: Colors.white,
                            child: Icon(Icons.more_horiz),
                          ),
                          Stack(
                              children: [
                                Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60.0),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:NetworkImage("https://i.pinimg.com/564x/26/91/c6/2691c65a2a8c4eed705d429f2bcbc6e1.jpg"),
                                        )
                                    )
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10.0),
                                        border: Border.all(width: 4.0, color: Colors.white)
                                    ),
                                  ),
                                )
                              ]
                          ),
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
                                  child: Icon(Icons.person_2_sharp
                                  ),
                                ),
                                Container(color: Colors.white,
                                    width: 60,
                                    height: 55,
                                    margin: EdgeInsets.only(left: 5, right: 15),
                                    child: Icon(Icons.message)
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.5 - 15,
                      height: MediaQuery.of(context).size.width * 0.5 - 10,
                      margin: EdgeInsets.only(left: 5, right: 10, top: 10 ,bottom: 5),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            color: Colors.white,
                            child: Icon(Icons.more_horiz),
                          ),
                          Stack(
                              children: [
                                Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60.0),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:NetworkImage("https://i.pinimg.com/564x/26/91/c6/2691c65a2a8c4eed705d429f2bcbc6e1.jpg"),
                                        )
                                    )
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10.0),
                                        border: Border.all(width: 4.0, color: Colors.white)
                                    ),
                                  ),
                                )
                              ]
                          ),
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
                                  child: Icon(Icons.person_2_sharp
                                  ),
                                ),
                                Container(color: Colors.white,
                                    width: 60,
                                    height: 55,
                                    margin: EdgeInsets.only(left: 5, right: 15),
                                    child: Icon(Icons.message)
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.5 - 15,
                      height: MediaQuery.of(context).size.width * 0.5 - 10,
                      margin: EdgeInsets.only(left: 10, right: 5, top: 10 ,bottom: 5),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            color: Colors.white,
                            child: Icon(Icons.more_horiz),
                          ),
                          Stack(
                              children: [
                                Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60.0),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:NetworkImage("https://i.pinimg.com/564x/26/91/c6/2691c65a2a8c4eed705d429f2bcbc6e1.jpg"),
                                        )
                                    )
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10.0),
                                        border: Border.all(width: 4.0, color: Colors.white)
                                    ),
                                  ),
                                )
                              ]
                          ),
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
                                  child: Icon(Icons.person_2_sharp
                                  ),
                                ),
                                Container(color: Colors.white,
                                    width: 60,
                                    height: 55,
                                    margin: EdgeInsets.only(left: 5, right: 15),
                                    child: Icon(Icons.message)
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width * 0.5 - 15,
                      height: MediaQuery.of(context).size.width * 0.5 - 10,
                      margin: EdgeInsets.only(left: 5, right: 10, top: 10 ,bottom: 5),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            color: Colors.white,
                            child: Icon(Icons.more_horiz),
                          ),
                          Stack(
                              children: [
                                Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60.0),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:NetworkImage("https://i.pinimg.com/564x/26/91/c6/2691c65a2a8c4eed705d429f2bcbc6e1.jpg"),
                                        )
                                    )
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10.0),
                                        border: Border.all(width: 4.0, color: Colors.white)
                                    ),
                                  ),
                                )
                              ]
                          ),
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
                                  child: Icon(Icons.person_2_sharp
                                  ),
                                ),
                                Container(color: Colors.white,
                                    width: 60,
                                    height: 55,
                                    margin: EdgeInsets.only(left: 5, right: 15),
                                    child: Icon(Icons.message)
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
