import 'package:flutter/material.dart';
import 'package:yod/yod.dart';
import 'package:yod_nak_ram_ui_kit/yod_nak_ram_ui_kit.dart';

class MockProduct {
  final String name;
  final String imageUrl;

  MockProduct({required this.name, required this.imageUrl});
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<MockProduct> mockProducts = [
    MockProduct(
      name: 'Ninjutsu sora',
      imageUrl:
          'https://www.addiceinc.com/cdn/shop/articles/Ninjutso-Sora-Wireless-Professional-Gaming-Mouse-red_4.jpg?v=1682020860',
    ),
    MockProduct(
      name: 'Scyrox V8',
      imageUrl: 'https://i.ytimg.com/vi/5Jtg7APLuyI/maxresdefault.jpg',
    ),
    MockProduct(
      name: 'Viper V3 Pro',
      imageUrl:
          'https://www.gametonix.com/wp-content/uploads/2024/04/razer-viper-v3-pro-gaming-mouse-cover.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final themeManager = Yod.resolve<ThemeManager>();
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RamTitleText(
              text: 'Hello! Khun Natthapol',
              colorText: context.ramTheme.onSurface,
              fontSize: kSpace8,
            ),
            const SizedBox(width: kSpace4),
            RamBaseIcon(
              icon: Icon(
                Icons.store_outlined,
                color: context.ramTheme.onSurface,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kSpace7),
                child: RamLabelText(
                  text: 'Wellcome to Fake Store',
                  colorText: context.ramTheme.onSurface,
                  fontSize: kSpace7,
                ),
              ),
              SizedBox(height: kSpace4),
              RamCard(
                padding: 0.0,
                child: RamNetWorkImage(
                  imageUrl:
                      'https://cdn.marketingoops.com/wp-content/uploads/2023/10/New-Upgrade-Model-3-Front-View-Low-Res.jpg',
                ),
              ),
              SizedBox(height: kSpace4),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  itemCount: mockProducts.length,
                  itemBuilder: (context, index) {
                    final mockProduct = mockProducts[index];
                    return RamCard(
                      padding: 0.0,
                      child: RamNetWorkImage(imageUrl: mockProduct.imageUrl),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: kSpace4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kSpace7),
                child: RamButton(
                  width: double.infinity,
                  onPressed: themeManager.toggleTheme,
                  label: 'Go to All Products',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
