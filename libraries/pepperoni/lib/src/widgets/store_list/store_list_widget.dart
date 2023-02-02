import 'package:flutter/material.dart';

class StoreList extends StatefulWidget {
  final List<StoreItem> stores;
  const StoreList({super.key, required this.stores});

  @override
  State<StoreList> createState() => _StoreListState();
}

class _StoreListState extends State<StoreList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Lojas',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.stores.length,
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemBuilder: ((context, index) {
              return StoreItemWidget(store: widget.stores[index]);
            }),
          )
        ],
      ),
    );
  }
}

class StoreItem {
  final String storeName;
  final String rate;
  final String price;
  final String time;
  final String kindOfItem;
  final String imageUrl;

  StoreItem({
    required this.storeName,
    required this.rate,
    required this.price,
    required this.time,
    required this.kindOfItem,
    required this.imageUrl,
  });
}

class StoreItemWidget extends StatelessWidget {
  final StoreItem store;

  const StoreItemWidget({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
                radius: 32, backgroundImage: NetworkImage(store.imageUrl)),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  store.storeName,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 14),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 14,
                      color: Color.fromARGB(255, 201, 201, 55),
                    ),
                    Text(
                      store.rate,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color.fromARGB(255, 201, 201, 55)),
                    ),
                    Text(
                      ' * ${store.kindOfItem} * 1.4 km',
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '${store.time}-${store.time} min * R\$ ${store.price}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 12),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.favorite_border),
          )
        ],
      ),
    );
  }
}
