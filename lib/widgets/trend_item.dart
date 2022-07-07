import 'package:crypto_currency/models/trend.dart';
import 'package:crypto_currency/shared/title_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart' as InsetBox;
import 'package:flutter_svg/svg.dart';

import '../shared/colors.dart';

class TrendItem extends StatelessWidget {
  final Trend trend;

  const TrendItem({Key? key, required this.trend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: InsetBox.BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF211E41),
          boxShadow: const [
            InsetBox.BoxShadow(
                color: Color.fromRGBO(54, 50, 90, 0.75),
                offset: Offset(0,0),
                blurRadius: 34,
                spreadRadius: 0,
                inset: true
            )
          ]
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 41,
              height: 41,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: mainColor
              ),
              child: Center(
                child: Image.asset("assets/images/${trend.logo}",fit: BoxFit.cover,),
              ),

            ),
            const SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(trend.name,style: titleStyleWhite.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 12
              ),),
              const SizedBox(height: 10,),
              Text(trend.symbol,style: titleStyleWhite.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 12
              ),),

            ],),
            const SizedBox(width: 20,),
            Image.asset("assets/images/${trend.graphAsset}",fit: BoxFit.cover,),
            const SizedBox(width: 20,),
            Text(trend.price,style: titleStyleWhite.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 12
            ),),


          ],
        ),
      ),
    );
  }
}
