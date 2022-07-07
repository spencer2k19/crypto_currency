import 'dart:convert';
import 'dart:ui';

import 'package:crypto_currency/screens/home.dart';
import 'package:crypto_currency/shared/colors.dart';
import 'package:crypto_currency/shared/title_style.dart';
import 'package:crypto_currency/widgets/toggle_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart' as InsetBox;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swipe_to/swipe_to.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SafeArea(
        child: Stack(

          children: [
            Image.asset("assets/images/main_screen.png",fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30,),
                  Stack(children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(193),
                          bottomRight: Radius.circular(193)
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(right: 30),
                        height: 300,
                        decoration: const InsetBox.BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(193),
                            bottomRight: Radius.circular(193)
                          ),
                          gradient: LinearGradient(
                              stops: [
                                0.7115,
                               1.98
                              ],
                              colors: [
                            Color(0xFF211E41),
                            Color.fromRGBO(112, 78, 244, 0.77)

                          ]),
                          // color: Color(0xFF211E41),
                          boxShadow: [
                            InsetBox.BoxShadow(
                              color: Color.fromRGBO(112, 78, 244, 0.18),
                              spreadRadius: 0,
                              blurRadius: 20,
                              offset: Offset(0, 3),
                              inset: true
                            ),

                            InsetBox.BoxShadow(
                                color: Color.fromRGBO(112, 78, 244, 0.18),
                                spreadRadius: 0,
                                blurRadius: 20,
                                offset: Offset(0, -3),
                                inset: true
                            )
                          ]


                        ),
                        child: Row(

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 60),
                              child: Image.asset("assets/images/new_coins.png",fit: BoxFit.cover),
                            ),




                          ],
                        ),
                      ),
                    ),

                  ],),
                  const SizedBox(height: 30,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: 295,
                    child: Text("The Most Trusted & Secure Crypto Wallet",

                      style: titleStyleWhite.copyWith(

                      fontWeight: FontWeight.w700,
                      height: 1.2,
                      fontSize: 30,

                    ), ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    width: 300,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Best trading platform and more reliable financial transactions.",style: titleStyleWhite.copyWith(
                      fontWeight: FontWeight.w500,
                      height: 1.5
                    ),),
                  ),
                  const SizedBox(height: 40,),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 60),
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    decoration:  BoxDecoration(
                      color: const Color(0xFF1D1B32),
                      borderRadius: BorderRadius.circular(35),


                    ),
                    child: Row(children: [
                      SwipeTo(

                        onRightSwipe:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const Home();
                          }));

  
                        },

                        iconColor: Colors.white,
                        offsetDx: 4,
                        animationDuration: const Duration(
                          seconds: 1
                        ),


                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(90),
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF704EF4),

                            ),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 5,
                                sigmaY: 5
                              ),
                              child: const Center(
                                child: Icon(Icons.arrow_right_alt_rounded,color: Colors.white,),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Center(child: Text("Swipe to get started",style: titleStyleWhite.copyWith(
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        fontSize: 13,

                      ),),)
                    ],),
                  ),


                  const SizedBox(height: 40,)

                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
