// ignore_for_file: prefer_const_constructors

import 'package:calculator_app/responsive.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController firstNumber = TextEditingController();
  final TextEditingController secondNumber = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    //inisialisasi ukuran layar
    SizeConfig().init(context);

    //inisialisasi ukuran lebar layar
    final width = SizeConfig.screenWidth;

    //inisialisasi ukuran tinggi layar
    final height = SizeConfig.screenHeight;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: getProportionateScreenHeight(122),
            width: getProportionateScreenWidth(428),
            decoration: BoxDecoration(
              color: const Color(0xff0290E0),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(getProportionateScreenWidth(20)),
                bottomRight: Radius.circular(getProportionateScreenWidth(20)),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(40)),
                Text(
                  'Kalkulator',
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(20),
                    color: Colors.white,
                    fontFamily: 'poppinsmedium',
                  ),
                ),
                Text(
                  'Input Dua Bilangan',
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(24),
                    color: Colors.white,
                    fontFamily: 'poppinssemibold',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(32)),
          Column(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: [
                    Container(
                      height: getProportionateScreenHeight(59),
                      decoration: BoxDecoration(
                        color: Color(0xffFCFBFB),
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenHeight(16)),
                        border: Border.all(
                          width: getProportionateScreenWidth(2),
                          color: Color(0xffDEDEDE),
                        ),
                      ),
                      child: Center(
                        child: TextField(
                          controller: firstNumber,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(15),
                            ),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontFamily: 'poppinsregular',
                              fontSize: getProportionateScreenHeight(18),
                              color: Color(0xffB4ABAB),
                            ),
                            hintText: 'First Number',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(24)),
                    Container(
                      height: getProportionateScreenHeight(59),
                      decoration: BoxDecoration(
                        color: Color(0xffFCFBFB),
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenHeight(16)),
                        border: Border.all(
                          width: getProportionateScreenWidth(2),
                          color: Color(0xffDEDEDE),
                        ),
                      ),
                      child: Center(
                        child: TextField(
                          controller: secondNumber,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(15),
                            ),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontFamily: 'poppinsregular',
                              fontSize: getProportionateScreenHeight(18),
                              color: Color(0xffB4ABAB),
                            ),
                            hintText: 'Second Number',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(48)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: getProportionateScreenWidth(72),
                          height: getProportionateScreenHeight(48),
                          decoration: BoxDecoration(
                              color: Color(0xff50C0FF),
                              borderRadius: BorderRadius.circular(
                                  getProportionateScreenHeight(10))),
                          child: InkWell(
                            onTap: () {
                              // Code execute on button press
                              double n1 = double.parse(firstNumber.text);
                              double n2 = double.parse(secondNumber.text);
                              setState(
                                () {
                                  result = n1 + n2;
                                },
                              );
                            },
                            child: Center(
                                child: Text(
                              '+',
                              style: TextStyle(
                                fontSize: getProportionateScreenHeight(32),
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                        Container(
                          width: getProportionateScreenWidth(72),
                          height: getProportionateScreenHeight(48),
                          decoration: BoxDecoration(
                              color: Color(0xff50C0FF),
                              borderRadius: BorderRadius.circular(
                                  getProportionateScreenHeight(10))),
                          child: InkWell(
                            onTap: () {
                              // Code execute on button press
                              double n1 = double.parse(firstNumber.text);
                              double n2 = double.parse(secondNumber.text);
                              setState(
                                () {
                                  result = n1 - n2;
                                },
                              );
                            },
                            child: Center(
                                child: Text(
                              '-',
                              style: TextStyle(
                                fontSize: getProportionateScreenHeight(32),
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                        Container(
                          width: getProportionateScreenWidth(72),
                          height: getProportionateScreenHeight(48),
                          decoration: BoxDecoration(
                              color: Color(0xff50C0FF),
                              borderRadius: BorderRadius.circular(
                                  getProportionateScreenHeight(10))),
                          child: InkWell(
                            onTap: () {
                              // Code execute on button press
                              double n1 = double.parse(firstNumber.text);
                              double n2 = double.parse(secondNumber.text);
                              setState(
                                () {
                                  result = n1 * n2;
                                },
                              );
                            },
                            child: Center(
                                child: Text(
                              'x',
                              style: TextStyle(
                                fontSize: getProportionateScreenHeight(32),
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                        Container(
                          width: getProportionateScreenWidth(72),
                          height: getProportionateScreenHeight(48),
                          decoration: BoxDecoration(
                              color: Color(0xff50C0FF),
                              borderRadius: BorderRadius.circular(
                                  getProportionateScreenHeight(10))),
                          child: InkWell(
                            onTap: () {
                              // Code execute on button press
                              double n1 = double.parse(firstNumber.text);
                              double n2 = double.parse(secondNumber.text);
                              setState(
                                () {
                                  result = n1 / n2;
                                },
                              );
                            },
                            child: Center(
                                child: Text(
                              '/',
                              style: TextStyle(
                                fontSize: getProportionateScreenHeight(32),
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(34)),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: getProportionateScreenHeight(50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  getProportionateScreenHeight(12)),
                              color: Color(0xff016197),
                            ),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  result = 0;
                                  firstNumber.clear();
                                  secondNumber.clear();
                                });
                              },
                              child: Center(
                                  child: Text(
                                'CLEAR',
                                style: TextStyle(
                                  fontSize: getProportionateScreenHeight(20),
                                  fontFamily: 'poppinssemibold',
                                  color: Colors.white,
                                ),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(60)),
                    Text(
                      'HASIL',
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(32),
                        fontFamily: 'poppinssemibold',
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(4)),
                    Text(
                      '$result',
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(54),
                        fontFamily: 'poppinssemibold',
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(4)),
                    Text(
                      'Aplikasi ini dibuat untuk\nmemenuhi project UAS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(20),
                        fontFamily: 'poppinsitalic',
                        color: Color(0xff787575),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(135)),
                    Text(
                      'Created By: Farrelino Arvia (220430019)',
                      style: TextStyle(
                          fontSize: getProportionateScreenHeight(16),
                          fontFamily: 'poppinssemibold'),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
