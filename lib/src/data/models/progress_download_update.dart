final class ProgressDownloadUpdate {
  final double? percent;
  final int? received;
  final int? total;

  const ProgressDownloadUpdate({this.percent, this.received, this.total});

  ProgressDownloadUpdate copyWith({
    double? percent,
    int? received,
    int? total,
  }) {
    return ProgressDownloadUpdate(
      percent: percent ?? this.percent,
      received: received ?? this.received,
      total: total ?? this.total,
    );
  }

  @override
  String toString() =>
      'ProgressDownloadUpdate(percent: $percent, received: $received, total: $total)';
}
