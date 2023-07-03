import 'package:flutter/material.dart';
import 'package:restaurant_app/data/model/list_menu.dart';

import '../../data/model/restaurant.dart';

class DetailScreen extends StatelessWidget {
  final Restaurant restaurant;
  static const routeName = '/detail';

  const DetailScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(restaurant.pictureId),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                restaurant.name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_pin,
                    color: Colors.grey,
                  ),
                  Text(
                    restaurant.city,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Text(
                    'About our Restaurant',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
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
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                thickness: 1,
                height: 1,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                restaurant.description,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                thickness: 1,
                height: 1,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Foods',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                height: 36,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return _ItemFoodDrink(
                      menu: restaurant.menu.foods[index],
                      color: Colors.orange,
                    );
                  },
                  itemCount: restaurant.menu.foods.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Drinks',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                height: 36,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return _ItemFoodDrink(
                      menu: restaurant.menu.drinks[index],
                      color: Colors.green,
                    );
                  },
                  itemCount: restaurant.menu.drinks.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemFoodDrink extends StatelessWidget {
  final ListMenu menu;
  final Color color;

  _ItemFoodDrink({required this.menu, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Center(
        child: Text(
          menu.name,
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }
}
