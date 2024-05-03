import 'package:shopzoneapp/models/brands.dart';
import 'package:shopzoneapp/models/product.dart';

List<Brand> brands = [
  Brand(
      name: "Puma",
      iconURL:
          "https://cdn.iconscout.com/icon/free/png-512/free-puma-3421993-2854419.png?f=webp&w=256"),
  Brand(
      name: "Nike",
      iconURL:
          "https://cdn.iconscout.com/icon/free/png-512/free-nike-13-722724.png?f=webp&w=256"),
  Brand(
      name: "Adidas",
      iconURL:
          "https://cdn.iconscout.com/icon/free/png-512/free-adidas-12-722648.png?f=webp&w=256"),
  Brand(
      name: "Jordon",
      iconURL:
          "https://cdn.iconscout.com/icon/free/png-512/free-jordan-42-282181.png?f=webp&w=256")
];

List<Products> products = [
  Products(
      name: "Nike Mens ",
      brand: "nike",
      price: 2864,
      catagory: "Sneakers",
      reviews: 41,
      rating: 4.2,
      descrpition:
          "NIKE INDIA PVT LTD, NIKE INDIA PVT LTD,GROUND & 1ST FLOOR OLYMPIA BUILDING,NO 66/1 BAGMANE TECH PARK,CV RAMAN NAGAR BANGALORE-560093 INDIA",
      image: "https://m.media-amazon.com/images/I/61LFuEQGv5L._SY625_.jpg"),
  Products(
      name: "Puma Units",
      brand: "Puma",
      price: 2019,
      catagory: "Casual",
      reviews: 825,
      rating: 3.9,
      descrpition:
          "Puma, MOCHIKO SHOES KHASRA NO 3914, MOUZA MAZRI GRANT, LAL TAPPER INDUSTRIAL AREA, NH-72, 248140 DEHRADUN",
      image: "https://m.media-amazon.com/images/I/41N+yDfAmRL._SY695_.jpg"),
  Products(
      name: "adidas Mens ",
      brand: "Adidas",
      price: 2790,
      catagory: "Sneakers",
      reviews: 2979,
      rating: 4.0,
      descrpition:
          'Please note that orders which exceed the quantity limit will be auto-canceled. This is applicable across sellers.',
      image: "https://m.media-amazon.com/images/I/610oXOheu+L._SY500_.jpg"),
  Products(
      name: "Jordan AJ MVP",
      brand: "Jordan",
      price: 9999,
      catagory: "Spots",
      reviews: 68,
      rating: 4.8,
      descrpition:
          "into one fire homage. Elements of the AJ6, 7, and 8 come to life in fresh new ways right on your feet. The sum is greater than the parts here",
      image:
          "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ4-0ma-7A2tStw_jnDPmGwef3pWpa8umrnbugK1oC0-kIs-CRy0qlryIeRBtsvPu-x35pyAAUg92dJ2gupzYIkDxQEvoQBaASkrCsCLwisoh7Goa_tG-w5WQ")
];
