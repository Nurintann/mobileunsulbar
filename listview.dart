import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarListView(),
    );
  }
}

class BelajarListView extends StatelessWidget {
  final List bulan = [
    "Pada strategi pembelajaran ini anak-anak diajak duduk melingkar dan guru berada di tengah lingkaran. Berbagai kegiatan bisa dilakukan, seperti membaca puisi, bermain peran, bernyanyi, mengaji, atau bercerita, dan sebagainya. Selama di rumah, Mama bisa mengajak anak duduk di tengah lingkaran yang dikelilingi boneka dan mainannya. Ajak anak untuk bercerita. Misalnya, cerita tentang bagaimana kegiatan dan perasaan anak hari ini. Apakah anak merasa senang atau sedih. Melaui metode circle time ini, Mama juga bisa mengajak anak untuk mengeluarkan suatu ungkapan. Misalkan apa yang membuatnya merasa bersyukur hari ini atau apa ia ingin mengatakan terima kasih kepada siapa dan karena apa? Cara belajar seperti ini bertujuan untuk melatih keberanian anak dalam berkomunikasi dan mengenali emosi yang dirasakan oleh anak. Anak juga nantinya terbiasa menyampaikan dengan baik sesuatu yang ia rasakan, dan ini bisa menciptakan anak dengan emosi yang stabil serta tidak memendam perasaannya sendiri. "
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("belajarFlutter.com"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(bulan[index], style: TextStyle(fontSize: 30)),
            ),
          );
        },
        itemCount: bulan.length,
      ),
    );
  }
}