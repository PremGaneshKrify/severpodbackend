/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_import
// ignore_for_file: unused_import

import 'dart:typed_data' as typed_data;
import 'package:serverpod/serverpod.dart';

import 'protocol.dart';

import '../endpoints/example_endpoint.dart';

class Endpoints extends EndpointDispatch {
  @override
  void initializeEndpoints(Server server) {
    var endpoints = <String, Endpoint>{
      'artikool': ArtikoolEndpoint()..initialize(server, 'artikool', null),
    };

    connectors['artikool'] = EndpointConnector(
      name: 'artikool',
      endpoint: endpoints['artikool']!,
      methodConnectors: {
        'getArticles': MethodConnector(
          name: 'getArticles',
          params: {
            'keyword': ParameterDescription(
                name: 'keyword', type: String, nullable: true),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['artikool'] as ArtikoolEndpoint).getArticles(
              session,
              keyword: params['keyword'],
            );
          },
        ),
        'addArticle': MethodConnector(
          name: 'addArticle',
          params: {
            'article': ParameterDescription(
                name: 'article', type: Article, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['artikool'] as ArtikoolEndpoint).addArticle(
              session,
              params['article'],
            );
          },
        ),
        'updateArticle': MethodConnector(
          name: 'updateArticle',
          params: {
            'article': ParameterDescription(
                name: 'article', type: Article, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['artikool'] as ArtikoolEndpoint).updateArticle(
              session,
              params['article'],
            );
          },
        ),
        'deleteArticle': MethodConnector(
          name: 'deleteArticle',
          params: {
            'id': ParameterDescription(name: 'id', type: int, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['artikool'] as ArtikoolEndpoint).deleteArticle(
              session,
              params['id'],
            );
          },
        ),
      },
    );
  }

  @override
  void registerModules(Serverpod pod) {}
}
