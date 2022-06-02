import "dart:async";

enum Event { increament, decrement, reset }

class CounterBloc {
  late int _counter;

  final _stateStreamController = StreamController<int>();
  StreamSink<int> get counterSink => _stateStreamController.sink;
  Stream<int> get counterStream => _stateStreamController.stream;

  final _eventStreamController = StreamController<Event>();
  StreamSink<Event> get eventSink => _eventStreamController.sink;
  Stream<Event> get eventStream => _eventStreamController.stream;

  CounterBloc() {
    _counter = 0;
    eventStream.listen((event) {
      if (event == Event.increament) {
        _counter++;
      } else if (event == Event.decrement) {
        if (_counter > 0) _counter--;
        return;
      } else if (event == Event.reset) {
        _counter = 0;
      }
    });

    counterSink.add(_counter);
  }

  void dispose() {
    _stateStreamController.close();
    _eventStreamController.close();
  }
}
