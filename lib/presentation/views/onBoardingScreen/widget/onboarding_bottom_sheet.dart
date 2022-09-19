// import 'package:flutter/material.dart';

// import '../../../constants/color_constant.dart';
// import '../../../constants/image_values.dart';
// import '../../../constants/string_constants.dart';
// import '../../../constants/value_constant.dart';
// import '../../widgets/button_widget.dart';
// import '../../widgets/svg_images_widget.dart';

// class OnBoardingBottomSheet extends StatelessWidget {
//   const OnBoardingBottomSheet({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: ColorConstant.white,
//       height: AppSize.s100,
//       child: Column(
//         children: [
//           Align(
//             alignment: Alignment.centerRight,
//             child: TextButton(
//               child: Text(
//                 AppStrings.skip,
//                 style: Theme.of(context).textTheme.button,
//                 textAlign: TextAlign.right,
//               ),
//               onPressed: () {},
//             ),
//           ),
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: AppSize.s50,
//             color: ColorConstant.primaryColor,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ButtonWidget(
//                   onClick: () => {},
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                         horizontal: AppSize.s14, vertical: AppSize.s12),
//                     child: SvgImageWidget(
//                       imageName: ImageAssets.leftArrow,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   child: Row(
//                     children: [
//                       for (int i = 0; i < _list.length; i++)
//                         Padding(
//                           padding: EdgeInsets.all(AppPadding.p8),
//                           child: _getProperCircle(i),
//                         )
//                     ],
//                   ),
//                 ),
//                 ButtonWidget(
//                   onClick: () => {},
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                         horizontal: AppSize.s14, vertical: AppSize.s12),
//                     child: SvgImageWidget(
//                       imageName: ImageAssets.rightArrow,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _getProperCircle(int index) {
//     if (index == _currentIndex) {
//       return SvgImageWidget(imageName: ImageAssets.hollowCircle);
//     } else {
//       return SvgImageWidget(imageName: ImageAssets.solidCircle);
//     }
//   }
// }
