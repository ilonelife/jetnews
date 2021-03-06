import '../../data/data_source/result.dart';
import '../model/news/news.dart';

abstract class NewsRepository {
  Future<Result<List<News>>> getNews(int page);

  Future<Result<bool>> bookmarkNews(String newsId);

  Future<Result<bool>> favoriteNews(String newsId);

  Future<Result<bool>> shareNews(News news);

  Future<Result<List<String>>> getBookmark(int userId);

  Future<Result<List<String>>> getFavorite(int userId);
}
