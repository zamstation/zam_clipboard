import '_.imports.dart';

@immutable
class ClipboardData with EquatableMixin {
  final String text;

  get props => [text];

  const ClipboardData({
    required this.text,
  });

  const ClipboardData.initialized() : this(text: '');
}
