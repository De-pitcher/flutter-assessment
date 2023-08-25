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

  @override
  Future<Contact> createUser(String firstName, String lastName) async {
    try {
      final Map<String, String> data = {
        "name": firstName,
        "firstname": lastName,
      };
      final response = await DioClient.instance.post(baseUrl, data: data);
      return Contact(
        firstName: response['name'],
        lastName: response['firstname'],
        email: 'email',
        avatar: 'avatar',
        id: response['id'],
      );
    } on DioException catch (e) {
      var error = DioClientException.fromDioError(e);
      throw error.errorMessage;
    }
  }

  @override
  Future deleteUser() async {
    try {
      return await DioClient.instance.delete('$baseUrl/2');
    } on DioException catch (e) {
      var error = DioClientException.fromDioError(e);
      throw error.errorMessage;
    }
  }

  @override
  Future<Contact> updateUser(String firstName, String job) async {
    try {
      final Map<String, String> data = {
        "name": firstName,
        "job": job,
      };
      final response = await DioClient.instance.put('$baseUrl/4', data: data);
      return Contact(
        firstName: response['name'],
        job: response['job'],
        lastName: 'lastName',
        email: 'email',
        avatar: 'avatar',
      );
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

@riverpod
Future<Contact> createUser(
  CreateUserRef ref,
  String firstName,
  String lastName,
) =>
    ref.watch(contactProvider).createUser(firstName, lastName);

@riverpod
Future<Contact> updateUser(
  UpdateUserRef ref,
  String firstName,
  String job,
) =>
    ref.watch(contactProvider).updateUser(firstName, job);

@riverpod
Future deleteUser(DeleteUserRef ref) => ref.watch(contactProvider).deleteUser();
