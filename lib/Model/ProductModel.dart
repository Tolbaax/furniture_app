class ProductModel {
  String? pName;
  String? pPrice;
  String? pRate;
  String? imageUrl;
  ProductModel({this.pName, this.pPrice, this.pRate, this.imageUrl});
}

List<ProductModel> pDetails = [
  ProductModel(
      pName: 'Wingback chair',
      pPrice: '\$ 65',
      pRate: '4.9',
      imageUrl: 'images/f1.png'),
  ProductModel(
      pName: 'Fauteuil chair ',
      pPrice: '\$ 86',
      pRate: '4.6',
      imageUrl: 'images/f4.png'),
  ProductModel(
      pName: 'White chair',
      pPrice: '\$ 50',
      pRate: '3.6',
      imageUrl: 'images/05.png'),
];

List exImage = [
  'images/f.jpg',
  'images/f0.jpg',
  'images/f5.jpg',
  'images/f3.jpg',
];

List type = [
  'Chairs',
  'Sofa',
  'Tables',
];
