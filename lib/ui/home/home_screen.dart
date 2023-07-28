import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/components/loading_dialog.dart';
import 'package:restaurant_app/data/service/api_constants.dart';
import 'package:restaurant_app/domain/entity/restaurants/restaurants.dart';
import 'package:restaurant_app/ui/favorite/favorite_screen.dart';
import 'package:restaurant_app/ui/home/home_provider.dart';
import 'package:restaurant_app/ui/setting/setting_screen.dart';

class HomeScreen extends HookWidget {
  static const routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return Consumer<HomeProvider>(
      builder: (contexts, value, child) {
        return Scaffold(
          backgroundColor: const Color.fromRGBO(229, 229, 234, 1),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, top: 16, bottom: 8, right: 8),
                  child: Row(
                    children: [
                      const Column(
                        children: [
                          Text(
                            'Restaurant App',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Here list of restaurant',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, FavoriteScreen.routeName);
                          },
                          icon: const Icon(Icons.favorite)),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, SettingScreen.routeName);
                          },
                          icon: const Icon(Icons.settings)),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Material(
                    color: Colors.white,
                    type: MaterialType.card,
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0, bottom: 0),
                      child: TextFormField(
                        controller: controller,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.go,
                        onChanged: (v) {
                          value.searchRestaurant(v);
                        },
                        decoration: const InputDecoration(
                          contentPadding:
                              EdgeInsets.only(left: 16, right: 16, top: 10),
                          hintText: 'Find a Restaurant or Menu!',
                          suffixIcon: Icon(Icons.search_rounded),
                          isDense: true,
                          hintStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                          fillColor: Colors.transparent,
                          filled: true,
                          errorStyle: TextStyle(
                            height: 0,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: _listRestaurant(value),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _listRestaurant(HomeProvider value) {
    return Stack(
      children: [
        if (value.state == HomeState.loading ||
            value.state == HomeState.success) ...{
          if (value.listRestaurants.restaurant?.isEmpty == true) ...{
            const Center(
              child: Text('No items found'),
            )
          } else ...{
            ListView.builder(
              itemBuilder: (context, index) {
                return ItemRestaurant(
                    restaurant: value.listRestaurants.restaurant?[index] ??
                        Restaurants(),
                    onTap: () {
                      value.getDetailRestaurant(
                          value.listRestaurants.restaurant?[index].id ?? '',
                          context);
                    });
              },
              itemCount: value.listRestaurants.restaurant?.length,
            )
          },
          if (value.state == HomeState.loading) ...{
            const Center(
              child: LoadingDialog(),
            )
          }
        } else ...{
          Center(
            child: Text(value.message),
          )
        }
      ],
    );
  }
}

class ItemRestaurant extends StatelessWidget {
  final Restaurants restaurant;
  final Function() onTap;

  const ItemRestaurant(
      {super.key, required this.restaurant, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              height: 150,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "${ApiConstants.BASE_URL}${ApiConstants.GET_IMAGE}${restaurant.pictureId}",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          restaurant.name ?? '',
                          maxLines: 2,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_pin,
                            color: Colors.grey,
                          ),
                          Text(
                            restaurant.city ?? '',
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          Text(
                            restaurant.rating.toString(),
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
