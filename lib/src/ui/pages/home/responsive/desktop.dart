import 'package:flutter/material.dart';
import 'package:harti_landing_page/src/core/context/localization_context.dart';
import 'package:harti_landing_page/src/ui/pages/home/widgets/featured_card.dart';
import 'package:harti_landing_page/src/ui/pages/home/widgets/profile_list.dart';
import 'package:harti_landing_page/src/ui/pages/home/widgets/service_card.dart';
import 'package:xetia_widgets/xetia_widgets.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({
    Key? key,
    required this.scroolController,
  }) : super(key: key);
  final ScrollController scroolController;

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        context.appSize.width * 0.05,
        0,
        context.appSize.width * 0.05,
        0,
      ),
      child: ListView(
        controller: widget.scroolController,
        children: [
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: context.appSize.width * 0.90,
                    height: 580,
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
                    style: const TextStyle(
                      fontSize: 82,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Web3テクノロジーとNFT・IPで、ビジネスに新たな価値を創造します。',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              Positioned(
                top: 20,
                left: context.appSize.width * 0.2,
                child: Image.asset('assets/images/card1.png'),
              ),
              Positioned(
                top: 150,
                left: context.appSize.width * 0.3,
                child: Image.asset('assets/images/card2.png'),
              ),
              Positioned(
                top: 20,
                left: context.appSize.width * 0.4,
                child: Image.asset('assets/images/card3.png'),
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
          context.appSize.width < 700
              ? Column(
                  children: [
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
                            style: const TextStyle(
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
                                const Text(
                                  '文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。',
                                  style:
                                      TextStyle(fontSize: 10, letterSpacing: 5),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: context.isDarkTheme
                                          ? Colors.white
                                          : Colors.black,
                                      side: const BorderSide(
                                        width: 1,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    child: const Text('View more'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              // : Stack(
              //     children: [
              // Image.asset(
              //   'assets/images/image1.png',
              //   width: context.appSize.width * 0.50,
              // ),
              //       Positioned(
              //         top: 38,
              //         right: context.appSize.width * 0.05,
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.end,
              //           children: [
              //             Text(
              //               context.l10n.kTitle2,
              //               style: const TextStyle(
              //                 fontSize: 82,
              //               ),
              //             ),
              //             const SizedBox(height: 20),
              //             const Text(
              //               '文字の大きさ、量、字間、行間等を確認\nするために入れています。この文章はダ\nミーです。文字の大きさ、量、字間、行\n間等を確認するために入れています。文\n字の大きさ、量、字間、行間等を確認す\nるために入れています。この文章はダミ\nーです。文字の大きさ、量、字間、行間\n等を確認するために入れています。',
              //               style: TextStyle(
              //                 fontSize: 10,
              //                 letterSpacing: 7,
              //               ),
              //             ),
              //             const SizedBox(
              //               height: 20,
              //             ),
              //             OutlinedButton(
              //               onPressed: () {},
              //               style: OutlinedButton.styleFrom(
              //                 foregroundColor: context.isDarkTheme
              //                     ? Colors.white
              //                     : Colors.black,
              //                 side: const BorderSide(
              //                   width: 1,
              //                   color: Colors.blue,
              //                 ),
              //               ),
              //               child: const Text('View More'),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              : Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/image1.png',
                        width: context.appSize.width * 0.50,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            context.l10n.kTitle2,
                            style: const TextStyle(
                              fontSize: 82,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            '文字の大きさ、量、字間、行間等を確認\nするために入れています。この文章はダ\nミーです。文字の大きさ、量、字間、行\n間等を確認するために入れています。文\n字の大きさ、量、字間、行間等を確認す\nるために入れています。この文章はダミ\nーです。文字の大きさ、量、字間、行間\n等を確認するために入れています。',
                            style: TextStyle(
                              fontSize: 10,
                              letterSpacing: 7,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              foregroundColor: context.isDarkTheme
                                  ? Colors.white
                                  : Colors.black,
                              side: const BorderSide(
                                width: 1,
                                color: Colors.blue,
                              ),
                            ),
                            child: const Text('View More'),
                          ),
                        ],
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
              const Text(
                '日本をリードするさまざまな企業から信頼されています。',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(153, 153, 153, 1),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Row(
                  children: const [
                    Spacer(),
                    Text(
                      'View Project',
                      style: TextStyle(
                        fontSize: 12,
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
                width: context.appSize.width * 0.50,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: ServiceCard(
                      image: 'assets/images/service1.png',
                      title: 'NFT Partnerships',
                      desc:
                          'この文章はダミーです。文字の大きさ、量、字間、行間等を確認するため\nに入れています。この文章はダミーです。',
                    ),
                  ),
                  Expanded(
                    child: ServiceCard(
                      image: 'assets/images/service2.png',
                      title: 'NFT Platforms',
                      desc:
                          'この文章はダミーです。文字の大きさ、量、字間、行間等を確認するため\nに入れています。この文章はダミーです。',
                    ),
                  ),
                ],
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
                ),
              ),
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
                children: const [
                  Expanded(
                    child: FeaturedCard(
                      image: 'assets/images/featured1.png',
                      desc: '【NTT docomo】アートアクアリウム\nGINZAでのメタバース×NFT企画',
                      fontsize: 14,
                    ),
                  ),
                  Expanded(
                    child: FeaturedCard(
                      image: 'assets/images/featured2.png',
                      desc: '【三井住友海上】NFTアート専用保険を開発',
                      fontsize: 14,
                    ),
                  ),
                  Expanded(
                    child: FeaturedCard(
                      image: 'assets/images/featured3.png',
                      desc:
                          '【PARCO】TAKERU AMANO \nEXHIBITION "VENUS"NFTコレクション\n企画・販売',
                      fontsize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor:
                        context.isDarkTheme ? Colors.white : Colors.black,
                    side: const BorderSide(
                      width: 1,
                      color: Colors.blue,
                    ),
                  ),
                  child: const Text('View More'),
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
                width: context.appSize.width * 0.50,
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/company.png',
                    width: MediaQuery.of(context).size.width * 0.40,
                  ),
                  SizedBox(
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
          // Stack(
          //   children: [
          //     Image.asset('assets/images/Rectangle248.png'),
          //     Padding(
          //       padding: const EdgeInsets.all(70.0),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text(
          //             context.l10n.kTitle3,
          //             style: const TextStyle(
          //               fontSize: 64,
          //               color: Colors.white,
          //             ),
          //           ),
          //           const SizedBox(height: 10),
          //           const Text(
          //             'NFT・Web3プロジェクトに関する\nご依頼やご相談はこちらから',
          //             style: TextStyle(
          //               fontSize: 14,
          //               color: Colors.white,
          //             ),
          //           ),
          //           const SizedBox(height: 50),
          //           InkWell(
          //             onTap: () {},
          //             child: Container(
          //               decoration: BoxDecoration(
          //                 color: Colors.black,
          //                 border: Border.all(color: Colors.blue, width: 1),
          //                 borderRadius: BorderRadius.circular(50),
          //               ),
          //               child: SizedBox(
          //                 height: 50,
          //                 width: context.appSize.width * 0.1,
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.center,
          //                   children: const [
          //                     Text(
          //                       'Contact',
          //                       style: TextStyle(
          //                         color: Colors.white,
          //                       ),
          //                     )
          //                   ],
          //                 ),
          //               ),
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Rectangle248.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.kTitle3,
                    style: const TextStyle(
                      fontSize: 64,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'NFT・Web3プロジェクトに関する\nご依頼やご相談はこちらから',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 50),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.blue, width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: SizedBox(
                        height: 50,
                        width: context.appSize.width * 0.15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
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
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    context.isDarkTheme
                        ? 'assets/images/logo.png'
                        : 'assets/images/logo_light.png',
                    width: 80,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      Text('Follow Us : '),
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
              const Spacer(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
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
                    const Text(
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Project',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'Company',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Contact',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
            children: [
              Text(
                '© HARTi inc. All Rights Reserved. ',
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
              const VerticalDivider(),
              Text(
                'プライバシーポリシー',
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
