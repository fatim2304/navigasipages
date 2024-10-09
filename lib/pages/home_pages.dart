import 'package:flutter/material.dart';
import 'package:navigasipages/models/item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Jordan JORDAN 3 RETRO (TD) WHITE/METALLIC COPPER-TRUE BLUE',
        price: 988,
        imageUrl: 'https://asset.kompas.com/crops/yxpwJv-exaKsUvgP4llY6iootNk=/0x0:1513x1009/750x500/data/photo/2022/07/18/62d529051ef4f.png',
        stock: 5,
        rating: 5.5,
      ),
      Item(
        name: 'Sneakers Anak Jordan Chicago Grade Original Premium',
        price: 4250000,
        imageUrl: 'https://down-id.img.susercontent.com/file/afe14b502b6de3828c1dd36df1d8e157',
        stock: 12,
        rating: 4.0,
      ),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Items List"),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Jumlah kolom
            childAspectRatio: 0.7, // Rasio lebar terhadap tinggi
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Hero(
                tag: item.name, // Tag yang unik untuk animasi Hero
                child: Card(
                  child: Column(
                    children: [
                      Expanded( // Menggunakan Expanded agar gambar mengambil ruang yang tepat
                        child: Image.network(
                          item.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0), // Memberikan padding
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 4), // Jarak antara nama dan harga
                            Text('Rp ${item.price}', style: TextStyle(color: Colors.green)),
                            SizedBox(height: 4), // Jarak antara harga dan stok
                            Text('Stock: ${item.stock}'),
                            SizedBox(height: 4), // Jarak antara stok dan rating
                            Text('Rating: ${item.rating}', style: TextStyle(color: Colors.orange)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        // Tambahkan footer jika perlu
        bottomNavigationBar: Container(
            padding: EdgeInsets.all(16),
            child: Text('Nama: Siti Fatimah Ayu Lestari, NIM: 362358302013'),
            ),
        );
    }
}