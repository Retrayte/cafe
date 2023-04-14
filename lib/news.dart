import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('News and Promotions',), centerTitle: true,),
      body: ListView(
        children: [
          SizedBox(height: 70, child: Center(child: Text('Акции', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)),),
          Container(
          margin: EdgeInsets.only(left: 8, right: 8),
          height: 130,//Height of your promo-banner
          width: MediaQuery.of(context).size.width - 16,
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        gradient: const LinearGradient(
          colors: [
            Colors.brown,
            Color.fromARGB(255, 245, 215, 204),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.3, 0.9],
          tileMode: TileMode.repeated,
        ),
          ),
        child: ClipRect(
          child: Banner(
              message: "25% скидка",//promotion message
              location: BannerLocation.topStart, //location of message on container
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Завтрачник",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Text(
                          "Завтраки по скидке каждый вторник",
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 2, bottom: 2),
                              child: Text(
                                "Купить ",
                                style: TextStyle(fontSize: 12),
                              ),
                            )),
                      ],
                    ),
                    Image.asset("assets/food.jpg", height: 80)
                  ],
                ),
             ),
             
        )
      ),
      SizedBox(height: 20,),
      Container(
          margin: EdgeInsets.only(left: 8, right: 8),
          height: 130,//Height of your promo-banner
          width: MediaQuery.of(context).size.width - 16,
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 151, 75, 47),
            Color.fromARGB(255, 245, 215, 204),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.3, 0.9],
          tileMode: TileMode.repeated,
        ),
          ),
        child: ClipRect(
          child: Banner(
              message: "50% скидка",//promotion message
              location: BannerLocation.topStart, //location of message on container
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Рыбный день",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Text(
                          "Вся рыба по ограниченной цене",
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 2, bottom: 2),
                              child: Text(
                                "Купить сейчас",
                                style: TextStyle(fontSize: 12),
                              ),
                            )),
                      ],
                    ),
                    Image.asset("assets/food.jpg", height: 80)
                  ],
                ),
             ),
             
        )
      ),
      SizedBox(height: 100, child: Center(child: Text('Новости', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)),),
      Container(
          margin: EdgeInsets.only(left: 8, right: 8),
          height: 130,//Height of your promo-banner
          width: MediaQuery.of(context).size.width - 16,
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 184, 75, 36),
            Color.fromARGB(255, 245, 215, 204),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.3, 0.9],
          tileMode: TileMode.repeated,
        ),
          ),
        child: ClipRect(
          child: 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Обновление приложения",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Text(
                          "Добавлено новое меню",
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 194, 157, 38),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 2, bottom: 2),
                              child: Text(
                                "Посмотреть",
                                style: TextStyle(fontSize: 12),
                              ),
                            )),
                      ],
                    ),
                    Image.asset("assets/food.jpg", height: 80)
                  ],
                ),
             
             
        )
      ),
       SizedBox(height: 20,),
      Container(
          margin: EdgeInsets.only(left: 8, right: 8),
          height: 130,//Height of your promo-banner
          width: MediaQuery.of(context).size.width - 16,
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 184, 75, 36),
            Color.fromARGB(255, 245, 215, 204),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.3, 0.9],
          tileMode: TileMode.repeated,
        ),
          ),
        child: ClipRect(
          child: 
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Новая точка кафетерия",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Text(
                          "Мы открылись на новом месте!",
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 194, 157, 38),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 2, bottom: 2),
                              child: Text(
                                "Посмотреть на карте",
                                style: TextStyle(fontSize: 12),
                              ),
                            )),
                      ],
                    ),
                    Image.asset("assets/food.jpg", height: 80)
                  ],
                ),
             
             
        )
      ),
      ]
      )
    );
  }
}

