
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  final ScrollController scrollController = ScrollController();
  bool isShow = false;

  @override
  void initState() {
    this.scrollController.addListener(() {
      // print("scroll");
      // print(this.scrollController.position.pixels); //현재 스크롤의 위치를 볼 수 있음
      final pos = this.scrollController.position.pixels;
      if(pos > 200.0){
        if(this.isShow) return;
        setState(() {
          this.isShow = true;
        });
      } else {
        if(!this.isShow) return;
        setState((){
          this.isShow = false;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    this.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: this.isShow
          ? FloatingActionButton(
            child: Icon(Icons.arrow_upward),
            onPressed: () {},
            )
          : null,
      appBar: AppBar(),
      body: SingleChildScrollView(
        controller: this.scrollController,
        child: Container(
          child: Column(
            children: [
              Container(height: 500.0, color: Colors.red,),
              Container(height: 500.0, color: Colors.blue,),
              Container(height: 500.0, color: Colors.pink,),
              Container(height: 500.0, color: Colors.purple,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomButtons(
        left: BottomButtonsModel(
          buttonTitle:  "취소",
          onTap:  () => Navigator.of(context).pop()
        ),
        right: BottomButtonsModel(
            buttonTitle:  "구매",
            onTap: () {}
        ),
      ),
    );
  }
}
//오른쪽,왼쪾 눌렀을때 다르게 받아오는 값
class BottomButtonsModel{
  final String buttonTitle;
  final void Function() onTap;
  const BottomButtonsModel({
    required this.buttonTitle,
    required this.onTap
  });
}

//BottomButton 클래스로 만들어줌
class BottomButtons extends StatelessWidget {
  final BottomButtonsModel left;
  final BottomButtonsModel right;
  const BottomButtons({
    super.key,
    required this.left,
    required this.right
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70.0,
        child: Row(
          children: [
            Expanded(
                child: GestureDetector(
                  onTap: this.left.onTap,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    alignment: Alignment.center,
                    color: Colors.pink,
                    child: Text(this.left.buttonTitle),
              ),
            )),
            Expanded(child: GestureDetector(
              onTap: this.right.onTap,
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.center,
                color: Colors.blue,
                child: Text(this.right.buttonTitle),
              ),
            )),
          ],
        ),
      );
  }
}
