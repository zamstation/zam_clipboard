import '_.imports.dart';

class SetTextToClipboardCommand implements AsyncCommand<ClipboardData> {
  final String text;
  final Clipboard clipboard;

  const SetTextToClipboardCommand(this.clipboard, this.text);

  @override
  Future<ClipboardData> execute() async {
    final data = ClipboardData(text: text);
    await clipboard.setData(data);
    return data;
  }
}
