import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/components/loading_dialog.dart';
import 'package:restaurant_app/data/datasource/review_datasource/review_datasource_impl.dart';
import 'package:restaurant_app/data/repository/review_repository_impl.dart';
import 'package:restaurant_app/data/service/remote_client.dart';
import 'package:restaurant_app/domain/entity/add_review/add_review.dart';
import 'package:restaurant_app/domain/entity/categories/categories.dart';
import 'package:restaurant_app/domain/entity/customer_reviews/customer_reviews.dart';
import 'package:restaurant_app/domain/usecase/add_review/add_review_interactor.dart';
import 'package:restaurant_app/ui/detail/detail_provider.dart';

import '../../data/service/api_constants.dart';
import '../../domain/entity/restaurants/restaurants.dart';

class DetailScreen extends StatefulWidget {
  final Restaurants restaurant;
  static const routeName = '/detail';

  const DetailScreen({super.key, required this.restaurant});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DetailProvider>(
        create: (_) => DetailProvider(
            remoteClient: RemoteClient(),
            dataSource: ReviewDatasourceImpl(RemoteClient()),
            reviewRepository:
                ReviewRepositoryImpl(ReviewDatasourceImpl(RemoteClient())),
            addReviewUsecase: AddReviewInteractor(
                ReviewRepositoryImpl(ReviewDatasourceImpl(RemoteClient())))),
        child: DetailPage(
          restaurant: widget.restaurant,
        ));
  }
}

class _ItemFoodDrink extends StatelessWidget {
  final Categories menu;
  final Color color;

  const _ItemFoodDrink({required this.menu, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Center(
        child: Text(
          menu.name ?? '',
          style: const TextStyle(
              fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }
}

class _ItemReview extends StatelessWidget {
  final CustomerReviews review;

  const _ItemReview({required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black38, width: 2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                review.name ?? '',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                review.date ?? '',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            thickness: 1,
            height: 1,
            color: Colors.black38,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(review.review ?? ''),
        ],
      ),
    );
  }
}

class DetailPage extends StatefulHookWidget {
  final Restaurants restaurant;

  const DetailPage({super.key, required this.restaurant});

  @override
  State<StatefulWidget> createState() => _DetailPage();
}

class _DetailPage extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final reviewController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Consumer<DetailProvider>(builder: (context, value, _) {
          if (value.listCustomerReviews.isEmpty) {
            value.setReview(widget.restaurant.customerReviews ?? []);
          }
          return Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                      "${ApiConstants.BASE_URL}${ApiConstants.GET_IMAGE}${widget.restaurant.pictureId}"),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      widget.restaurant.name ?? '',
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
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
                          widget.restaurant.city ?? '',
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
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.grey,
                            ),
                            Text(
                              widget.restaurant.rating.toString(),
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
                      widget.restaurant.description ?? '',
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
                            menu: widget.restaurant.menus?.foods?[index] ??
                                Categories(),
                            color: Colors.orange,
                          );
                        },
                        itemCount: widget.restaurant.menus?.foods?.length,
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
                            menu: widget.restaurant.menus?.drinks?[index] ??
                                Categories(),
                            color: Colors.green,
                          );
                        },
                        itemCount: widget.restaurant.menus?.drinks?.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
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
                      'Add Review',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
                          controller: nameController,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          onChanged: (v) {},
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 16, right: 16, top: 10, bottom: 10),
                            hintText: 'John Doe',
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
                            labelText: 'Your Name',
                            labelStyle: TextStyle(color: Colors.black38),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black38),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            errorBorder: InputBorder.none,
                          ),
                        ),
                      ),
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
                          controller: reviewController,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          onChanged: (v) {},
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 16, right: 16, top: 10, bottom: 10),
                            hintText: 'Good Food, Good Mood!',
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
                            labelText: 'Your Review',
                            labelStyle: TextStyle(color: Colors.black38),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.black38),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            errorBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                    child: MaterialButton(
                      onPressed: () {
                        value.addReview(
                            AddReview(
                                id: widget.restaurant.id ?? '',
                                name: nameController.text.toString(),
                                review: reviewController.text.toString()),
                            context);
                        nameController.text = '';
                        reviewController.text = '';
                      },
                      color: Colors.blue,
                      elevation: 0,
                      minWidth: double.infinity,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      height: 48,
                      child: _buttonContent(value),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
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
                      'Reviews',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  if (value.listCustomerReviews.isEmpty) ...{
                    const Text(
                      'No Reviews yet',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  } else ...{
                    ListView.builder(
                      reverse: true,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 0),
                      itemBuilder: (context, index) {
                        return _ItemReview(
                            review: value.listCustomerReviews[index]);
                      },
                      itemCount: value.listCustomerReviews.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                    )
                  },
                  const SizedBox(
                    height: 32,
                  ),
                ],
              ),
              if (value.state == DetailState.loading) ...{
                const Center(
                  child: LoadingDialog(),
                ),
              }
            ],
          );
        }),
      ),
    );
  }

  Widget _buttonContent(DetailProvider value) {
    if (value.state == DetailState.loading) {
      return const CircularProgressIndicator(
        color: Colors.white,
      );
    } else {
      return const Text(
        'Submit Review',
        style: TextStyle(color: Colors.white),
      );
    }
  }
}
