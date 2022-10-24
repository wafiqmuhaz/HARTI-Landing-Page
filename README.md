<!-- # Project Boilerplate Web

projek ini adalah Boilerplate untuk platform web bertujuan,saat membuat project baru yg memakai package xetia jadi tidak perlu membuat project dari awal.

## Table of Contents

- [Getting Started](#start)
- [Command Project](#command)
- [Folder Structure](#folder)
- [Firebase Deploy](#firebase)
- [List Package Xetia](#package)

<br>

<a name="start"></a>

## Getting Started

1. Download atau clone repository

2. Tentukan menggunakan xetia atau harti services di pubspec services

![report4](https://user-images.githubusercontent.com/53244523/197020348-5caf38e3-1254-489a-adb3-d546985cafb0.PNG)

3. Jalankan command Started untuk mengisi metadata and features xetia

```dart
flutter pub run bin/started
```

4. Running web

```dart
flutter run -d chrome --web-port 3000
```

| atau bisa juga menjalankan debug port 3000 di vscode

<br>

<a name="command"></a>

## Command Project

### Language

```dart
flutter gen-l10n
```

### Staging or Production

```dart
flutter pub run bin/flavor staging //or production
```

### Update package xetia depedencies

```dart
flutter pub run bin/update_pubspec
```

### Update available features xetia

```dart
flutter pub run bin/features_available
```

contoh running commands

```
Make Available features auth (Yes/No) ?
yes
Make Available features POS (Yes/No) ?
yes
Make Available features Chat and Notification (Yes/No) ?
ye
Make Available features Purchase (Yes/No) ?
yes
Make Available features Wallet (Yes/No) ?
yes
make auth features ...
make pos features ...
make purhcase features ...
make wallet features ...
```

### Update metadata

```dart
flutter pub run bin/metadata
```

contoh running commands

```

Insert title metadata ?
title
Insert description metadata ?
desc
Insert path assets thumbnail metadata (/thumbnail) ?

Insert path assets splash metadata (icons/Icon-192.png) ?
icon
Insert path assets favicon metadata (favicon.png) ?
favicon
 ... make metadata with data ...

    'title': title,
    'description': desc,
    'image': /thumbnail,
    'splash': icon,
    'favicon': favicon,

```

<br>

<a name="folder"></a>

## Folder Structure

```

├───lib
│   └───src
│       ├───core
│       │   ├───context
│       │   ├───extensions
│       │   ├───localizations
│       │   │   ├───generated
│       │   │   └───l10n
│       │   ├───routes
│       │   └───utils
│       ├───models
│       ├───repositories
│       ├───services
│       └───ui
│           ├───pages
│           │   └───home
│           ├───theme
│           └───widgets
```

<br>
<a name="firebase"></a>

## Firebase

### Firebase Deploy

1. membuat firebase console di website firebase

2. ubah project default di file .firebaserc dengan targetId masing - masing

3. jalankan perintah ini

```
firebase init hosting
```

4. nantinya akan ada banyak yg harus di isi tapi yg harus di perhatikan itu yg ini lalu isi dengan build/web

```
? What do you want to use as your public directory? (public)
```

5. build web dengan mejalankan perintah ini

```
flutter build web
```

6. deploy project ke firebase dengan perintah

```
firebase deploy --only hosting
```

dokumentasi dari firebase nya ada disini
https://firebase.google.com/docs/hosting/quickstart

### Firebase Deploy Github actions

1. ubah project default di file .firebaserc dengan targetId masing - masing

2. ubah targetId yg ada di file firebase-deploy.yaml dengan targetId di firebase masing - masing

3. jalankan perintah ini untuk generate secret

```
firebase init hosting github
```

4. hapus file di folder .github/workflow selain yg firebase-deploy.yaml

5. copy secret di repo lalu paste di file firebase-deploy.yaml ke key firebaseServiceAccount

![report1](https://user-images.githubusercontent.com/53244523/197020746-880f9d8b-96bf-4d8e-a626-97694cfa83ad.PNG)

dokumentasi untuk action github workflow
https://github.com/marketplace/actions/deploy-to-firebase-hosting

<br>

<a name="package"></a>

## List Package Xetia

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_core#xetia_core

```yaml
xetia_core:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_widgets#xetia_widgets

```yaml
xetia_widgets:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_auth#xetia_auth

```yaml
xetia_auth:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/core/xetia_auth_interface#xetia_auth_interface

```yaml
xetia_auth_interface:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_state#xetia_state

```yaml
xetia_state:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/core/xetia_utils#xetia_utils

```yaml
xetia_utils:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/core/xetia_formatter#xetia_formatter

```yaml
xetia_formatter:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/core/xetia_chat_interface#xetia_chat_interface

```yaml
xetia_chat_interface:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_chat#xetia_chat

```yaml
xetia_chat:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_notification#xetia_notification

```yaml
xetia_notification:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_purchase#xetia_purchase

```yaml
xetia_purchase:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_pos#xetia_pos

```yaml
xetia_pos:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_documentation#xetia_documentation

```yaml
xetia_documentation:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_documentation_interface#xetia_documentation_interface

```yaml
xetia_documentation_interface:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_walletconnect#xetia_walletconnect

```yaml
xetia_walletconnect:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_wallet_interface#xetia_wallet_interface

```yaml
xetia_wallet_interface:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_wallet#xetia_wallet

```yaml
xetia_wallet:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_wallet_plugin#xetia_wallet_plugin

```yaml
xetia_wallet_plugin:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/datasources/xetia_pubsub_data_source#xetia_pubsub_data_source

```yaml
xetia_pubsub_data_source:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/datasources/packages/xetia_blog_data_source#xetia_blog_data_source

```yaml
xetia_blog_data_source:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/datasources/packages/xetia_product_data_source#xetia_product_data_source

```yaml
xetia_product_data_source:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/datasources/packages/xetia_user_data_source#xetia_user_data_source

```yaml
xetia_user_data_source:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/datasources/packages/xetia_payment_data_source#xetia_payment_data_source

```yaml
xetia_payment_data_source:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/datasources/packages/xetia_delivery_data_source#xetia_delivery_data_source

```yaml
xetia_delivery_data_source:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/datasources/packages/xetia_location_data_source#xetia_location_data_source

```yaml
xetia_location_data_source:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/datasources/packages/xetia_chat_data_source#xetia_chat_data_source

```yaml
xetia_chat_data_source:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/core/xetia_errors#xetia_errors

```yaml
xetia_errors:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/xetia_http#xetia_http

```yaml
xetia_http:
  hosted: https://pub.xetia.dev
  version: <version>
```

Dokumentasi package ini disini

https://github.com/jsc-app-2020/XETIA-Monorepo/tree/master/packages/core/xetia_models#xetia_models

```yaml
xetia_models:
  hosted: https://pub.xetia.dev
  version: <version>
``` -->


# HARTI landing page using Boilerplate