import 'package:app/models/person_model.dart';
import 'package:get/get.dart';

class PersonController extends GetxController {
  List<Person> persons = [];

  @override
  void onInit() {
    getAllUser();
    super.onInit();
  }

  void getAllUser() {
    final data = [
      {
        "_id": "5df38f6e695566a48211da8f",
        "first_name": "Blankenship",
        "last_name": "Vincent",
        "email": "blankenshipvincent@rocklogic.com",
      },
      {
        "_id": "5df38f6e8a4caadc4aa0dc36",
        "first_name": "Frederick",
        "last_name": "Stuart",
        "email": "frederickstuart@rocklogic.com",
      },
      {
        "_id": "5df38f6ed1b60849d8418f07",
        "first_name": "Larson",
        "last_name": "Mcfarland",
        "email": "larsonmcfarland@rocklogic.com",
      },
      {
        "_id": "5df38f6e309c25aad80b173a",
        "first_name": "Keisha",
        "last_name": "Hatfield",
        "email": "keishahatfield@rocklogic.com",
      },
      {
        "_id": "5df38f6e6f1b688895260cf4",
        "first_name": "Alexis",
        "last_name": "Anthony",
        "email": "alexisanthony@rocklogic.com",
      },
      {
        "_id": "5df38f6e915a301a32d4dade",
        "first_name": "Bonner",
        "last_name": "Banks",
        "email": "bonnerbanks@rocklogic.com",
      },
      {
        "_id": "5df38f6e2d2efbfc82143676",
        "first_name": "Josephine",
        "last_name": "Conrad",
        "email": "josephineconrad@rocklogic.com",
      },
      {
        "_id": "5df38f6ed4245b97f97839f6",
        "first_name": "Angelia",
        "last_name": "Mcbride",
        "email": "angeliamcbride@rocklogic.com",
      },
      {
        "_id": "5df38f6e0e5f8dca341cdcaa",
        "first_name": "Marsha",
        "last_name": "Gillespie",
        "email": "marshagillespie@rocklogic.com",
      },
    ];

    persons = data.map((e) => Person.fromJson(e)).toList();
    update();
  }

  // getPersonById(String id) {
  //   return persons.firstWhere((element) => element.sId == id).firstName;

  // }

  String? getUserById(String id) {
    return persons.firstWhere((person) => person.sId == id).firstName;
}
}
