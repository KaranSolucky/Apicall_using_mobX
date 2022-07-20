// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usermodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserModel on _UserModelBase, Store {
  late final _$listUsersFutureAtom =
      Atom(name: '_UserModelBase.listUsersFuture', context: context);

  @override
  ObservableFuture<List<User>>? get listUsersFuture {
    _$listUsersFutureAtom.reportRead();
    return super.listUsersFuture;
  }

  @override
  set listUsersFuture(ObservableFuture<List<User>>? value) {
    _$listUsersFutureAtom.reportWrite(value, super.listUsersFuture, () {
      super.listUsersFuture = value;
    });
  }

  late final _$_UserModelBaseActionController =
      ActionController(name: '_UserModelBase', context: context);

  @override
  Future<dynamic> fetchUsersData() {
    final _$actionInfo = _$_UserModelBaseActionController.startAction(
        name: '_UserModelBase.fetchUsersData');
    try {
      return super.fetchUsersData();
    } finally {
      _$_UserModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listUsersFuture: ${listUsersFuture}
    ''';
  }
}
