import '_.imports.dart';

@immutable
class ClipboardData with EquatableMixin {
  final String text;

  get props => [text];

  const ClipboardData(this.text);

  const ClipboardData.initialized() : this('');

  @override
  String toString() {
    return text;
  }
}
