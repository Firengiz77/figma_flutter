import 'dart:ui';

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  final _boardsText = 'Boards';
  final _followText = 'Following Galleries to Power Up Your Art Career';
  final _foodTitle = 'food';
  final _illustrations = 'illustrations';
  final _painting = 'painting';
  final _fixedImages = 'fixed images';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            color: CustomColor.orange,
          ),
          iconSize: 45,
          onPressed: () => Navigator.of(context).pop(),
        ),
        elevation: 0,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: CustomColor.whiteLinearColor,
            ),
            child: Container(
              child: Padding(
                  padding: CustomPadding.fullPageSize,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: _boardsText,
                                  size: 30.00,
                                  weight: FontWeight.w800,
                                  color: Color.fromRGBO(59, 52, 52, 1)),
                              SizedBox(height: 18),
                              CustomText(
                                  text: _followText,
                                  size: 15.00,
                                  weight: FontWeight.w600,
                                  color: Color.fromARGB(188, 59, 52, 52)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          CustomButtonWithText(text: _foodTitle),
                          SizedBox(width: 18),
                          CustomButtonWithText(text: _illustrations),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.00),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CustomCard(
                              text: _foodTitle,
                              img1: 'assets/jpeg/img7.jpeg',
                              img2: 'assets/jpeg/img8.jpeg',
                              img3: 'assets/jpeg/img2.jpeg',
                              onPressed: () => {print(_foodTitle)}),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.00),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CustomCard(
                              text: _painting,
                              img1: 'assets/jpeg/img6.jpeg',
                              img2: 'assets/jpeg/img5.jpeg',
                              img3: 'assets/jpeg/img6.jpeg',
                              onPressed: () => {print(_painting)}),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.00),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CustomCard(
                            text: _fixedImages,
                            img1: 'assets/jpeg/img1.jpeg',
                            img2: 'assets/jpeg/img4.jpeg',
                            img3: 'assets/jpeg/img6.jpeg',
                            onPressed: () => {print(_fixedImages)},
                          ),
                        ),
                      ),
                      SizedBox(height: 85),
                    ],
                  )),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(70),
              topLeft: Radius.circular(70),
              bottomRight: Radius.circular(70),
              bottomLeft: Radius.circular(70)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 1, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70.0),
              topRight: Radius.circular(70.0),
              bottomRight: Radius.circular(70),
              bottomLeft: Radius.circular(70)),
          child: CustomBottomNav(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Container(
          width: 60,
          height: 60,
          child: Icon(
            Icons.add,
            size: 40,
          ),
          decoration: BoxDecoration(
              shape: BoxShape.circle, gradient: CustomColor.linearColor),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CustomColor {
  static final orange = Colors.orange;
  static final linearColor = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
      colors: [
        Color.fromARGB(255, 236, 164, 19),
        Color.fromARGB(255, 224, 107, 29)
      ]);

  static final whiteLinearColor = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.white, Color.fromARGB(48, 183, 180, 180)]);

  static final Color white = Colors.white;
  static final Color black = Colors.black;
  static final Color grey = Colors.grey;
}

class CustomPadding {
  static final fullPageSize = EdgeInsets.fromLTRB(20, 10, 20, 10);
  static final allSize = EdgeInsets.all(4);
  static final lrtb = EdgeInsets.only(left: 12, right: 12, top: 10, bottom: 10);
}

class CustomSize {

  static final double boxHeight = 98;
  static final double bottomIconSize = 37;
  static final double singleBoxHeight = 200;
}

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key, required this.text, this.size, this.color, this.weight});

  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(fontSize: size, color: color, fontWeight: weight),
        textAlign: TextAlign.left);
  }
}

class CustomButtonWithText extends StatelessWidget {
  const CustomButtonWithText({super.key, this.text});
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: CustomColor.linearColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: CustomPadding.lrtb,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: CustomText(
                text: text,
                color: Colors.white,
                size: 16.00,
                weight: FontWeight.w500),
          ),
          SizedBox(width: 20),
          Container(
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomWidgetButton extends StatelessWidget {
  const CustomWidgetButton({super.key, this.text, required this.onPressed});
  final text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColor.white,
      ),
      padding: CustomPadding.lrtb,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: CustomText(
                text: text,
                color: Colors.black,
                size: 16.00,
                weight: FontWeight.w700),
          ),
          SizedBox(width: 20),
          Container(
            child: GestureDetector(
              onTap: onPressed,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(174, 158, 158, 158),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      this.text,
      this.img1,
      this.img2,
      this.img3,
      required this.onPressed});
  final text;
  final img1;
  final img2;
  final img3;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return 
    Card(
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  img1,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.47,
                  height: CustomSize.singleBoxHeight,
                ),
                SizedBox(width: 2),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(img2,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: CustomSize.boxHeight),
                      SizedBox(height: 3),
                      Image.asset(img3,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: CustomSize.boxHeight),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: CustomWidgetButton(
              text: text,
              onPressed: onPressed,
            ),
          ),
        ],
      ),
    );
  
  }
}

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home_outlined),
                onPressed: () => {print('clicked home button')},
                color: CustomColor.grey,
                iconSize: CustomSize.bottomIconSize,
              ),
              IconButton(
                icon: Icon(Icons.settings_outlined),
                onPressed: () => {print('clicked setting button')},
                color: CustomColor.grey,
                iconSize: CustomSize.bottomIconSize,
              ),
              SizedBox(width: 40),
              IconButton(
                icon: Icon(Icons.edit_outlined),
                onPressed: () => {print('clicked edit button')},
                color: CustomColor.grey,
                iconSize: CustomSize.bottomIconSize,
              ),
              IconButton(
                icon: Icon(Icons.person_outline),
                onPressed: () => {print('clicked person button')},
                color: CustomColor.grey,
                iconSize: CustomSize.bottomIconSize,
              ),
            ],
          ),
        ));
  }
}
