import 'package:hive/hive.dart';
import 'package:jetnews/data/data_source/result.dart';

class NewsLocalDataSource {
  Future<Result<bool>> bookmarkNews(String newsId) async {
    try {
      final bookmarkBox = await Hive.openBox<String>('bookmark');

      // 북마크 표시가 있으면 해제하고, 아니면 북마크 표시를 생성한다
      if (bookmarkBox.containsKey(newsId)) {
        await bookmarkBox.delete(newsId);
        return const Result.success(false);
      } else {
        await bookmarkBox.put(newsId, newsId);
        return const Result.success(true);
      }
    } catch (e) {
      return Result.error('$runtimeType.bookmarkNews : 에러 발생 \n$e');
    }
  }

  Future<Result<bool>> favoriteNews(String newsId) async {
    try {
      final favoriteBox = await Hive.openBox<String>('favorite');

      if (favoriteBox.containsKey(newsId)) {
        await favoriteBox.delete(newsId);
        return const Result.success(false);
      } else {
        await favoriteBox.put(newsId, newsId);
        return const Result.success(true);
      }
    } catch (e) {
      return Result.error('$runtimeType.favoriteNews : 에러 발생 \n$e');
    }
  }

  Future<Result<List<String>>> getBookmarks() async {
    try {
      final bookmarkBox = await Hive.openBox<String>('bookmark');
      final bookmarkList = bookmarkBox.values.toList();

      return Result.success(bookmarkList);
    } catch (e) {
      return Result.error('$runtimeType.getBookmarks : 에러 발생 \n$e');
    }
  }

  Future<Result<List<String>>> getFavorite() async {
    try {
      final favoriteBox = await Hive.openBox<String>('favorite');
      final favoriteList = favoriteBox.values.toList();

      return Result.success(favoriteList);
    } catch (e) {
      return Result.error('$runtimeType.getFavorite : 에러 발생 \n$e');
    }
  }
}
