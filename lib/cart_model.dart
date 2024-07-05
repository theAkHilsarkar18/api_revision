// {}, class
// [] -> List<Obj>

class CartModel {
  late int skip, limit, total;
  late List<User> carts;

  CartModel._init(this.skip, this.limit, this.total, this.carts); // dynamic
  factory CartModel(Map m1)
  {
    return CartModel._init(m1['skip'], m1['limit'], m1['total'], (m1['carts'] as List).map((e) => User(e),).toList());
  }

}

class User {
  late int id, userId, totalProducts, totalQuantity;
  late double total, discountedTotal;
  late List<Product> products;

  User._init({
    required this.id,
    required this.userId,
    required this.totalProducts,
    required this.totalQuantity,
    required this.total,
    required this.discountedTotal,
    required this.products,
  });

  factory User(Map m1) {
    return User._init(
        id: m1['id'],
        userId: m1['userId'],
        totalProducts: m1['totalProducts'],
        totalQuantity: m1['totalQuantity'],
        total: m1['total'],
        discountedTotal: m1['discountedTotal'],
        products: (m1['products'] as List).map((e) => Product(e),).toList(),);
  }
}

class Product {
  late int id, quantity;
  late double price, total, discountedTotal;
  late dynamic discountPercentage;
  late String title, thumbnail;

// alt + insert
  Product._init(
      {required this.id,
      required this.quantity,
      required this.price,
      required this.total,
      required this.discountPercentage,
      required this.discountedTotal,
      required this.title,
      required this.thumbnail});

  factory Product(Map m1) {
    return Product._init(
      id: m1['id'],
      quantity: m1['quantity'],
      price: m1['price'],
      total: m1["total"],
      discountPercentage: m1['discountPercentage'],
      discountedTotal: m1['discountedTotal'],
      title: m1['title'],
      thumbnail: m1['thumbnail'],
    );
  }
}
