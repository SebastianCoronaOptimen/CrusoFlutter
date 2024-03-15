import 'package:tiktok/domain/datasources/video_post_datasource.dart';
import 'package:tiktok/domain/entities/video_post.dart';
import 'package:tiktok/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository{

  final VideoPostDatasource videoDatasource;

  VideoPostsRepositoryImpl({
    required this.videoDatasource
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoDatasource.getTrendingVideosByPage(page);
  }

}