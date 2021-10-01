import 'package:app_filmes/app/modules/i_module.dart';
import 'package:app_filmes/modules/login/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class LoginModule implements IModule {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/login',
      page: () => LoginPage(),
    )
  ];
}
