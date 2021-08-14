import '_.imports.dart';

void main() {
  ClipboardTestGroup().execute();
}

class ClipboardTestGroup extends TestGroup {
  static final clipboard = MockClipboard();

  @override
  get name => runtimeType.toString();

  ClipboardTestGroup() : super.empty();

  @override
  final tests = [
    SetTextToClipboardCommandTest(),
    GetTextFromClipboardCommandTest(),
  ];
}

class SetTextToClipboardCommandTest extends Test<String, Future<String>> {
  @override
  Future<String> run(String input) async {
    final clipboard = ClipboardTestGroup.clipboard;
    final command = SetTextToClipboardCommand(clipboard, input);
    final output = await command.execute();
    return output.text;
  }

  @override
  final cases = [
    TestCase(
      when: 'When an empty text is provided',
      then: 'it is set to the clipboard and returns the same value',
      input: '',
      matcher: completion(equals('')),
    ),
    TestCase(
      when: 'When a non-empty text is provided',
      then: 'it is set to the clipboard and returns the same value',
      input: 'Hello World',
      matcher: completion(equals('Hello World')),
    ),
  ];
}

class GetTextFromClipboardCommandTest extends Test<Object?, Future<String>> {
  @override
  Future<String> run(Object? input) async {
    final clipboard = ClipboardTestGroup.clipboard;
    final command = GetTextFromClipboardCommand(clipboard);
    final output = await command.execute();
    return output;
  }

  @override
  final cases = [
    TestCase(
      when: 'When we request for the clipboard data',
      then: 'it returns the last clipboard data',
      input: null,
      matcher: completion(equals('Hello World')),
    ),
  ];
}
