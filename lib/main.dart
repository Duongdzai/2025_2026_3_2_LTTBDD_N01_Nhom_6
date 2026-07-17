import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: const Text('Quản lý Công việc')),
        body: ListView(
          children: const [
            ListTile(
              title: Text('Hoàn thành báo cáo tuần'),
              subtitle: Text('Công việc • 18/7/2026'),
            ),
            ListTile(
              title: Text('Ôn tập môn Lập trình Di động'),
              subtitle: Text('Học tập • 19/7/2026'),
            ),
            ListTile(
              title: Text('Gọi điện nói chuyện với bạn'),
              subtitle: Text('Cá nhân • Ngày mai'),
            ),
            ListTile(
              title: Text('Mua sắm cuối tuần'),
              subtitle: Text('Mua sắm • 21/7/2026'),
            ),
          ],
        ),
      ),
    );
  }
}
