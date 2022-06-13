import 'package:bpp_shop/islamic/screen/review.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TabBarScreen extends StatelessWidget {
  String? video;
  String details;
  TabBarScreen({this.video, required this.details});
  // const TabBarScreen({Key? key}) : super(key: key);
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'FRB7S74NURQ', // id youtube video
      flags: YoutubePlayerFlags(
        controlsVisibleAtStart: true,
        autoPlay: true,
        mute: false,
      ));
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: new Container(
            child: new TabBar(
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: Colors.grey,
              tabs: [new Text("Description"), new Text("Reviews")],
            ),
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 5, right: 5, top: 15),
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1)),
              child: ListView(children: [
                SizedBox(
                  height: 20,
                ),
                Html(
                  data: "${details}",

                  //style: TextStyle(fontSize: 14, color: Colors.black45),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: YoutubePlayer(
                    controller: _controller,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.blueAccent,
                  ),
                ),
              ]),
            ),
            new Column(
              children: <Widget>[
                //new Text("")
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Customer Reviews',
                      style: TextStyle(color: Colors.black),
                    ),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Review()));
                      },
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: MediaQuery.of(context).size.height*.2,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ListTile(
                            isThreeLine: true,
                            leading: CircleAvatar(
                              backgroundColor: Colors.greenAccent[400],
                              radius: 30,
                              backgroundImage: AssetImage("assets/smith.png"),
                            ),
                            title: Text(
                              "Amar Smith",
                              style: TextStyle(color: Colors.black),
                            ),
                            subtitle: Text(
                                "Lorem ipsum dolor sit amet, consectet ipiscing elit. Phasellus congue dolor sit at."),
                            trailing: Container(
                              width: MediaQuery.of(context).size.width * .1,
                              child: FittedBox(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                    ),
                                    Icon(
                                      Icons.star,
                                    ),
                                    Icon(
                                      Icons.star,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
