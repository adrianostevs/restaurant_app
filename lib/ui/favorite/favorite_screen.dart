import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/components/loading_dialog.dart';
import 'package:restaurant_app/data/datasource/restaurant_datasource/restaurant_datasource_impl.dart';
import 'package:restaurant_app/data/local/database/database_helper.dart';
import 'package:restaurant_app/data/repository/restaurant_repository_impl.dart';
import 'package:restaurant_app/data/service/remote_client.dart';
import 'package:restaurant_app/domain/usecase/get_detail_restaurant/get_detail_restaurant_interactor.dart';
import 'package:restaurant_app/ui/favorite/favorite_provider.dart';

import '../home/home_screen.dart';

class FavoriteScreen extends StatefulWidget {
  static const routeName = '/favorite';
  const FavoriteScreen({super.key});

  @override
  State<StatefulWidget> createState() => _FavoriteScreen();
}

class _FavoriteScreen extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final Widget _widget = ChangeNotifierProvider<FavoriteProvider>(
      create: (_) => FavoriteProvider(
          remoteClient: RemoteClient(),
          dataSource: RestaurantDatasourceImpl(RemoteClient()),
          restaurantRepository: RestaurantRepositoryImpl(
              RestaurantDatasourceImpl(RemoteClient())),
          getDetailRestaurantUsecase: GetDetailRestaurantInteractor(
              RestaurantRepositoryImpl(
                  RestaurantDatasourceImpl(RemoteClient()))),
          databaseHelper: DatabaseHelper()),
      child: const FavoritePage(),
    );
    return _widget;
  }
}

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 234, 1),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark, //Android
            statusBarBrightness: Brightness.light //iOS
            ),
        title: const Text(
          'Favorites',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Consumer<FavoriteProvider>(builder: (context, value, child) {
        return Column(
          children: [
            Expanded(
              child: _listRestaurant(value, context),
            )
          ],
        );
      }),
    );
  }

  Widget _listRestaurant(FavoriteProvider value, BuildContext contexts) {
    return Stack(
      children: [
        if (value.state == FavoriteState.noData) ...{
          const Center(
            child: Text('No favorite items'),
          )
        } else if (value.state == FavoriteState.hasData) ...{
          ListView.builder(
            itemBuilder: (context, index) {
              return ItemRestaurant(
                onTap: () {
                  value.getDetailRestaurant(
                      value.listRestaurants[index].id ?? '', contexts);
                },
                restaurant: value.listRestaurants[index],
              );
            },
            itemCount: value.listRestaurants.length,
          )
        },
        if (value.state == FavoriteState.loading) ...{
          const Center(
            child: LoadingDialog(),
          )
        }
      ],
    );
  }
}
