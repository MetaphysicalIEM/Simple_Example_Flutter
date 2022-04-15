class Product {
  final String name;
  final String brand;
  final String state;
  final double price;
  final int quantity;
  final String imageUrl;

  const Product(
      {required this.name,
      required this.brand,
      required this.state,
      required this.price,
      required this.quantity,
      required this.imageUrl});

  static const List<Product> listProduct = [
    Product(
        name: '001',
        brand: 'brand',
        state: 'state',
        price: 2.99,
        quantity: 999,
        imageUrl:
            'https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png'),
    Product(
        name: '002',
        brand: 'brand',
        state: 'state',
        price: 1.99,
        quantity: 999,
        imageUrl:
            'https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png'),
    Product(
        name: '003',
        brand: 'brand',
        state: 'state',
        price: 6.99,
        quantity: 999,
        imageUrl:
            'https://assets.pokemon.com/assets/cms2/img/pokedex/full/003.png'),
    Product(
        name: '004',
        brand: 'brand',
        state: 'state',
        price: 4.99,
        quantity: 999,
        imageUrl:
            'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png'),
    Product(
        name: '005',
        brand: 'brand',
        state: 'state',
        price: 14.99,
        quantity: 999,
        imageUrl:
            'https://assets.pokemon.com/assets/cms2/img/pokedex/full/005.png'),
    Product(
        name: '006',
        brand: 'brand',
        state: 'state',
        price: 22.5,
        quantity: 999,
        imageUrl:
            'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png'),
    Product(
        name: '007',
        brand: 'brand',
        state: 'state',
        price: 142.2,
        quantity: 999,
        imageUrl:
            'https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png'),
    Product(
        name: '008',
        brand: 'brand',
        state: 'state',
        price: 142.2,
        quantity: 999,
        imageUrl:
            'https://assets.pokemon.com/assets/cms2/img/pokedex/full/008.png'),
    Product(
        name: '009',
        brand: 'brand',
        state: 'state',
        price: 142.2,
        quantity: 999,
        imageUrl:
            'https://assets.pokemon.com/assets/cms2/img/pokedex/full/009.png'),
    Product(
        name: '010',
        brand: 'brand',
        state: 'state',
        price: 142.2,
        quantity: 999,
        imageUrl:
            'https://assets.pokemon.com/assets/cms2/img/pokedex/full/010.png'),
  ];
}
