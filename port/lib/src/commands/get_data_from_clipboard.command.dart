import '_.imports.dart';

class GetDataFromClipboardCommand implements AsyncCommand<ClipboardData> {
  final Clipboard clipboard;

  const GetDataFromClipboardCommand(this.clipboard);

  @override
  Future<ClipboardData> execute() {
    return clipboard.getData();
  }
}
