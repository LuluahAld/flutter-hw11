class Products {
  var img;
  var name;
  var price;
  Products(String name, String img, double price) {
    this.name = name;
    this.img = img;
    this.price = price;
  }
}

var product1 = Products("Herbal Strategi Just Out Herbal Lizard Repellent", 'images/product1.png', 27);
var product2 = Products("Herbal Strategi Just Out Herbal Mosquito Repellent Room Spray", 'images/product2.png', 25);
var product3 = Products("Herbal Strategi Just Out Herbal Ant Repellent", 'images/product3.png', 25);
List<Products> products = [product1, product2, product3];
List<Products> cart = [];
