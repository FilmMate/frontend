// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watch_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WatchProvider _$WatchProviderFromJson(Map<String, dynamic> json) =>
    WatchProvider(
      id: (json['id'] as num?)?.toInt(),
      results: json['results'] == null
          ? null
          : Results.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WatchProviderToJson(WatchProvider instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.results,
    };
