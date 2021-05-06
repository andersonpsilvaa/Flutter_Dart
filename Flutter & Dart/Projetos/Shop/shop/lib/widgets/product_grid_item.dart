import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/cart.dart';
import 'package:shop/providers/product.dart';
import 'package:shop/utils/app_routes.dart';

class ProductGridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Product product = Provider.of<Product>(context, listen: false);
    final Cart cart = Provider.of<Cart>(context, listen: false);

    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.deepPurple,
            blurRadius: 10,
            offset: Offset(0.0, 0.75),
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                AppRoutes.PRODUCT_DETAIL,
                arguments: product,
              );
              // Rota Criada Manualmente
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (ctx) => ProductDetailScreen(),
              //   ),
              // );
            },
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: Consumer<Product>(
              builder: (ctx, product, _) => IconButton(
                icon: Icon(
                  product.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () {
                  product.tiggleFavorite();
                },
              ),
            ),
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {
                Scaffold.of(context).hideCurrentSnackBar();
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(
                    'Produto adicionado com sucesso!',
                    textAlign: TextAlign.center,
                  ),
                  duration: Duration(seconds: 2),
                  action: SnackBarAction(
                    label: 'DESFAZER',
                    onPressed: () {
                      cart.removeSingleItem(product.id);
                    },
                  ),
                ));
                cart.addItem(product);
              },
            ),
          ),
        ),
      ),
    );
  }
}
