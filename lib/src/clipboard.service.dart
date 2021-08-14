import 'models/clipboard_data.dart';

abstract class Clipboard {
  Future<ClipboardData> getData();
  Future<void> setData(ClipboardData data);
}
