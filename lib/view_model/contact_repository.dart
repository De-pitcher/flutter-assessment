import 'package:flutter_assessment/models/contact.dart';

abstract class ContactRepository {
  Future<List<Contact>> fetchUsers();

  Future<Contact> createUser(String firstName, String lastName);

  Future deleteUser();

  Future<Contact> updateUser(String firstName, String job);

  // Future getUser();
}
