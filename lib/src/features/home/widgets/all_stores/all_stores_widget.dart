import 'package:flutter/material.dart';
import 'package:pepperoni/pepperoni.dart';

class AllStoresWidget extends StatefulWidget {
  final TabController tabController;

  const AllStoresWidget({super.key, required this.tabController});

  @override
  State<AllStoresWidget> createState() => _AllStoresWidgetState();
}

class _AllStoresWidgetState extends State<AllStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListItemWidget(
          items: [
            CategoryListItem(
                onTap: (item) {
                  widget.tabController.animateTo(1);
                },
                label: 'Restaurante',
                imageUrl:
                    'https://www.pngall.com/wp-content/uploads/8/Burger-Restaurant-PNG-Free-Download.png'),
            CategoryListItem(
                onTap: (item) {
                  widget.tabController.animateTo(2);
                },
                label: 'Mercado',
                imageUrl:
                    'https://png.pngtree.com/png-vector/20191030/ourlarge/pngtree-store-vector-illustration-with-filled-line-design-isolated-on-white-background-png-image_1919951.jpg'),
            CategoryListItem(
                onTap: (item) {
                  widget.tabController.animateTo(3);
                },
                label: 'Bebidas',
                imageUrl:
                    'https://thumbs.dreamstime.com/b/cocktail-com-ilustra%C3%A7%C3%A3o-tirada-m%C3%A3o-do-vetor-guarda-chuva-estilo-dos-desenhos-animados-137453607.jpg'),
            CategoryListItem(
                onTap: (item) {
                  widget.tabController.animateTo(4);
                },
                label: 'Farmacia',
                imageUrl:
                    'https://idec.org.br/sites/default/files/dicasedireitos/imagem_noticia_1_0.png'),
            CategoryListItem(
                onTap: (item) {
                  widget.tabController.animateTo(5);
                },
                label: 'Pet',
                imageUrl:
                    'https://thumbs.dreamstime.com/b/c-pia-da-pata-no-fundo-branco-e-logotipo-loja-de-animais-estima-o-r-estilo-liso-149040100.jpg'),
            CategoryListItem(
                onTap: (item) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Container(color: Colors.red),
                    ),
                  );
                },
                label: 'Clube Mfood',
                imageUrl:
                    'https://thumbs.dreamstime.com/z/ilustra%C3%A7%C3%A3o-vetorial-do-taco-comida-mexicana-estilo-de-desenho-animado-isolado-em-fundo-branco-design-para-o-caf%C3%A9-e-web-menu-187343028.jpg'),
            CategoryListItem(
                onTap: (item) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Container(color: Colors.yellow),
                    ),
                  );
                },
                label: 'Inicio',
                imageUrl:
                    'https://cdn-icons-png.flaticon.com/512/6521/6521796.png'),
          ],
        ),
        const CouponsWidget(
          imageList: [
            'https://gkpb.com.br/wp-content/uploads/2020/03/ifood-tudo-por-099-geek-publicitario.jpg',
            'https://acontecendoaqui.com.br/wp-content/uploads/2022/03/009-2.jpg',
            'https://gkpb.com.br/wp-content/uploads/2020/03/ifood-tudo-por-099-geek-publicitario.jpg',
            'https://gkpb.com.br/wp-content/uploads/2019/08/cropped-ifood-oferecera-pratos-de-R-1-para-novos-usuarios-geek-publicitario.jpg.png',
            'https://www.meioemensagem.com.br/wp-content/uploads/2017/04/17155559_1371759532899203_1056847042369755394_n.png',
            'https://gkpb.com.br/wp-content/uploads/2019/08/cropped-ifood-oferecera-pratos-de-R-1-para-novos-usuarios-geek-publicitario.jpg.png',
            'https://gifs.eco.br/wp-content/uploads/2022/10/gifs-de-ifood-14.gif',
          ],
        ),
        const SizedBox(height: 16),
        const AdvertisingWidget(
          imageUrl:
              'https://acontecendoaqui.com.br/wp-content/uploads/2022/03/009-2.jpg',
        ),
        const SizedBox(height: 16),
        FamousRestaurantsWidget(
          restaurants: List.generate(
            10,
            (index) => FamousRestaurantsItem(
              urlImage:
                  'https://diariodocomercio.com.br/wp-content/uploads/2021/10/restaurante-coco-bambu-bh-2110.jpg',
              id: index,
              name: '$index - Coco Bambu',
            ),
          ),
        ),
        const SizedBox(height: 16),
        const FastMenuWidget(),
        const SizedBox(height: 16),
        StoreList(
          stores: List.generate(
            10,
            (index) => StoreItem(
                storeName: 'Mc Donands $index',
                rate: '${index / 2}',
                price: '4.9',
                time: '${25 + index}',
                kindOfItem: 'Lanche',
                imageUrl:
                    'https://gkpb.com.br/wp-content/uploads/2020/03/ifood-tudo-por-099-geek-publicitario.jpg'),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
