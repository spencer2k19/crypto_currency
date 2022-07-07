import 'package:crypto_currency/shared/colors.dart';
import 'package:crypto_currency/shared/title_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart' as InsetBox;

class AssetItem extends StatelessWidget {
  final String name;
  final String price;
  final String imageAssetName;
  final String variation;
  final String assetPrice;
  const AssetItem(this.name, this.price, this.imageAssetName, this.variation, this.assetPrice, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.symmetric(vertical: 15),
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

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: mainColor
            ),
            child: Center(
              child: SvgPicture.asset("assets/images/$imageAssetName",width: 15,height: 16,),
            ),

          ),

           const SizedBox(height: 15,),
          Text(name,style: titleStyleWhite.copyWith(
            color: grayColor,
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),),
          const SizedBox(height: 15,),
          Text(price,style: titleStyleWhite.copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),),
          const SizedBox(height: 15,),
          Container(
            width: 49,
            height: 20,

            decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: const Color(0xFF211E41),
                width: 0.5
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/$assetPrice"),
                const SizedBox(width: 5,),
                Text(variation,style: titleStyleWhite.copyWith(
                  color: grayColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 12
                ),)
              ],
            ),
          )

        ],

      ),
    );
  }
}
