import 'package:app/controllers/person_controller.dart';
import 'package:app/widgets/person_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllUserView extends StatelessWidget {
  const AllUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<PersonController>(
        init: PersonController(),
        builder: (controller) {
          final firstName = controller.getUserById("5df38f6e8a4caadc4aa0dc36");
          return Center(
            child: Text(
              firstName ?? "No Name",
              style: const TextStyle(fontSize: 40),
            ),
          );
          // return GridView.count(
          //   crossAxisCount: 2,
          //   mainAxisSpacing: 10,
          //   crossAxisSpacing: 10,
          //   children:
          //       controller.persons
          //           .map((person) => PersonCard(person: person))
          //           .toList(),
          // );
        },
      ),
    );
  }
}
