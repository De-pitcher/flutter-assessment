import 'package:flutter_assessment/models/contact.dart';

abstract class ContactRepository {
  Future<List<Contact>> fetchUsers();

  // Future createUser();

  // Future deleteUser();

  // Future updateUser();

  // Future getUser();
}
