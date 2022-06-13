import 'package:bpp_shop/islamic/provider/constants/app_style.dart';
import 'package:bpp_shop/islamic/provider/constants/size_configs.dart';
import 'package:bpp_shop/islamic/provider/model/onBoarding.dart';
import 'package:bpp_shop/islamic/screen/welcome_page.dart';
import 'package:flutter/material.dart';


class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

bool _changePageContent = false;

class _OnBoardingPageState extends State<OnBoardingPage> {

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      duration: Duration(microseconds: 400),
      margin: EdgeInsets.only(left: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          color: _currentPageIndex == index ? Colors.amber : Colors.grey,
          shape: BoxShape.circle),
    );
  }

  int _currentPageIndex = 0;


  @override
  Widget build(BuildContext context) {
    SizeConfigure().init(context);
    double sizeV = SizeConfigure.blockSizeV!;
    double sizeH = SizeConfigure.blockSizeH!;

    PageController _pageController = PageController(initialPage: 0);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: _changePageContent ? WelcomePage() : Column(

            children: [

              Expanded(
                flex: 9,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      _currentPageIndex = value;
                    });
                  },
                  controller: _pageController,
                  itemCount: splashScreenContent.length-1,
                  itemBuilder: (context, index) =>
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: sizeV * 40,
                            child: Image.asset(
                              splashScreenContent[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: sizeV * 4,
                          ),
                          Text(
                            splashScreenContent[index].title,
                            style: kTitleTextBlack,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: sizeV * 4,
                          ),
                          Text(splashScreenContent[index].subTitle,
                              style: kBodyText1, textAlign: TextAlign.center),
                        ],
                      ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      _currentPageIndex == splashScreenContent.length - 2
                          ? bottomRowGetStarted(context)
                          : bottomRowSkipNext(context,_pageController),
                    ],
                  ))
            ],
          )),
    );
  }

  Container bottomRowGetStarted(BuildContext context) {
    SizeConfigure().init(context);
    double sizeV = SizeConfigure.blockSizeV!;
    double sizeH = SizeConfigure.blockSizeH!;
    return Container(

      child: InkWell(
        onTap: () {
          setState(() {
            _changePageContent = true;
          });
        },
        child: Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: sizeH * 5,
            ),
            Text('Get Started',
              style: TextStyle(fontSize: 16, color: Colors.white),),
            SizedBox(
              width: sizeH * 5,
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
              size: 16,

            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      height: sizeV * 5.5,
      width: sizeH * 90,

    );
  }

  Row bottomRowSkipNext(BuildContext context,PageController _pageController) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        onBoardNavBtn(
            name: 'Skip',
            onPressed: () {
              setState(() {
                _changePageContent = true;
              });
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              // //         builder: (context) => SignInPage()));
              // Navigator.pushAndRemoveUntil(context,
              //     MaterialPageRoute(builder: (context) => SignInPage()), (
              //         route) => false);
            }),
        Row(
            children: List.generate(
              splashScreenContent.length - 1,
                  (index) => dotIndicator(index),
            )),
        onBoardNavBtn(
          name: "Next",
          onPressed: () {
            _pageController.nextPage(
                duration: Duration(milliseconds: 400),
                curve: Curves.easeInOut);
          },
        ),
      ],
    );
  }
}


class onBoardNavBtn extends StatelessWidget {
  const onBoardNavBtn({Key? key, required this.name, required this.onPressed})
      : super(key: key);
  final String name;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        name,
        style: TextStyle(color: Colors.amber,fontSize: 16,fontWeight: FontWeight.bold),
      ),
    );
  }
}
