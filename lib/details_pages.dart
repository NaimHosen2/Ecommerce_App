import 'package:flutter/material.dart';

class DetailsPages extends StatefulWidget {
  const DetailsPages({
    super.key,
    required Map ptoductDetails,
  });

  @override
  State<DetailsPages> createState() => _DetailsPagesState();
}

class _DetailsPagesState extends State<DetailsPages> {
  int quantity = 1;
  late TextEditingController quantityController=TextEditingController(text: quantity.toString());
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                      onPressed: () {
                        isSelected = true;
                        setState(() {});
                      },
                      icon: Icon(
                          isSelected ? Icons.favorite : Icons.favorite_border))
                ],
              ),
              Container(
                child: Center(child: Text('Images')),
                height: 200,
                width: 500,
                color: Colors.black26,
              ),
              Expanded(
                  child: Container(
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, right: 15, left: 15),
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Title",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              overflow: TextOverflow.ellipsis),
                        ),
                        OutlinedButton(
                            onPressed: null,
                            child: Text(
                              "Rating",
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text("Catagory"),
                    ),
                    Text("Description"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Quantity"),
                        MaterialButton(
                          onPressed: () {
                          if (quantity > 1) quantity--;
                          setState(() {});
                        },
                          child: Text('-',style: TextStyle(fontSize:25),),
                        ),
                        Container(
                          width: 50,
                          child: TextField(
                            onChanged: (value){
                              quantity=int.parse(value);
                              setState(() {

                              });
                            },
                            controller: quantityController,
                            decoration: InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder()
                            ),
                          ),
                        ),
                        MaterialButton(
                            onPressed: ( ){
                           quantity++;
                           setState(() {
                             
                           });
                        },
                          child: Text("+",style: TextStyle(fontSize:25),),
                        )

                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Priice"),
                        MaterialButton(
                          color: Colors.indigo,
                          onPressed: ( ){},
                        child: Text('Buy Now'),
                        )
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
