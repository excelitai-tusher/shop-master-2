class OnBoarding {
  final String title;
  final String subTitle;
  final String image;

  OnBoarding(
      {required this.title, required this.subTitle,required this.image});
}

List<OnBoarding> splashScreenContent = [
  OnBoarding(
      title: "Select your items anytime & anywhere",
      subTitle:
          "This is an amazing app for buying anything what you want to buy,"
          " just few steps go to buy your desire things.",
      image: "images/splash2.png"),
  OnBoarding(
      title: "Easy Payment",
      subTitle:
          "Just one step to go, just few steps go to buy your desire things.",
      image: "images/splash3.png"),
  OnBoarding(
      title: "Delivered right to your door",
      subTitle:
          "This is an amazing app for buying anything what you want to buy, just few steps go "
          "to buy your desire things.",
      image: "images/splash4.png"),
  OnBoarding(
      title: "Welcome",
      subTitle:
          "This is an amazing app for buying anything what you want to buy, "
          "just few steps go to buy your desire things.",
      image: "images/splash4.png"),
];
