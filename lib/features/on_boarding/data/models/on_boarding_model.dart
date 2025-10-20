import 'package:dalel/core/utils/app_assets.dart';


class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel({required this.imagePath, required this.title, required this.subTitle});
}

List<OnBoardingModel> onBoardingData = [
  OnBoardingModel(
   imagePath: AppAssets.assetsImagesOnBoarding1,
    title : 'Explore The history with Dalel in a smart way',
    subTitle: 'Using our app’s history libraries you can find many historical periods',
  ),
  OnBoardingModel(
    imagePath: AppAssets.assetsImagesOnBoarding2,
    title: 'From every placeon earth',
    subTitle: 'A big variety of ancient placesfrom all over the world',
  ),
  OnBoardingModel(
    imagePath: AppAssets.assetsImagesOnBoarding3,
    title: 'Using modern AI technologyfor better user experience',
    subTitle: 'AI provide recommendations and helps you to continue the search journey', 
  ),
];