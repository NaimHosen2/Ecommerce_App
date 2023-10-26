import 'package:flutter/material.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  TextEditingController SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyHome Pages"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Text("data"),
              TextField(
                  onTap: () {
                    SearchController.clear();
                  },
                  controller: SearchController,
                  decoration: InputDecoration(
                      hintText: "Enter your search",
                      suffixIcon: Icon(Icons.clear),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)))),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                child: ListView.separated(
                    itemBuilder: (context, indext) {
                      return MaterialButton(
                          color: Colors.blue,
                          child: Text("Naim Hosen"),
                          onPressed: () {});
                    },
                    separatorBuilder: (context, indext) {
                      return SizedBox(
                        width: 4,
                        height: 3,
                      );
                    },
                    itemCount: 1),
              ),
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, indext) {
                        return SizedBox(
                          height: 3,
                        );
                      },
                      separatorBuilder: (context, indext) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            height:150,
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(

                                    child: Text("Image"),
                                    height:130,
                                    width: 100,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Title"),
                                    Text("Catagory"),
                                    Text("Description"),
                                    Text("Price"),
                                  ],
                                ))
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: 10))
            ],
          ),
        ),
      )),
    );
  }
}
