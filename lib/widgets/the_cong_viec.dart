// lib/widgets/the_cong_viec.dart
import 'package:flutter/material.dart';
import '../models/cong_viec.dart';

class TheCongViec extends StatelessWidget {
  final CongViec congViec;
  final VoidCallback onTap; // Nhận sự kiện bấm từ ngoài truyền vào

  const TheCongViec({
    super.key,
    required this.congViec,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16.0),
      child: ListTile(
        onTap: onTap, // Bấm vào cả dòng để đổi trạng thái
        leading: Icon(
          congViec.daHoanThanh ? Icons.check_circle : Icons.radio_button_unchecked,
          color: congViec.daHoanThanh ? Colors.green : Colors.grey,
        ),
        title: Text(
          congViec.tieuDe,
          style: TextStyle(
            decoration: congViec.daHoanThanh ? TextDecoration.lineThrough : null,
            color: congViec.daHoanThanh ? Colors.grey : null,
          ),
        ),
        subtitle: Text('Công việc • ${congViec.thoiGian}'),
      ),
    );
  }
}