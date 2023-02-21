import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0, right: 20.0, left: 20.0),
        child: ListView(
          children: [
            //verimsiz gösterim yapacagim amele gibi onemli olan tasarim su an
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.grey,
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 20.0),
                        child: Container(
                          width: 175,
                          height: 160,
                          child: Column(
                            children: [
                              Text(
                                "Kitap Adı",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Yazar: XXX",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Açıklama: lorem ipsum dolor sit amet",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0, left: 10.0),
                  child: Container(
                    width: 140,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Colors.grey,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65.0, bottom: 20.0),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Icon(
                        Icons.heart_broken_rounded), //düzgün ikon lazım paketle
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.grey,
                  )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, top: 20.0),
                        child: Container(
                          width: 175,
                          height: 160,
                          child: Column(
                            children: [
                              Text(
                                "Kitap Adı",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Yazar: XXX",
                                        style: TextStyle(fontSize: 16,),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Açıklama: lorem ipsum dolor sit amet",
                                        style: TextStyle(fontSize: 16,),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0, left: 10.0),
                  child: Container(
                    width: 140,
                    height: 180,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("images/book-cover.jpg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Colors.grey,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65.0, bottom: 20.0),
                  child: Container(

                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Icon(
                        Icons.heart_broken_rounded,color: Colors.green,), //düzgün ikon lazım paketle
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
