import 'package:crypto_currency/shared/colors.dart';
import 'package:flutter/material.dart';

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
      width: 129,
      padding: const EdgeInsets.symmetric(vertical: 15),
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

          )
        ],

      ),
    );
  }
}
