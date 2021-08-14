import '_.imports.dart';

class GetTextFromClipboardCommand implements AsyncCommand<String> {
  final Clipboard clipboard;

  const GetTextFromClipboardCommand(this.clipboard);

  @override
  Future<String> execute() async {
    final data = await clipboard.getData();
    return data.text;
  }
}
