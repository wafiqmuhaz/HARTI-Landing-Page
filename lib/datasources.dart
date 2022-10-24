import 'package:xetia_blog_data_source/injector.dart';
import 'package:xetia_blog_data_source/xetia_blog_data_source.dart';
import 'package:xetia_delivery_data_source/injector.dart';
import 'package:xetia_delivery_data_source/xetia_delivery_data_source.dart';
import 'package:xetia_location_data_source/injector.dart';
import 'package:xetia_location_data_source/xetia_location_data_source.dart';
import 'package:xetia_models/injector.dart';
import 'package:xetia_models/xetia_models.dart';
import 'package:xetia_payment_data_source/injector.dart';
import 'package:xetia_payment_data_source/xetia_payment_data_source.dart';
import 'package:xetia_product_data_source/injector.dart';
import 'package:xetia_product_data_source/xetia_product_data_source.dart';
import 'package:xetia_pubsub_data_source/injector.dart';
import 'package:xetia_user_data_source/injector.dart';
import 'package:xetia_user_data_source/xetia_user_data_source.dart';

class DataSources {
  static void register() {
    XetiaBlogDataSource.usePackage();
    XetiaDeliveryDataSource.usePackage();
    XetiaLocationDataSource.usePackage();
    XetiaModels.usePackage();
    XetiaPaymentDataSource.usePackage();
    XetiaProductDataSource.usePackage();
    XetiaPubsubDataSource.usePackage();
    XetiaUserDataSource.usePackage();
  }
}
