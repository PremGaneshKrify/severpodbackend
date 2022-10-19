/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'dart:typed_data' as typed_data;
import 'package:serverpod_client/serverpod_client.dart';
import 'protocol.dart';

class _EndpointArtikool extends EndpointRef {
  @override
  String get name => 'artikool';

  _EndpointArtikool(EndpointCaller caller) : super(caller);

  ///Fetch articles from DB
  Future<List<Article>> getArticles({
    String? keyword,
  }) async {
    var retval = await caller
        .callServerEndpoint('artikool', 'getArticles', 'List<Article>', {
      'keyword': keyword,
    });
    return (retval as List).cast();
  }

  Future<bool> addArticle(
    Article article,
  ) async {
    var retval =
        await caller.callServerEndpoint('artikool', 'addArticle', 'bool', {
      'article': article,
    });
    return retval;
  }

  ///Update article
  Future<bool> updateArticle(
    Article article,
  ) async {
    var retval =
        await caller.callServerEndpoint('artikool', 'updateArticle', 'bool', {
      'article': article,
    });
    return retval;
  }

  ///Delete article
  Future<bool> deleteArticle(
    int id,
  ) async {
    var retval =
        await caller.callServerEndpoint('artikool', 'deleteArticle', 'bool', {
      'id': id,
    });
    return retval;
  }
}

class Client extends ServerpodClient {
  late final _EndpointArtikool artikool;

  Client(String host,
      {SecurityContext? context,
      ServerpodClientErrorCallback? errorHandler,
      AuthenticationKeyManager? authenticationKeyManager})
      : super(host, Protocol.instance,
            context: context,
            errorHandler: errorHandler,
            authenticationKeyManager: authenticationKeyManager) {
    artikool = _EndpointArtikool(this);
  }

  @override
  Map<String, EndpointRef> get endpointRefLookup => {
        'artikool': artikool,
      };

  @override
  Map<String, ModuleEndpointCaller> get moduleLookup => {};
}
