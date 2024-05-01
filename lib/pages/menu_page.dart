// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:chef_app/model/meal_model.dart';
import 'package:chef_app/service/meal_service.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(33.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            width: 327,
            height: 42,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromRGBO(250, 154, 12, 1),
                ),
              ),
              child: Text("Add Meal"),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: FutureBuilder(
              future: getMeal(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) => ListTile(
                      leading: Image(
                          image: NetworkImage(
                        snapshot.data![index].images[0],
                      )),
                      title: Text(snapshot.data![index].name),
                      subtitle: Text(snapshot.data![index].description +
                          "\n" +
                          snapshot.data![index].price.toString()),
                    ),
                  );
                } else {
                  return Text("Failed");
                }
              },
            ),
          )
        ]),
      ),
    );
  }
}
