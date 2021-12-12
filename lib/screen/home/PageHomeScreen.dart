import 'package:flutter/material.dart';

class PageHomeScreen extends StatelessWidget {
  const PageHomeScreen({
    Key key,
  }) : super(key: key);
  //search
  void _searchAction() {
    print("search");
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120), // Set this height
          child: Container(
            height: 80,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text("For Health",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 27,
                        )),
                  ),
                ),
                Container(
                  width: width * 0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.search, size: 28),
                        onPressed: _searchAction,
                      ),
                      IconButton(
                        icon: Icon(Icons.add_box_sharp, size: 28),
                        onPressed: _searchAction,
                      ),
                      IconButton(
                        icon: Icon(Icons.search, size: 28),
                        onPressed: _searchAction,
                      ),
                      IconButton(
                        icon: Icon(Icons.notification_important, size: 28),
                        onPressed: _searchAction,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: Column(children: [
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.grey[300],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemListHome();
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}

class ItemListHome extends StatelessWidget {
  const ItemListHome();
  //action more
  void _actionMore() {
    print("More");
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/images/avatar.jpg"),
                      ),
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Nguyen Le Hong Van",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("12/12/2021",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(121, 143, 172, 1))),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  size: 24,
                ),
                onPressed: _actionMore,
              ),
            ],
          ),
          Container(
            width: width,
            height: 240,
            child: Image.asset(
              "assets/images/avatar.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Container(
              width: width,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Các Marker mới trong chẩn đoán và điều trị Viêm Gan B - hepb.vn",
                  style: TextStyle(fontSize: 16),
                ),
              )),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.blue[200],
                          size: 18,
                        ),
                        Text("6")
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        "1 bình luận",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(121, 143, 172, 1)),
                      ),
                      Text("2 lượt chia sẻ",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(121, 143, 172, 1)))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 10),
            child: SizedBox(
              height: 1,
              child: Container(
                color: Colors.grey[500],
              ),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                      size: 18,
                    ),
                    Text("Thích")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.comment,
                      color: Colors.grey,
                      size: 18,
                    ),
                    Text("Bình Luận")
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share_rounded,
                      color: Colors.grey,
                      size: 18,
                    ),
                    Text("Chia sẻ")
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 10),
            child: SizedBox(
              height: 1,
              child: Container(
                color: Colors.grey[500],
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                  child: Container(
                    height: 30,
                    width: 30,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/avatar.jpg"),
                    ),
                  ),
                ),
                Container(
                  width: width - 80,
                  height: 50,
                  margin: const EdgeInsets.only(
                      top: 5, bottom: 10, left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: Colors.tealAccent[100],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: width * 0.5,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              hintStyle: TextStyle(fontSize: 16),
                              hintText: 'Viết bình luận',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(left: 15)),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(Icons.face, size: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(Icons.camera_alt, size: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(Icons.gif, size: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(Icons.book, size: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
