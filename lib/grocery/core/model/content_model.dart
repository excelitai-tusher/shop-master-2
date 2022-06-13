class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image,  required this.title,  required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Select your items to buy',
      image: 'assets/Rectangle .png',
      discription: "Lorem ipsum dolor sit amet,consectetur \n adipiscing elit.Cursus gravide consectetur\nviverro odiao.Augue id cras facilis vitae  \n ipsum suspendisse adipiscing aliquet . "
  ),
  UnbordingContent(
      title: 'Order item from your shopping bag',
      image: 'assets/Rectangle .png',
      discription: "Lorem ipsum dolor sit amet,consectetur \n adipiscing elit.Cursus gravide consectetur\nviverro odiao.Augue id cras facilis vitae  \n ipsum suspendisse adipiscing aliquet . "
  ),
  UnbordingContent(
      title: 'Our system delivery item to you',
      image: 'assets/Rectangle .png',
      discription: "Lorem ipsum dolor sit amet,consectetur \n adipiscing elit.Cursus gravide consectetur\nviverro odiao.Augue id cras facilis vitae  \n ipsum suspendisse adipiscing aliquet . "
  ),
];