import 'package:videos_api/videos_api.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'video_data.g.dart';

@JsonSerializable()
class VideoData extends Equatable {
  const VideoData({
    required this.id,
    required this.name,
    required this.url,
  });

  final String id;
  final String name;
  final String url;

  @override
  List<Object> get props => [id, name, url];

  VideoData copyWith({
    String? id,
    String? name,
    String? url,
  }) {
    return VideoData(
      id: id ?? this.id,
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  static VideoData fromJson(JsonMap json) => _$VideoDataFromJson(json);

  JsonMap toJson() => _$VideoDataToJson(this);
}
