import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xetia_boilerplate/src/core/context/localization_context.dart';
import 'package:xetia_boilerplate/src/core/extensions/country_extensions.dart';
import 'package:xetia_boilerplate/src/core/localizations/generated/app_localizations.dart';
import 'package:xetia_boilerplate/src/models/image_generator.dart';
import 'package:xetia_boilerplate/src/ui/pages/home/responsive/desktop.dart';
import 'package:xetia_boilerplate/src/ui/pages/home/responsive/mobile.dart';
import 'package:xetia_core/xetia_core.dart';
import 'package:xetia_widgets/xetia_widgets.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double halfWidth = 0;
  double width05 = 0;
  double width90 = 0;
  double width40 = 0;
  double width60 = 0;

  @override
  Widget build(BuildContext context) {
    final themeModeSetting = context.watch<ThemeModeSetting>();

    final localeRepository = context.watch<LocaleSetting>();

    halfWidth = MediaQuery.of(context).size.width * 0.5;
    width05 = MediaQuery.of(context).size.width * 0.05;
    width90 = MediaQuery.of(context).size.width * 0.9;
    width40 = MediaQuery.of(context).size.width * 0.4;
    width60 = MediaQuery.of(context).size.width * 0.6;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Image.asset(
          context.isDarkTheme
              ? 'assets/images/logo.png'
              : 'assets/images/logo_light.png',
          width: 108,
        ),
        // title: SvgPicture.asset(
        //   'assets/logo/logo.svg',
        //   semanticsLabel: 'harti logo',
        //   color: Colors.black,
        // ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: DropdownButton<String>(
        //       value: localeRepository.value,
        //       underline: Container(),
        //       items: [
        //         for (final language in AppLocalizations.supportedLocales
        //             .map<String>((e) => e.languageCode)
        //             .toList())
        //           DropdownMenuItem(
        //             value: language,
        //             child: CountryFlagWidget(
        //               countryCode: getLanguageFlagCode(language),
        //               emptyCountryUrl: kEmptyImageLink,
        //             ),
        //           ),
        //       ],
        //       onChanged: (value) {
        //         localeRepository.setValue(value ?? 'en');
        //       },
        //     ),
        //   ),
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: IconButton(
        //       icon: context.isDarkTheme
        //           ? const Icon(
        //               Icons.dark_mode,
        //             )
        //           : const Icon(
        //               Icons.light_mode,
        //             ),
        //       onPressed: () {
        //         context.isDarkTheme
        //             ? themeModeSetting.lightMode()
        //             : themeModeSetting.darkMode();
        //       },
        //     ),
        //   ),
        // ],
        actions: context.isPhone | context.isSmallPhone
            ? null
            : [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    context.l10n.kWhyNFT,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    context.l10n.kServices,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    context.l10n.kProject,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    context.l10n.kCompany,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(context.l10n.kContact),
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
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: DropdownButton<String>(
                    value: localeRepository.value,
                    underline: Container(),
                    items: [
                      for (final language in AppLocalizations.supportedLocales
                          .map<String>((e) => e.languageCode)
                          .toList())
                        DropdownMenuItem(
                          value: language,
                          child: CountryFlagWidget(
                            countryCode: getLanguageFlagCode(language),
                            emptyCountryUrl: kEmptyImageLink,
                          ),
                        ),
                    ],
                    onChanged: (value) {
                      localeRepository.setValue(value ?? 'en');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: IconButton(
                    icon: context.isDarkTheme
                        ? const Icon(
                            Icons.dark_mode,
                          )
                        : const Icon(
                            Icons.light_mode,
                          ),
                    onPressed: () {
                      context.isDarkTheme
                          ? themeModeSetting.lightMode()
                          : themeModeSetting.darkMode();
                    },
                  ),
                ),
              ],
      ),
      endDrawer: context.isPhone | context.isSmallPhone
          ? Drawer(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Image.asset(
                      context.isDarkTheme
                          ? 'assets/images/logo.png'
                          : 'assets/images/logo_light.png',
                      width: 80,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        context.l10n.kWhyNFT,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        context.l10n.kServices,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        context.l10n.kProject,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        context.l10n.kCompany,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton<String>(
                            value: localeRepository.value,
                            underline: Container(),
                            items: [
                              for (final language in AppLocalizations
                                  .supportedLocales
                                  .map<String>((e) => e.languageCode)
                                  .toList())
                                DropdownMenuItem(
                                  value: language,
                                  child: CountryFlagWidget(
                                    countryCode: getLanguageFlagCode(language),
                                    emptyCountryUrl: kEmptyImageLink,
                                  ),
                                ),
                            ],
                            onChanged: (value) {
                              localeRepository.setValue(value ?? 'en');
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: context.isDarkTheme
                                ? const Icon(
                                    Icons.dark_mode,
                                  )
                                : const Icon(
                                    Icons.light_mode,
                                  ),
                            onPressed: () {
                              context.isDarkTheme
                                  ? themeModeSetting.lightMode()
                                  : themeModeSetting.darkMode();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(context.l10n.kContact),
                      style: OutlinedButton.styleFrom(
                        foregroundColor:
                            context.isDarkTheme ? Colors.white : Colors.black,
                        side: const BorderSide(
                          width: 1,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          : null,
      body: context.isPhone | context.isSmallPhone
          ? mobileView(
              halfWidth: halfWidth,
              width05: width05,
              width90: width90,
            )
          : desktopView(
              halfWidth: halfWidth,
              width05: width05,
              width90: width90,
              width40: width40,
              width60: width60,
            ),
    );
  }
}
