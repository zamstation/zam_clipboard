import '_.imports.dart';

class SetDataToClipboardCommand implements AsyncCommand<ClipboardData> {
  final ClipboardData data;
  final Clipboard clipboard;

  const SetDataToClipboardCommand(this.clipboard, this.data);

  @override
  Future<ClipboardData> execute() async {
    await clipboard.setData(data);
    return data;
  }
}
