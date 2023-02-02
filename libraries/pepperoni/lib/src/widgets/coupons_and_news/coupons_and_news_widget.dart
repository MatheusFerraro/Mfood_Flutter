import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CouponsWidget extends StatefulWidget {
  final List<String> imageList;
  const CouponsWidget({super.key, required this.imageList});

  @override
  State<CouponsWidget> createState() => _CoponsWidgetState();
}

class _CoponsWidgetState extends State<CouponsWidget> {
  late final pageController =
      PageController(viewportFraction: .9, initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: PageView.builder(
            controller: pageController,
            itemCount: widget.imageList.length,
            padEnds: false,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: 369 / 162,
                    child: Image.network(
                      widget.imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        AnimatedBuilder(
          animation: pageController,
          builder: (context, child) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.imageList.length,
              (index) {
                final isSelected = index == pageController.page?.ceil();
                return Padding(
                  padding: const EdgeInsets.all(2),
                  child: CircleAvatar(
                    backgroundColor:
                        isSelected ? Colors.black87 : Colors.black26,
                    radius: isSelected ? 3 : 2,
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
