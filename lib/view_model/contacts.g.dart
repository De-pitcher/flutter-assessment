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
String _$createUserHash() => r'1296701538d3102c4c76e36b4f4fbb926cd7eecf';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef CreateUserRef = AutoDisposeFutureProviderRef<Contact>;

/// See also [createUser].
@ProviderFor(createUser)
const createUserProvider = CreateUserFamily();

/// See also [createUser].
class CreateUserFamily extends Family<AsyncValue<Contact>> {
  /// See also [createUser].
  const CreateUserFamily();

  /// See also [createUser].
  CreateUserProvider call(
    String firstName,
    String lastName,
  ) {
    return CreateUserProvider(
      firstName,
      lastName,
    );
  }

  @override
  CreateUserProvider getProviderOverride(
    covariant CreateUserProvider provider,
  ) {
    return call(
      provider.firstName,
      provider.lastName,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createUserProvider';
}

/// See also [createUser].
class CreateUserProvider extends AutoDisposeFutureProvider<Contact> {
  /// See also [createUser].
  CreateUserProvider(
    this.firstName,
    this.lastName,
  ) : super.internal(
          (ref) => createUser(
            ref,
            firstName,
            lastName,
          ),
          from: createUserProvider,
          name: r'createUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createUserHash,
          dependencies: CreateUserFamily._dependencies,
          allTransitiveDependencies:
              CreateUserFamily._allTransitiveDependencies,
        );

  final String firstName;
  final String lastName;

  @override
  bool operator ==(Object other) {
    return other is CreateUserProvider &&
        other.firstName == firstName &&
        other.lastName == lastName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, firstName.hashCode);
    hash = _SystemHash.combine(hash, lastName.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$updateUserHash() => r'3d0de0448630a6da6af21ea2445b1c15b7ece5ca';
typedef UpdateUserRef = AutoDisposeFutureProviderRef<Contact>;

/// See also [updateUser].
@ProviderFor(updateUser)
const updateUserProvider = UpdateUserFamily();

/// See also [updateUser].
class UpdateUserFamily extends Family<AsyncValue<Contact>> {
  /// See also [updateUser].
  const UpdateUserFamily();

  /// See also [updateUser].
  UpdateUserProvider call(
    String firstName,
    String job,
  ) {
    return UpdateUserProvider(
      firstName,
      job,
    );
  }

  @override
  UpdateUserProvider getProviderOverride(
    covariant UpdateUserProvider provider,
  ) {
    return call(
      provider.firstName,
      provider.job,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateUserProvider';
}

/// See also [updateUser].
class UpdateUserProvider extends AutoDisposeFutureProvider<Contact> {
  /// See also [updateUser].
  UpdateUserProvider(
    this.firstName,
    this.job,
  ) : super.internal(
          (ref) => updateUser(
            ref,
            firstName,
            job,
          ),
          from: updateUserProvider,
          name: r'updateUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateUserHash,
          dependencies: UpdateUserFamily._dependencies,
          allTransitiveDependencies:
              UpdateUserFamily._allTransitiveDependencies,
        );

  final String firstName;
  final String job;

  @override
  bool operator ==(Object other) {
    return other is UpdateUserProvider &&
        other.firstName == firstName &&
        other.job == job;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, firstName.hashCode);
    hash = _SystemHash.combine(hash, job.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$deleteUserHash() => r'7cb6d7824e1b45d0adc50c684f8146017b4dc823';

/// See also [deleteUser].
@ProviderFor(deleteUser)
final deleteUserProvider = AutoDisposeFutureProvider<dynamic>.internal(
  deleteUser,
  name: r'deleteUserProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$deleteUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DeleteUserRef = AutoDisposeFutureProviderRef<dynamic>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
