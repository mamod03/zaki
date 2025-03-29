
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:zaki/core/constant/routes.dart';
import 'package:zaki/view/screens/addProduct.dart';
import 'package:zaki/view/screens/home.dart';

List<GetPage<dynamic>>? routes = [
 

 
  GetPage(name: AppRoute.homepage, page: () => HomePage()),
  GetPage(name: AppRoute.addproduct, page: () => AddProduct()),

];
