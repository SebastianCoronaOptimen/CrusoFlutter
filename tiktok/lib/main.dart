import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok/config/them/app_theme.dart';
import 'package:tiktok/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:tiktok/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:tiktok/presentation/providers/discover_provider.dart';
import 'package:tiktok/presentation/screens/discover/discover_scrren.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final videoPostRepository = VideoPostsRepositoryImpl(
      videoDatasource: LocalVideoDatasource()
      );

    return MultiProvider(
      providers: [ChangeNotifierProvider(
        lazy: false,
        create: (_) => DiscoverProvider(videosRepository: videoPostRepository)..loadNextPage()
        )],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TokTik',
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
        ),
    );
  } 
}