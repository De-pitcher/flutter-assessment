// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$contactHash() => r'3bc519ed5874cee6ea9c7b87839f4f4e7a5afdbf';

/// See also [contact].
@ProviderFor(contact)
final contactProvider = AutoDisposeProvider<Contacts>.internal(
  contact,
  name: r'contactProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$contactHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ContactRef = AutoDisposeProviderRef<Contacts>;
String _$fetchUsersHash() => r'395ca48697870824014e8423e6a1728b28a67f40';

/// See also [fetchUsers].
@ProviderFor(fetchUsers)
final fetchUsersProvider = AutoDisposeFutureProvider<List<Contact>>.internal(
  fetchUsers,
  name: r'fetchUsersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$fetchUsersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchUsersRef = AutoDisposeFutureProviderRef<List<Contact>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
