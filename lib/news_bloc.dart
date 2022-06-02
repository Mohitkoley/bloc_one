// import 'dart:async';

// import 'package:bloc_one/news_info.dart';

// enum NewsAction { fetch, delete }

// class NewsBloc {
//   final _stateStreamController = StreamController<List<Article>>();
//   StreamSink<List<Article>> get counterSink => _stateStreamController.sink;
//   Stream<List<Article>> get counterStream => _stateStreamController.stream;

//   final _eventStreamController = StreamController<NewsAction>();
//   StreamSink<NewsAction> get eventSink => _eventStreamController.sink;
//   Stream<NewsAction> get eventStream => _eventStreamController.stream;
// }
