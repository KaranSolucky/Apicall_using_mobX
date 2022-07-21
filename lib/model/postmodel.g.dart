// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PostModel on _PostModelBase, Store {
  late final _$postUserAtom =
      Atom(name: '_PostModelBase.postUser', context: context);

  @override
  ObservableFuture<List<Post>>? get postUser {
    _$postUserAtom.reportRead();
    return super.postUser;
  }

  @override
  set postUser(ObservableFuture<List<Post>>? value) {
    _$postUserAtom.reportWrite(value, super.postUser, () {
      super.postUser = value;
    });
  }

  late final _$_PostModelBaseActionController =
      ActionController(name: '_PostModelBase', context: context);

  @override
  Future<dynamic> fetchUsersData() {
    final _$actionInfo = _$_PostModelBaseActionController.startAction(
        name: '_PostModelBase.fetchUsersData');
    try {
      return super.fetchUsersData();
    } finally {
      _$_PostModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
postUser: ${postUser}
    ''';
  }
}
