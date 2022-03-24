import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SafeArea
    return SafeArea(
      // Scaffold Container
      child: Scaffold(
        // Menu Icon
        drawer: Drawer(),
        // Logos and action btns
        appBar: AppBar(
          title: Text('Kitchen Baba'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.add_shopping_cart),
            ),
          ],
        ),
        // Body Container
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),

              // Image slider
              SizedBox(
                width: Get.size.width,
                height: 150,
                // Carousel Slider imported from pub dev
                child: CarouselSlider(
                  options: CarouselOptions(height: 400.0),
                  items: [
                    'https://adi1623.files.wordpress.com/2017/02/thuppa-big1.jpg?w=574&h=302',
                    'https://c.ndtvimg.com/2019-10/9leii6r8_mutton-pepper-fry_625x300_21_October_19.jpg',
                    'https://kirbiecravings.com/wp-content/uploads/2022/03/4-ingredient-birthday-cake-2.jpg',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1RiR7gDh-vvboAK8ISSMvq5ycuovDD2ZihA&usqp=CAU',
                    'https://media-cdn.greatbritishchefs.com/media/z5coizqo/img63527.jpg?mode=crop&width=768&height=512'
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(color: Colors.amber),
                          child: Image.network(
                            i,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),

              // Banner
              ListTile(
                title: Text('Todays special'),
                subtitle: Text('Get 50% OFF'),
                trailing: Text(
                  'view all',
                  style: TextStyle(color: Colors.blue),
                ),
              ),

              // SizedBox(
              //   height: 10,
              // ),

              // Popular Items
              Container(
                width: Get.size.width,
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // Item Card
                    ItemCard(
                      itemImage:
                          'https://images.pexels.com/photos/7655112/pexels-photo-7655112.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      itemName: 'Mutton',
                      itemPrice: 'Rs.180',
                      itemDesc:
                          'It is a long esta fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
                    ),
                    ItemCard(
                      itemImage:
                          'https://images.pexels.com/photos/1487511/pexels-photo-1487511.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      itemName: 'Pasta',
                      itemPrice: 'Rs.60',
                      itemDesc:
                          'It is a long esta fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
                    ),
                    ItemCard(
                      itemImage:
                          'https://images.pexels.com/photos/2347311/pexels-photo-2347311.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      itemName: 'Ramen',
                      itemPrice: 'Rs.80',
                      itemDesc:
                          'It is a long esta fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
                    ),
                    ItemCard(
                      itemImage:
                          'https://images.pexels.com/photos/918581/pexels-photo-918581.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      itemName: 'Burger',
                      itemPrice: 'Rs.120',
                      itemDesc:
                          'It is a long esta fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
                    ),
                    ItemCard(
                      itemImage:
                          'https://images.pexels.com/photos/1146760/pexels-photo-1146760.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      itemName: 'Pizza',
                      itemPrice: 'Rs.250',
                      itemDesc:
                          'It is a long esta fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
                    ),
                  ],
                ),
              ),

              ListTile(
                title: Text('Pizza Items'),
                trailing: Text(
                  'view all',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget
class ItemCard extends StatelessWidget {
  final String itemImage;
  final String itemName;
  final String itemPrice;
  final String itemDesc;
  const ItemCard({
    required this.itemImage,
    required this.itemName,
    required this.itemPrice,
    required this.itemDesc,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Card(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              width: Get.size.width,
              child: Image.network(itemImage, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          itemName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          itemPrice,
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    itemDesc,
                    style: TextStyle(overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
