import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/contact.dart';
import '../service/dio_client.dart';
import '../service/dio_client_exception.dart';
import '../utils/constant.dart';
import 'contact_repository.dart';

part 'contacts.g.dart';

class Contacts implements ContactRepository {
  @override
  Future<List<Contact>> fetchUsers() async {
    try {
      final response = await DioClient.instance.get('$baseUrl?page=1');
      final userList = (response['data'] as List)
          .map(
            (e) => Contact(
              id: e['id'],
              email: e['email'],
              firstName: e['first_name'],
              lastName: e['last_name'],
              avatar: e['avatar'],
            ),
          )
          .toList();
      return userList;
    } on DioException catch (e) {
      var error = DioClientException.fromDioError(e);
      throw error.errorMessage;
    }
  }
}

@riverpod
Contacts contact(ContactRef ref) => Contacts();

@riverpod
Future<List<Contact>> fetchUsers(FetchUsersRef ref) =>
    ref.watch(contactProvider).fetchUsers();
