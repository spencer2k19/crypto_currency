import 'package:crypto_currency/asset.dart';
import 'package:crypto_currency/shared/title_style.dart';
import 'package:crypto_currency/widgets/asset_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  Widget buildBalanceWithProfit() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      width: double.infinity,
      height: 220,
      child: Stack(
        children: [
          Image.asset(
            "assets/images/card.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total balance",
                          style: titleStyleWhite.copyWith(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: const Color(0xFFA7A7A7)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$13450.00",
                          style: titleStyleWhite.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 19,
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 70,
                      height: 36,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.36),
                          borderRadius: BorderRadius.circular(36)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/images/up.svg"),
                          Text(
                            "+15%",
                            style: titleStyleWhite.copyWith(
                                fontWeight: FontWeight.w400, fontSize: 12),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 85,
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                decoration: const BoxDecoration(
                  color: Color(0xFF211E41),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Profit",
                          style: titleStyleWhite.copyWith(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: const Color(0xFFA7A7A7)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$13450.00",
                          style: titleStyleWhite.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              "5,7%",
                              style: titleStyleWhite.copyWith(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Image.asset("assets/images/profit.png"),
                          ),
                        )
                      ],
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

  @override
  Widget build(BuildContext context) {
    final List<Asset> assets = [
      Asset("Bitcoin", "\$6012.00","bitcoin.svg", "+2.17", "bitcoin_var.png"),
      Asset("Ethereum", "\$4512.00","ethereum.svg", "-1.17", "ethereum_var.png"),
      Asset("Ripple", "\$3429.00","ripple.svg", "-2.17", "ripple_var.png"),
    ];

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Vani,",
                style: titleStyleWhite.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Welcome!!",
                style: titleStyleWhite.copyWith(
                    fontSize: 19, fontWeight: FontWeight.w600),
              ),
              buildBalanceWithProfit(),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Assets",
                      style: titleStyleWhite.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 19,
                          height: 1.5),
                    ),
                    Text(
                      "view all",
                      style: titleStyleWhite.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: assets.length,
                    itemBuilder: (context, index) {
                      final asset = assets[index];
                      return AssetItem(
                          asset.name,
                          asset.price,
                          asset.imageAssetName,
                          asset.variation,
                          asset.assetPrice);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
