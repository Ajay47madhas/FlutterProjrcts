import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopzoneapp/data.dart';
import 'package:shopzoneapp/models/brands.dart';
import 'package:shopzoneapp/models/product.dart';
import 'package:shopzoneapp/widgets/brandbutton.dart';
import 'package:shopzoneapp/widgets/product_cart.dart';
import 'package:shopzoneapp/widgets/products_pages.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:const Icon(Icons.menu) ,),
      body: _buildui(context),
      bottomNavigationBar: _bottomnavigation(context),
    );
  }

  Widget _bottomnavigation(BuildContext context) {
    return WaterDropNavBar(
        backgroundColor: Colors.white,
        waterDropColor: Theme.of(context).colorScheme.primary,
        bottomPadding: MediaQuery.sizeOf(context).height * 0.02,
        barItems: [
          BarItem(filledIcon: Icons.home, outlinedIcon: Icons.home_outlined),
          BarItem(
              filledIcon: Icons.shopping_bag,
              outlinedIcon: Icons.shopping_bag_outlined),
          BarItem(
              filledIcon: Icons.notifications,
              outlinedIcon: Icons.notifications_outlined),
          BarItem(filledIcon: Icons.person, outlinedIcon: Icons.person_outline),
        ],
        selectedIndex: 0,
        onItemSelected: (index) {});
  }

  Widget _buildui(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.02,
          vertical: MediaQuery.sizeOf(context).width * 0.01,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _topbar(context),
            _title(),
            _searchField(context),
            _catagoriesList(context),
            _productGrid(context),
          ],
        ),
      ),
    );
  }

//Topbar with CircleAvater
  Widget _topbar(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.06,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://sm.ign.com/ign_nordic/cover/a/avatar-gen/avatar-generations_prsz.jpg"),
          ),
        ],
      ),
    );
  }

//Upper Title with rich Text
  Widget _title() {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "Discover\n",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          TextSpan(
            text: "Get The Best Sneakers Here",
            style: TextStyle(
                color: Colors.black26,
                fontWeight: FontWeight.w500,
                fontSize: 15),
          ),
        ],
      ),
    );
  }

//SearchFeild with Container and TextFeild
  Widget _searchField(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.06,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.04,
      ),
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.sizeOf(context).width * 0.02,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 10),
          ]),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.black26,
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.80,
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "search your favarties",
                  hintStyle: TextStyle(color: Colors.black26)),
            ),
          ),
        ],
      ),
    );
  }

//catagoriesList with Containers
  Widget _catagoriesList(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.05,
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.sizeOf(context).width * 0.01,
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: brands.length,
          itemBuilder: (context, index) {
            Brand brand = brands[index];
            return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: BrandButton(brand: brand, isSelected: index == 1));
          }),
    );
  }

  Widget _productGrid(BuildContext context) {
    return Expanded(
        child: Container(
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.75),
        itemBuilder: (context, index) {
          Products product = products[index];
          return ProductCart(
              product: product,
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.02,
                  vertical: MediaQuery.sizeOf(context).height * 0.02),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context){
                  return Productpageui(products: product);
                } ),);
              });
        },
      ),
    ));
  }
}
