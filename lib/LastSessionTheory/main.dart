import 'dart:async';

class DownloadService {
  final StreamController<int> _controller = StreamController();
  final DateTime
  Stream<int> get stream => _controller.stream;

  void startDownload() async {
    for (int i = 0; i <= 100; i += 10) {
      await Future.delayed(Duration(milliseconds: 300));
      _controller.add(i);
    }
    _controller.close();
  }
}

void main() {
  // 1 - Create a dedicated DownloadProgress class to carry the progress + the timestamp (datetime)
  
  // 2 - Change the stream to send DownloadProgress objects instead of just integers.

  // 3 - Update startDownload() to send the current time along with progress  (DateTime.now)

  // 4 - Listen to the stream.
  // 5 - For each new value, compute the estimated remaining time
  //    💡 Hint: Keep the first timestamp to calculate time difference.

  // 6 Print something like:  Progress: 30% | Remaining: 700ms
}
