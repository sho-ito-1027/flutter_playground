import 'package:flutter/material.dart';
import 'package:flutter_playground/gen/assets.gen.dart';
import 'package:flutter_playground/gen/colors.gen.dart';

class EachBoxFitPage extends StatelessWidget {
  const EachBoxFitPage({Key? key}) : super(key: key);

  static const margin8 = SizedBox(width: 8, height: 8);
  static const imageWidth = 120.0;
  static const imageHeight = 120.0;

  final boxFitList = BoxFit.values;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('each box fit'),
      ),
      body: ListView.builder(
        itemCount: boxFitList.length,
        itemBuilder: (context, index) {
          final boxFit = boxFitList[index];

          return Column(
            children: [
              margin8,
              Text(boxFit.toString()),
              margin8,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _imageHorizontal(boxFit),
                  _imageVertical(boxFit),
                  _imageSmall(boxFit),
                ],
              ),
              margin8,
              const Divider(height: 1),
            ],
          );
        },
      ),
    );
  }

  Widget _imageHorizontal(BoxFit fit) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorName.sampleRed,
        ),
      ),
      child: SizedBox(
        width: imageWidth,
        height: imageWidth,
        child: Assets.images.ghostHorizontal.image(
          fit: fit,
        ),
      ),
    );
  }

  Widget _imageVertical(BoxFit fit) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorName.sampleRed,
        ),
      ),
      child: SizedBox(
        width: imageWidth,
        height: imageWidth,
        child: Assets.images.ghostVertical.image(
          fit: fit,
        ),
      ),
    );
  }

  Widget _imageSmall(BoxFit fit) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorName.sampleRed,
        ),
      ),
      child: SizedBox(
        width: imageWidth,
        height: imageWidth,
        child: Assets.images.ghostSmall.image(
          fit: fit,
        ),
      ),
    );
  }
}
