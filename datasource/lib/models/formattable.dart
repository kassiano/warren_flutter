
class Formattable<T> {
  final T formatted;

//<editor-fold desc="Data Methods">

  const Formattable({
    required this.formatted,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Formattable &&
          runtimeType == other.runtimeType &&
          formatted == other.formatted);

  @override
  int get hashCode => formatted.hashCode;

  @override
  String toString() {
    return 'Formattable{' + ' formatted: $formatted,' + '}';
  }

  Formattable copyWith({
    T? formatted,
  }) {
    return Formattable(
      formatted: formatted ?? this.formatted,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'formatted': this.formatted,
    };
  }

  factory Formattable.fromMap(Map<String, dynamic> map) {
    return Formattable(
      formatted: map['formatted'] as T,
    );
  }

//</editor-fold>
}
