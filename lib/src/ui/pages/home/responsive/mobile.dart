import 'package:flutter/material.dart';
import 'package:harti_landing_page/src/core/context/localization_context.dart';
import 'package:harti_landing_page/src/ui/pages/home/widgets/featured_card.dart';
import 'package:harti_landing_page/src/ui/pages/home/widgets/profile_list.dart';
import 'package:harti_landing_page/src/ui/pages/home/widgets/service_card.dart';
import 'package:xetia_widgets/xetia_widgets.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    Key? key,
  }) : super(key: key);

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
                    width: context.appSize.width * 0.90,
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
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Web3?????????????????????NFT???IP?????????????????????????????????????????????????????????',
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
                        '??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                        style: TextStyle(fontSize: 10, letterSpacing: 5),
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
                '??????????????????????????????????????????????????????????????????????????????',
                style: TextStyle(
                  fontSize: 8,
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
                width: context.appSize.width * 0.50,
              ),
              const SizedBox(
                height: 50,
              ),
              const ServiceCard(
                image: 'assets/images/service1.png',
                title: 'NFT Partnerships',
                desc: '???????????????????????????????????????????????????????????????????????????????????????????????????\n?????????????????????????????????????????????????????????',
              ),
              const SizedBox(
                height: 10,
              ),
              const ServiceCard(
                image: 'assets/images/service2.png',
                title: 'NFT Platforms',
                desc: '???????????????????????????????????????????????????????????????????????????????????????????????????\n?????????????????????????????????????????????????????????',
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
                  FeaturedCard(
                    image: 'assets/images/featured1.png',
                    desc: '???NTT docomo??????????????????????????????\nGINZA???????????????????????NFT??????',
                    fontsize: 5,
                  ),
                  FeaturedCard(
                    image: 'assets/images/featured2.png',
                    desc: '????????????????????????NFT??????????????????????????????',
                    fontsize: 5,
                  ),
                  FeaturedCard(
                    image: 'assets/images/featured3.png',
                    desc:
                        '???PARCO???TAKERU AMANO \nEXHIBITION "VENUS"NFT??????????????????\n???????????????',
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
                    width: MediaQuery.of(context).size.width * 0.4,
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
          Stack(
            children: [
              Image.asset('assets/images/Rectangle248.png'),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        context.l10n.kTitle3,
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'NFT???Web3??????????????????????????????\n???????????????????????????????????????',
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
                children: const [
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
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '?? HARTi inc. All Rights Reserved. ',
                style: TextStyle(
                  color: Colors.grey.withOpacity(0.7),
                  fontSize: 12,
                ),
              ),
              const VerticalDivider(),
              Text(
                '??????????????????????????????',
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
