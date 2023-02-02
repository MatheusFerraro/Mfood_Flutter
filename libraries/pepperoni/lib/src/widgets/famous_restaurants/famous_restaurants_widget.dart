import 'package:flutter/material.dart';

class FamousRestaurantsWidget extends StatelessWidget {
  final List<FamousRestaurantsItem> restaurants;

  const FamousRestaurantsWidget({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Famosos no Mfood',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              TextButton(child: const Text('Ver mais'), onPressed: () {}),
            ],
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 8),
            itemCount: restaurants.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width / 5,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width / 12,
                    backgroundImage: NetworkImage(
                      restaurants[index].urlImage,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    restaurants[index].name,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FamousRestaurantsItem {
  final String urlImage;
  final int id;
  final String name;

  FamousRestaurantsItem({
    required this.urlImage,
    required this.id,
    required this.name,
  });
}
