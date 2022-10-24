import 'package:flutter/material.dart';
import 'package:xetia_widgets/xetia_widgets.dart';
import 'package:xetia_boilerplate/src/core/context/localization_context.dart';

import '../widgets/featured_card.dart';
import '../widgets/profile_list.dart';
import '../widgets/service_card.dart';

class mobileView extends StatelessWidget {
  const mobileView({
    Key? key,
    required this.width05,
    required this.width90,
    required this.halfWidth,
  }) : super(key: key);

  final double width05;
  final double width90;
  final double halfWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(width05, 0, width05, 0),
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: width90,
                    height: 325,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: context.isPhone
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                'assets/images/NFTSTUDIO.png',
                              ),
                            ),
                          )
                        : Center(
                            child: Image.asset(
                              'assets/images/NFTSTUDIO.png',
                            ),
                          ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    context.l10n.kTitle1,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Web3テクノロジーとNFT・IPで、ビジネスに新たな価値を創造します。',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              Positioned(
                top: 10,
                left: MediaQuery.of(context).size.width * 0.2,
                child: Image.asset(
                  'assets/images/card1.png',
                  width: 150,
                ),
              ),
              Positioned(
                top: 50,
                left: MediaQuery.of(context).size.width * 0.3,
                child: Image.asset(
                  'assets/images/card2.png',
                  width: 150,
                ),
              ),
              Positioned(
                top: 10,
                left: MediaQuery.of(context).size.width * 0.4,
                child: Image.asset(
                  'assets/images/card3.png',
                  width: 150,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset(
              'assets/images/whyNFT.png',
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            'assets/images/image1.png',
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  context.l10n.kTitle2,
                  style: TextStyle(
                    fontSize: 26,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。',
                        style: TextStyle(fontSize: 10, letterSpacing: 5),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text('View more'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: context.isDarkTheme
                                ? Colors.white
                                : Colors.black,
                            side: BorderSide(
                              width: 1,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 2.0,
                ),
                bottom: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 2.0,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset('assets/images/brand.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 20),
              Text(
                '日本をリードするさまざまな企業から信頼されています。',
                style: TextStyle(
                  fontSize: 8,
                  color: Color.fromRGBO(153, 153, 153, 1),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      'View Project',
                      style: TextStyle(
                        fontSize: 8,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/service.png',
                width: halfWidth,
              ),
              const SizedBox(
                height: 50,
              ),
              ServiceCard(
                image: 'assets/images/service1.png',
                title: 'NFT Partnerships',
                desc: 'この文章はダミーです。文字の大きさ、量、字間、行間等を確認するため\nに入れています。この文章はダミーです。',
              ),
              const SizedBox(
                height: 10,
              ),
              ServiceCard(
                image: 'assets/images/service2.png',
                title: 'NFT Platforms',
                desc: 'この文章はダミーです。文字の大きさ、量、字間、行間等を確認するため\nに入れています。この文章はダミーです。',
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 2.0,
                ),
                bottom: BorderSide(
                  color: Colors.grey.withOpacity(0.2),
                  width: 2.0,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                  child: Image.asset(
                'assets/images/featured.png',
              )),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FeaturedCard(
                    image: 'assets/images/featured1.png',
                    desc: '【NTT docomo】アートアクアリウム\nGINZAでのメタバース×NFT企画',
                    fontsize: 5,
                  ),
                  FeaturedCard(
                    image: 'assets/images/featured2.png',
                    desc: '【三井住友海上】NFTアート専用保険を開発',
                    fontsize: 5,
                  ),
                  FeaturedCard(
                    image: 'assets/images/featured3.png',
                    desc:
                        '【PARCO】TAKERU AMANO \nEXHIBITION "VENUS"NFTコレクション\n企画・販売',
                    fontsize: 5,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('View More'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor:
                          context.isDarkTheme ? Colors.white : Colors.black,
                      side: BorderSide(
                        width: 1,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/profile.png',
                width: halfWidth,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/company.png',
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Column(
                      children: [
                        ProfileList(
                          title: context.l10n.kCEOmessage,
                        ),
                        ProfileList(
                          title: context.l10n.kMember,
                        ),
                        ProfileList(
                          title: context.l10n.kCompany,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Stack(
            children: [
              Image.asset('assets/images/Rectangle248.png'),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        context.l10n.kTitle3,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'NFT・Web3プロジェクトに関する\nご依頼やご相談はこちらから',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 30),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: OutlinedButton(
                      //     onPressed: () {},
                      //     child: Text('CONTACT'),
                      //     style: OutlinedButton.styleFrom(
                      //       foregroundColor: Colors.white,
                      //       side: BorderSide(
                      //         width: 1,
                      //         color: Colors.blue,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.blue, width: 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: SizedBox(
                            height: 30,
                            width: context.appSize.width * 0.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Contact',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                context.isDarkTheme
                    ? 'assets/images/logo.png'
                    : 'assets/images/logo_light.png',
                width: 91,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Follow Us   :  '),
                  Icon(
                    Icons.facebook,
                  ),
                  Icon(
                    Icons.youtube_searched_for,
                  ),
                  Icon(
                    Icons.facebook,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Why NFT',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '   Vision',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '   History',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '   For Future',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Services',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '   NFT Partnership',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      '   NFT platform',
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '© HARTi inc. All Rights Reserved. ',
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                  fontSize: 12,
                ),
              ),
              VerticalDivider(),
              Text(
                'プライバシーポリシー',
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
