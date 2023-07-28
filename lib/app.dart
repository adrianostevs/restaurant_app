import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/data/local/database/database_helper.dart';
import 'package:restaurant_app/data/local/pref/preferences_helper.dart';
import 'package:restaurant_app/domain/entity/restaurants/restaurants.dart';
import 'package:restaurant_app/domain/usecase/get_detail_restaurant/get_detail_restaurant_interactor.dart';
import 'package:restaurant_app/domain/usecase/search_restaurant/search_restaurant_interactor.dart';
import 'package:restaurant_app/ui/detail/detail_screen.dart';
import 'package:restaurant_app/ui/favorite/favorite_screen.dart';
import 'package:restaurant_app/ui/home/home_provider.dart';
import 'package:restaurant_app/ui/home/home_screen.dart';
import 'package:restaurant_app/ui/setting/setting_provider.dart';
import 'package:restaurant_app/ui/setting/setting_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/datasource/restaurant_datasource/restaurant_datasource.dart';
import 'data/datasource/restaurant_datasource/restaurant_datasource_impl.dart';
import 'data/repository/restaurant_repository_impl.dart';
import 'data/service/remote_client.dart';
import 'domain/repository/restaurant_repository.dart';
import 'domain/usecase/get_detail_restaurant/get_detail_restaurant_usecase.dart';
import 'domain/usecase/get_list_restaurant/get_list_restaurant_interactor.dart';
import 'domain/usecase/get_list_restaurant/get_list_restaurant_usecase.dart';
import 'domain/usecase/search_restaurant/search_restaurant_usecase.dart';

final RemoteClient remoteClient = RemoteClient();
final RestaurantDataSource restaurantDataSource =
    RestaurantDatasourceImpl(RemoteClient());
final RestaurantRepository restaurantRepository =
    RestaurantRepositoryImpl(RestaurantDatasourceImpl(RemoteClient()));
final GetListRestaurantUsecase getListRestaurantUsecase =
    GetListRestaurantInteractor(
        RestaurantRepositoryImpl(RestaurantDatasourceImpl(RemoteClient())));
final GetDetailRestaurantUsecase getDetailRestaurantUsecase =
    GetDetailRestaurantInteractor(
        RestaurantRepositoryImpl(RestaurantDatasourceImpl(RemoteClient())));
final SearchRestaurantUsecase searchRestaurantUsecase =
    SearchRestaurantInteractor(
        RestaurantRepositoryImpl(RestaurantDatasourceImpl(RemoteClient())));
final DatabaseHelper databaseHelper = DatabaseHelper();
final PreferencesHelper preferencesHelper =
    PreferencesHelper(preferences: SharedPreferences.getInstance());

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark, //Android
        statusBarBrightness: Brightness.light //iOS
        ));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => HomeProvider(
                remoteClient: remoteClient,
                dataSource: restaurantDataSource,
                restaurantRepository: restaurantRepository,
                getListRestaurantUsecase: getListRestaurantUsecase,
                getDetailRestaurantUsecase: getDetailRestaurantUsecase,
                searchRestaurantUsecase: searchRestaurantUsecase)),
        ChangeNotifierProvider(
            create: (_) =>
                SettingProvider(preferencesHelper: preferencesHelper)),
      ],
      child: MaterialApp(
        title: 'Restaurant App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          DetailScreen.routeName: (context) => DetailScreen(
              restaurant:
                  ModalRoute.of(context)?.settings.arguments as Restaurants),
          FavoriteScreen.routeName: (context) => const FavoriteScreen(),
          SettingScreen.routeName: (context) => const SettingScreen(),
        },
      ),
    );
  }
}
