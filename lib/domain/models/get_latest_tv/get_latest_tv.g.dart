// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_latest_tv.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetLatestTv _$GetLatestTvFromJson(Map<String, dynamic> json) => GetLatestTv(
      result: (json['result'] as List<dynamic>?)
              ?.map((e) =>
                  GetLatestTvResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$GetLatestTvToJson(GetLatestTv instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
