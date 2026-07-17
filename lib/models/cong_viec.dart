// CongViec.dart
class CongViec {
  final String id;
  final String tieuDe;
  final String thoiGian;
  bool daHoanThanh;

  CongViec({
    required this.id,
    required this.tieuDe,
    required this.thoiGian,
    this.daHoanThanh = false,
  });
}
