class CandleData {
  /// The timestamp of this data point, in milliseconds since epoch.
  final int timestamp;

  /// The "open" price of this data point.
  final double? open;

  /// The "close" price of this data point.
  final double? close;

  /// The "high" price.
  final double? high;

  /// The "low" price.
  final double? low;

  /// The volume information of this data point.
  final double? volume;

  /// Data holder for additional trend lines.
  late final List<double?> trends;

  CandleData({
    required this.timestamp,
    required this.open,
    required this.close,
    required this.volume,
    this.high,
    this.low,
    List<double?>? trends,
  }) : trends = List.unmodifiable(trends ?? []);

  /// Factory method to create a CandleData object from a map.
  factory CandleData.fromMap(Map<String, dynamic> map) {
    return CandleData(
      timestamp: map['timestamp'],
      open: map['open'],
      high: map['high'],
      low: map['low'],
      close: map['close'],
      volume: map['volume'],
      trends: map['trends'] ?? [],
    );
  }

  /// Method to copy the object with updated fields.
  CandleData copyWith({
    int? timestamp,
    double? open,
    double? high,
    double? low,
    double? close,
    double? volume,
    List<double?>? trends,
  }) {
    return CandleData(
      timestamp: timestamp ?? this.timestamp,
      open: open ?? this.open,
      high: high ?? this.high,
      low: low ?? this.low,
      close: close ?? this.close,
      volume: volume ?? this.volume,
      trends: trends ?? this.trends,
    );
  }

  @override
  String toString() => "<CandleData ($timestamp: $close)>";
}
