import '_.imports.dart';

class MockClipboard extends Clipboard {
  ClipboardData _data = ClipboardData.initialized();

  Future<ClipboardData> getData() async {
    return _data;
  }

  Future<void> setData(ClipboardData data) async {
    _data = data;
  }
}
