import 'package:flutter/material.dart';
import 'package:inventory_management/routes/route_names.dart';
import 'package:starlight_utils/starlight_utils.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            bottom: 80,
          ),
          child: FlutterLogo(
            size: 60,
          ),
        ),
        const ShopList(),
        Container(
          width: context.width * .87,
          height: 65,
          padding: const EdgeInsets.only(left: 2, right: 2, top: 20),
          child: OutlinedButton(
              onPressed: () {
                StarlightUtils.pushNamed(createShop);
              },
              child: const Text("Create Shop")),
        )
      ],
    ));
  }
}

class ShopList extends StatelessWidget {
  const ShopList({super.key});

  @override
  Widget build(BuildContext context) {
    const int totalShop = 4;
    double shopListHeight = context.height * .37;
    if (totalShop == 1) {
      shopListHeight = context.height * .098;
    } else if (totalShop == 2) {
      shopListHeight /= 2;
    } else if (totalShop == 3) {
      shopListHeight = context.height * .28;
    }
    return SizedBox(
      // color: Colors.green,
      width: context.width,
      height: shopListHeight,
      child: Scrollbar(
        thumbVisibility: true,
        child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: totalShop,
            itemBuilder: (context, index) {
              return Card(
                elevation: .5,
                child: Container(
                  // margin: const EdgeInsets.symmetric(
                  //   vertical: 10,
                  // ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: const BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  height: 64,
                  child: Row(
                    children: [
                      const CircleAvatar(),
                      const SizedBox(
                        width: 20,
                      ),
                      Text("Shop $index")
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
