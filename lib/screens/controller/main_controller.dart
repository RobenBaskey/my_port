import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/screens/model/portfolio_model.dart';
import 'package:my_portfolio/screens/model/what_do_mode.dart';

class MainController extends GetxController {
  var resumeType = 0.obs;
  var pricingType = 0.obs;

  var colorizeColors = [
    Colors.black,
    Colors.blue,
    Colors.black,
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    getWhItem();
    getPortfolioItem();
    super.onInit();
  }

  var isHovered = false.obs;
  var hoverIndex = 1000.obs;

  void onEntered(bool hv, int index) {
    isHovered.value = hv;
    hoverIndex.value = index;
  }

  ///what do section
  var isWHHovered = false.obs;
  var whHoverIndex = 1000.obs;
  List<WHModel> whList = List<WHModel>.empty(growable: true).obs;
  List<PortfolioModel> portList =
      List<PortfolioModel>.empty(growable: true).obs;

  void onWhCardEntered(bool hv, int index) {
    isWHHovered.value = hv;
    whHoverIndex.value = index;
  }

  var isPortHovered = false.obs;
  var portHoverIndex = 1000.obs;

  void onPortEntered(bool hv, int index) {
    isPortHovered.value = hv;
    portHoverIndex.value = index;
  }

  getPortfolioItem() {
    var list = <PortfolioModel>[
      PortfolioModel(
          image: "",
          title: "Ecommrece Application with API",
          type: "Application",
          link: ""),
      PortfolioModel(
          image: "",
          title: "Voting App with Firebase Database",
          type: "Application",
          link: ""),
      PortfolioModel(
          image: "", title: "House Rent Design", type: "Dashboard", link: ""),
      PortfolioModel(
          image: "",
          title: "Daily Work Out Routine Application",
          type: "Application",
          link: ""),
      PortfolioModel(
          image: "", title: "Farmacy Manager", type: "Application", link: ""),
      PortfolioModel(
          image: "",
          title: "Dashboard Application with Firebase Database",
          type: "Web Application",
          link: "")
    ];

    portList = list;
  }

  getWhItem() {
    var list = <WHModel>[
      WHModel(
          icon: Icons.ac_unit,
          title: "App Design",
          description: "I will design your imagination in Mobile App."),
      WHModel(
          icon: Icons.developer_board,
          title: "App Development",
          description:
              "I develop high performance, clean code, clean architecture, awesome looking and easily maintanable mobile app."),
      WHModel(
          icon: Icons.threesixty,
          title: "App Testing",
          description:
              "I will test your whole application and find out your bugs."),
      WHModel(
          icon: Icons.file_open,
          title: "App Submission",
          description:
              "I am highly expert on sumission app on Play Store and Apple Store."),
      WHModel(
          icon: Icons.web,
          title: "Flutter Web App",
          description:
              "I will design and develop your website with beautiful animation."),
      WHModel(
          icon: Icons.show_chart,
          title: "App SEO",
          description:
              "I do Mobile App SEO. Through it will increase your download and search rank.")
    ];

    whList = list;
  }
}
