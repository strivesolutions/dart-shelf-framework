final class RequestLogger {
  Future<void> log(String message, bool isError) async {
    // Publish to your centralized logging service, write to file, write to console, etc.
    if (isError) {
      print('[ERROR] $message');
    } else {
      print('[INFO] $message');
    }
  }
}
