import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/person_model.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({super.key, required this.person});
  final Person person;
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(color: Colors.red),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('First Name: ${person.firstName}'),
                  Text('Last Name: ${person.lastName}'),
                  Text('Email: ${person.email}'),
                ],
              ),
            )
            );
  }
}
