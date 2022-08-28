import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/screens/model/edu_model.dart';
import 'package:my_portfolio/screens/model/portfolio_model.dart';
import 'package:my_portfolio/screens/model/pro_model.dart';
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
    getEducationItem();
    getExpercationItem();
    getProfessionalDesignData();
    getProfessionalDevelopmentData();
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
  List<EducationModel> educationList =
      List<EducationModel>.empty(growable: true).obs;
  List<EducationModel> experList =
      List<EducationModel>.empty(growable: true).obs;
  List<ProModel> proDesignList = List<ProModel>.empty(growable: true).obs;
  List<ProModel> proDevelopmentList = List<ProModel>.empty(growable: true).obs;

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

  var isEduHovered = false.obs;
  var eduHoverIndex = 1000.obs;

  void onEduEntered(bool hv, int index) {
    isEduHovered.value = hv;
    eduHoverIndex.value = index;
  }

  getEducationItem() {
    var list = <EducationModel>[
      EducationModel(
          title: "BSc in CSE",
          university: "Unknown University(Processing)",
          duration: "University of Studies(2022-Running)",
          point: "0.00",
          outOfPoint: "4",
          description:
              "Computer Engineering encompasses studies on the design, analysis, implementation, and application of computer technology. Being a student of computer technology, I have learned much more things about computers."),
      EducationModel(
          title: "Diploma in Computer Technology(CSE)",
          university: "Thakurgaon Polytechnic Institute",
          duration: "College of Studies(2016-2020)",
          point: "3.79",
          outOfPoint: "4",
          description:
              "Computer Engineering encompasses studies on the design, analysis, implementation, and application of computer technology. Being a student of computer technology, I have learned much more things about computers."),
      EducationModel(
          title: "Secondary School Cirtificate(SSC)",
          university: "Gobindapur Adarsha High School",
          duration: "School of Studies(2010-2015)",
          point: "4.72",
          outOfPoint: "5",
          description:
              "The department of sciences is a home to faculty members from the areas of bio-chemistry, chemistry, physics, mathematics, microbiology, pharmacy and statistics.")
    ];

    educationList = list;
  }

  var isExperHovered = false.obs;
  var experHoverIndex = 1000.obs;

  void onExperEntered(bool hv, int index) {
    isExperHovered.value = hv;
    experHoverIndex.value = index;
  }

  getExpercationItem() {
    var list = <EducationModel>[
      EducationModel(
          title: "Senior Flutter Developer",
          university: "",
          duration: "TechDSF(2021-Running)",
          point: "0.00",
          outOfPoint: "4",
          description:
              "I have been working here for 1 year. I have completed many projects with my Juniors."),
      EducationModel(
          title: "Android Developer",
          university: "",
          duration: "Infinity IT(2020-2021)",
          point: "3.79",
          outOfPoint: "4",
          description:
              "I am work here as a Junior Mobile Application Developer.I have learned much more about mobile application development from here."),
      EducationModel(
          title: "Intern Android Developer",
          university: "",
          duration: "PeopleNTech(2019-2020)",
          point: "4.72",
          outOfPoint: "5",
          description:
              "I am work here as a Junior Mobile Application Developer.I have learned much more about mobile application development from here.")
    ];

    experList = list;
  }

  getProfessionalDesignData() {
    var list = <ProModel>[
      ProModel(title: "APP DESIGN", percentage: 0.97),
      ProModel(title: "FIGMA/XD", percentage: 0.85),
      ProModel(title: "PHOTOSHOP", percentage: 0.8),
    ];

    proDesignList = list;
  }

  getProfessionalDevelopmentData() {
    var list = <ProModel>[
      ProModel(title: "FLUTTER", percentage: 0.95),
      ProModel(title: "API", percentage: 0.9),
      ProModel(title: "FIREBASE", percentage: 0.8),
    ];

    proDevelopmentList = list;
  }
}
