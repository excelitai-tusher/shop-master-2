import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class ProductRequest extends StatefulWidget {
  const ProductRequest({Key? key}) : super(key: key);

  @override
  _ProductRequestState createState() => _ProductRequestState();
}

class _ProductRequestState extends State<ProductRequest> {
  TextEditingController nameController = TextEditingController();
  String UserName = '';

   late FileImage imageFile;
  _openGallery() async{
    final pickedFile = await ImagePicker().getImage(
        source: ImageSource.gallery,
        //imageFile = await ImagePicker.platform;
    );
  }

  _openCamera() async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      //imageFile = await ImagePicker.platform;
    );
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    // ignore: missing_return
    return showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Make a choice!"),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              GestureDetector(
                child: Text("Gallery"),
                onTap: (){
                  _openGallery();
                },
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              GestureDetector(
                child: Text("Camera"),
                onTap: (){
                  _openCamera();
                },
              ),
            ],
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_outlined, size: 25, color: Colors.black)),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text("Make Product Request",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Can't find your desired items in the shop?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(
                  height: 60,
                  child: ElevatedButton(
                    onPressed: (){
                      _showChoiceDialog(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("images/Tree icon.JPG"), width: 50,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Upload image",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("Choose image of your shopping list from gallery",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text("Give us a list of products",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           height: 20,
                           width: 20,
                           decoration: BoxDecoration(
                             color: Color(0xffF2F2F2),
                             borderRadius: new BorderRadius.circular(8.0),
                             boxShadow: [
                               BoxShadow(
                                 color: Color(0xffF2F2F2),
                                 blurRadius: 30,
                                 offset:
                                 Offset(0, 15), // Shadow position
                               ),
                             ],
                           ),
                           child: Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                             child: Text("1",
                               style: TextStyle(
                                 color: Colors.black,
                                 fontSize: 12,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                           ),
                         ),
                       Text(
                         "Rice",
                         style: TextStyle(
                           color: Colors.grey,
                           fontWeight: FontWeight.bold,
                           fontSize: 16,
                         ),
                       ),
                     SizedBox(width: 5,),
                     Icon(Icons.radio_button_on, size: 10, color: Colors.green,),
                   ],
                 ),
               ],
              ),
              SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Color(0xffF2F2F2),
                          borderRadius: new BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffF2F2F2),
                              blurRadius: 30,
                              offset:
                              Offset(0, 15), // Shadow position
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          child: Text("2",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Eggs",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(Icons.radio_button_on, size: 10, color: Colors.green,),
                    ],
                  ),
                ],
              ),
                SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: new BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffF2F2F2),
                                blurRadius: 30,
                                offset:
                                Offset(0, 15), // Shadow position
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                            child: Text("3",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Oil",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.radio_button_on, size: 10, color: Colors.green,),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: new BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffF2F2F2),
                                blurRadius: 30,
                                offset:
                                Offset(0, 15), // Shadow position
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                            child: Text("4",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Chicken",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.radio_button_on, size: 10, color: Colors.green,),
                      ],
                    ),
                  ],
                ),
                //SizedBox(height: 5,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Color(0xffF2F2F2),
                            borderRadius: new BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffF2F2F2),
                                blurRadius: 30,
                                offset:
                                Offset(0, 15), // Shadow position
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                            child: Text("5",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        SizedBox(
                          height: 50,
                          width: 150,
                          child: TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter Item',
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.radio_button_on, size: 10, color: Colors.green,),
                      ],
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 10),
                      child: Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("+ Add new item",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      child: SizedBox(
                        height: 40,
                        width: 200,
                        child: ElevatedButton(
                          onPressed: (){
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => Search1()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff3DC73C),
                          ),
                          child: Text("Submit",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ]
     ),
   );
  }
}
