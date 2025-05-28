class ProductModel {
  String name;
  String weight;
  String cover;
  List<String> images;
  double price;
  double mainPrice;
  ProductModel({
    required this.name,
    required this.weight,
    required this.cover,
    required this.images,
    required this.price,
    required this.mainPrice,
  });
}

class Dummy {
  /// List Of Dummy Products
  static List<ProductModel> products = [
    ProductModel(
      name: 'shampoo',
      weight: '800 gm',
      cover:
          'https://previews.123rf.com/images/khairuman23/khairuman232205/khairuman23220500428/185565846-shampoo-flasche-umriss-symbol-illustration-auf-isoliertem-wei%C3%9Fem-hintergrund-geeignet-f%C3%BCr-sauberkeit.jpg',
      images: [
        'https://previews.123rf.com/images/khairuman23/khairuman232205/khairuman23220500428/185565846-shampoo-flasche-umriss-symbol-illustration-auf-isoliertem-wei%C3%9Fem-hintergrund-geeignet-f%C3%BCr-sauberkeit.jpg',
      ],
      price: 13,
      mainPrice: 15,
    ),
    ProductModel(
      name: 'Vanilla Ice Cream Banana',
      weight: '500 gm',
      cover: 'https://i.imgur.com/oaCY49b.png',
      images: ['https://i.imgur.com/oaCY49b.png'],
      price: 12,
      mainPrice: 15,
    ),
    ProductModel(
      name: 'Meat',
      weight: '1 Kg',
      cover: 'https://i.imgur.com/5wghZji.png',
      images: ['https://i.imgur.com/5wghZji.png'],
      price: 15,
      mainPrice: 18,
    ),
  ];
}
