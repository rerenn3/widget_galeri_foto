import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WidgetDemo(),
    );
  }
}
class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri Foto'),
      ),
      body: const Column(
        children: [
          BottomImage(),

          // Row
          SizedBox(width: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Jalan di Barcelona',
                style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(width: 40), // Spacer
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),

          Row(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [


              Icon(
                Icons.place,
                color: Colors.red,
              ),

              Text('Lokasi: Barcelona, Spanyol'),
              SizedBox(height: 20), // Spacer
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.calendar_today,
                color: Colors.blue,
              ),
              Text('Publikasi: 13 Agustus 2013'),
              SizedBox(height: 20), // Spacer
            ],
          ),


          // Image
          TopContainer(


          ),

        ],
      ),
    );
  }
}
class BottomImage extends StatelessWidget {
  const BottomImage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Image.network('https://picsum.photos/id/88/300/200',

        width: double.infinity,
        height: 400,
        fit: BoxFit.cover,
      ),
    );
  }
}
class MiddleButton extends StatelessWidget {
  const MiddleButton({
    super.key,
  });
  void _pushButton() {
    print('=====> Tombol ditekan.');
  }
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _pushButton,
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Text('Tombol Elevated'),
      ),
    );
  }
}
class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: const EdgeInsets.all(4),
      padding: const EdgeInsets.all(4),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Text(
            'Deskripsi',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 0.5),
          Text(
            'Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
