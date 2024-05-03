import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopzoneapp/models/product.dart';
import 'package:shopzoneapp/widgets/addbutton.dart';
import 'package:shopzoneapp/widgets/button.dart';

class Productpageui extends StatelessWidget {
  final Products products;
  const Productpageui({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _appbar(),
      body: _buildUi(context),
    );
  }

  PreferredSizeWidget _appbar() {
    return AppBar(
      scrolledUnderElevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_outline),
        ),
      ],
    );
  }

  Widget _buildUi(BuildContext context) {
    return Column(
      children: [
        _productImage(context),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.03,
        ),
        _productdetails(context),
      ],
    );
  }

  Widget _productImage(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.45,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.contain,
          image: NetworkImage(products.image),
        ),
      ),
    );
  }

  Widget _productdetails(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height * 0.02,
            horizontal: MediaQuery.sizeOf(context).width * 0.05),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _productTitles(),
            _pricetitle(context),
            _productdiscription(context),
            _sizeproduct(context),
            _addtoColumn(context),
          ],
        ),
      ),
    );
  }

  Widget _productTitles() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          products.name,
          textScaler: const TextScaler.linear(1.4),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          "⭐ ${products.rating.toString()}",
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
        )
      ],
    );
  }

  Widget _pricetitle(BuildContext context) {
    return Text(
      "₹${products.price.toString()}",
      style: TextStyle(
          fontSize: 25,
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.w700),
    );
  }

  Widget _productdiscription(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.sizeOf(context).height * 0.05),
      child: Text(products.descrpition),
    );
  }

  Widget _sizeproduct(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: const Text("Select the size"),
        ),
   const     Row(
          children: [
            SizedButton(
              size: 9, isSelectedor: true,
            ),
            SizedButton(
              size: 10,
            ),
            SizedButton(
              size: 11,
            ),
            SizedButton(
              size: 12,
            ),
            SizedButton(
              size: 13,
            ),
          ],
        )
      ],
    );
  }

  Widget _addtoColumn(BuildContext context){
return Container(
  margin: EdgeInsets.symmetric(
    vertical: MediaQuery.sizeOf(context).height*0.02,
  ),
  child: AddButton(width: MediaQuery.sizeOf(context).width * 0.80, height: MediaQuery.sizeOf(context).height * 0.05));
  }
}
