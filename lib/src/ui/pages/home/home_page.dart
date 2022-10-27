import 'package:flutter/material.dart';
import 'package:harti_landing_page/src/core/context/localization_context.dart';
import 'package:harti_landing_page/src/core/extensions/country_extensions.dart';
import 'package:harti_landing_page/src/core/localizations/generated/app_localizations.dart';
import 'package:harti_landing_page/src/models/image_generator.dart';
import 'package:harti_landing_page/src/ui/pages/home/responsive/desktop.dart';
import 'package:harti_landing_page/src/ui/pages/home/responsive/mobile.dart';
import 'package:provider/provider.dart';
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
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final themeModeSetting = context.watch<ThemeModeSetting>();

    final localeRepository = context.watch<LocaleSetting>();

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
        actions: (context.appSize.width <= 1000)
            ? null
            : [
                TextButton(
                  onPressed: () {
                    _scrollController.animateTo(
                      _scrollController.position.minScrollExtent,
                      duration: const Duration(seconds: 2),
                      curve: Curves.fastOutSlowIn,
                    );
                  },
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
                    onPressed: () {
                      _scrollController.animateTo(
                        _scrollController.position.maxScrollExtent,
                        duration: const Duration(seconds: 2),
                        curve: Curves.fastOutSlowIn,
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor:
                          context.isDarkTheme ? Colors.white : Colors.black,
                      side: const BorderSide(
                        width: 1,
                        color: Colors.blue,
                      ),
                    ),
                    child: Text(context.l10n.kContact),
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
      endDrawer: (context.appSize.width <= 1000)
          ? Drawer(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
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
                    padding: const EdgeInsets.all(20.0),
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
                      style: OutlinedButton.styleFrom(
                        foregroundColor:
                            context.isDarkTheme ? Colors.white : Colors.black,
                        side: const BorderSide(
                          width: 1,
                          color: Colors.blue,
                        ),
                      ),
                      child: Text(context.l10n.kContact),
                    ),
                  )
                ],
              ),
            )
          : null,
      body: context.isPhone | context.isSmallPhone
          ? const MobileView()
          : DesktopView(scroolController: _scrollController),
    );
  }
}
