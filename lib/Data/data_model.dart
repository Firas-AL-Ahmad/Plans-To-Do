import 'package:flutter/material.dart';
import 'package:mytest/constants/back_constants.dart';

import '../Values/values.dart';

class AppData {
  static final List<Map<String, dynamic>> progressIndicatorList = [
    {
      "cardTitle": "Progress Task Progress",
      "rating": "3/5",
      "progress": "68.99",
      "progressBar": "2"
    },
    {
      "cardTitle": "Registration",
      "rating": "3/4",
      "progress": "75.00",
      "progressBar": "3"
    },
    {
      "cardTitle": "Invite 5 Members",
      "rating": "2/5",
      "progress": "50",
      "progressBar": "1"
    },
    {
      "cardTitle": "Setup Profile",
      "rating": "3/4",
      "progress": "75",
      "progressBar": "3"
    },
    {
      "cardTitle": "Complete Workspace",
      "rating": "3/5",
      "progress": "68.99",
      "progressBar": "2"
    },
  ];

  static final List<Map<String, dynamic>> notificationMentions = [
    {
      "mentionedBy": "Benjamin Poole",
      "mentionedIn": "Unity Gaming",
      "read": false,
      "date": "Nov 2nd",
      "profileImage": "assets/memoji/1.png",
      "hashTagPresent": true,
      "userOnline": false,
      "color": "BBF1C3",
      "hashElement": "@tranmautritam",
      "message":
          " when you have time please take a look at the new designs I just made in Figma. 👋"
    },
    {
      "mentionedBy": "Katharine Walls",
      "mentionedIn": "Unity Gaming",
      "read": true,
      "date": "Nov 2nd",
      "profileImage": "assets/memoji/2.png",
      "hashTagPresent": false,
      "color": "DBCFFE",
      "userOnline": true,
      "hashElement": "",
      "message":
          "Please make the presentation as soon as possible Tam. We're still waiting for it. 🏀"
    },
    {
      "mentionedBy": "Bertha Ramos",
      "mentionedIn": "UI8 Products",
      "read": true,
      "date": "Nov 2nd",
      "profileImage": "assets/memoji/4.png",
      "hashTagPresent": false,
      "userOnline": true,
      "color": "FFC5D5",
      "hashElement": "",
      "message":
          "Are you actually working? I don't see any new stuffs from you. Please Be creative!!!"
    },
    {
      "mentionedBy": "Marie Bowen",
      "mentionedIn": "Productivity",
      "date": "Nov 2nd",
      "read": true,
      "profileImage": "assets/memoji/7.png",
      "hashTagPresent": false,
      "color": "FAA3FF",
      "userOnline": false,
      "hashElement": "",
      "message": "Are you actually working? We're still waiting for it. 🏀"
    },
    {
      "mentionedBy": "Katharine Walls",
      "mentionedIn": "Unity Gaming",
      "read": true,
      "date": "Nov 2nd",
      "profileImage": "assets/memoji/2.png",
      "hashTagPresent": false,
      "color": "DBCFFE",
      "userOnline": true,
      "hashElement": "",
      "message":
          "Please make the presentation as soon as possible Tam. We're still waiting for it. 🏀"
    },
    {
      "mentionedBy": "Bertha Ramos",
      "mentionedIn": "UI8 Products",
      "read": true,
      "date": "Nov 2nd",
      "profileImage": "assets/memoji/4.png",
      "hashTagPresent": false,
      "userOnline": true,
      "color": "FFC5D5",
      "hashElement": "",
      "message":
          "Are you actually working? I don't see any new stuffs from you. Please Be creative!!!"
    },
    {
      "mentionedBy": "Marie Bowen",
      "mentionedIn": "Productivity",
      "date": "Nov 2nd",
      "read": true,
      "profileImage": "assets/memoji/7.png",
      "hashTagPresent": false,
      "color": "FAA3FF",
      "userOnline": false,
      "hashElement": "",
      "message": "Are you actually working? We're still waiting for it. 🏀"
    },
  ];

  static final List<String> profileImages = [
    "assets/memoji/1.png",
    "assets/memoji/2.png",
    "assets/memoji/4.png",
    "assets/memoji/7.png"
  ];

  static final List<Color> groupBackgroundColors = [
    HexColor.fromHex("BCF2C7"),
    HexColor.fromHex("8D96FF"),
    HexColor.fromHex("A5F69C"),
    HexColor.fromHex("FCA3FF")
  ];

  static final List<Map<String, dynamic>> onlineUsers = [
    {
      "name": "Gareth Reid 🔥",
      "profileImage": "assets/memoji/1.png",
      "color": "BAF0C5",
    },
    {
      "name": "Vincent Lyons 🇺🇸",
      "profileImage": "assets/memoji/2.png",
      "color": "DACFFE",
    },
    {
      "name": "Adeline Nunez 🎉",
      "profileImage": "assets/memoji/4.png",
      "color": "FFC7D5",
    },
    {
      "name": "Samuel Doyle 🔥",
      "profileImage": "assets/memoji/7.png",
      "color": "C0E7FD",
    },
    {
      "name": "Ruth Benson 🔥",
      "profileImage": "assets/memoji/9.png",
      "color": "D7D2D4",
    },
    {
      "name": "Adeline Nunez 🎉",
      "profileImage": "assets/memoji/4.png",
      "color": "FFC7D5",
    },
    {
      "name": "Samuel Doyle 🔥",
      "profileImage": "assets/memoji/7.png",
      "color": "C0E7FD",
    },
    {
      "name": "Ruth Benson 🔥",
      "profileImage": "assets/memoji/9.png",
      "color": "D7D2D4",
    },
    {
      "name": "Adeline Nunez 🎉",
      "profileImage": "assets/memoji/4.png",
      "color": "FFC7D5",
    },
    {
      "name": "Samuel Doyle 🔥",
      "profileImage": "assets/memoji/7.png",
      "color": "C0E7FD",
    },
    {
      "name": "Ruth Benson 🔥",
      "profileImage": "assets/memoji/9.png",
      "color": "D7D2D4",
    },
    {
      "name": "Gareth Reid 🔥",
      "profileImage": "assets/memoji/1.png",
      "color": "BAF0C5",
    },
    {
      "name": "Vincent Lyons 🇺🇸",
      "profileImage": "assets/memoji/2.png",
      "color": "DACFFE",
    },
    {
      "name": "Adeline Nunez 🎉",
      "profileImage": "assets/memoji/4.png",
      "color": "FFC7D5",
    },
  ];

  static final List<Map<String, dynamic>> employeeData = [
    {
      "userName": "Aaliyah Langosh",
      "userImage": "assets/girl_smile.png",
      "color": HexColor.fromHex("FCA3FF"),
      "activated": true,
      "bio": "Senior Interactions Agent"
    },
    {
      "userName": "Greta Streich",
      "userImage": "assets/man-head.png",
      "color": HexColor.fromHex("94F1F1"),
      "activated": false,
      "bio": "Dynamic Security Technician"
    },
    {
      "userName": "Judd Koch",
      "userImage": "assets/memoji/7.png",
      "color": HexColor.fromHex("8D96FF"),
      "activated": true,
      "bio": "Senior Interactions Agent"
    },
    {
      "userName": "Katherine Wells",
      "userImage": "assets/memoji/2.png",
      "color": HexColor.fromHex("DBD0FD"),
      "activated": false,
      "bio": "Dynamic Security Technician"
    },
    {
      "userName": "Betha Ramos",
      "userImage": "assets/memoji/9.png",
      "color": HexColor.fromHex("FFC5D5"),
      "activated": false,
      "bio": "Dynamic Security Technician"
    },
    {
      "userName": "Greta Streich",
      "userImage": "assets/girl_smile.png",
      "color": HexColor.fromHex("94F1F1"),
      "activated": false,
      "bio": "Dynamic Security Technician"
    },
    {
      "userName": "Aaliyah Langosh",
      "userImage": "assets/girl_smile.png",
      "color": HexColor.fromHex("FCA3FF"),
      "activated": true,
      "bio": "Senior Interactions Agent"
    },
  ];

  static final List<Map<String, dynamic>> productData = [
    {
      idK: "sadasdas5454342",
      nameK: "Unity Dashboard",
      "teamName": "Design",
      "bio": " project bio",
      "endDate": DateTime.now(),
      "startDate": DateTime.now(),
      "projeImagePath": "lib/images/KAREM.jpg",
      "status": "done",
    },
    {
      idK: "sadasdas5454342",
      nameK: "Instagram   Shots🇺🇸",
      "teamName": "Marketing",
      "bio": " project bio",
      "endDate": DateTime.now(),
      "startDate": DateTime.now(),
      "projeImagePath": "lib/images/KAREM.jpg",
      "status": "done",
    },
    {
      nameK: "Cubbies",
      idK: "sadasdas5454342",
      "teamName": "Design",
      bioK: " project bio",
      endDateK: DateTime.now(),
      startDateK: DateTime.now(),
      "projeImagePath": "lib/images/KAREM.jpg",
      "status": "done",
    },
    {
      idK: "sadasdas5454342",
      nameK: "OpenMind 🚀",
      "teamName": "Development",
      bioK: " project bio",
      endDateK: DateTime.now(),
      startDateK: DateTime.now(),
      "projeImagePath": "lib/images/KAREM.jpg",
      "status": "done",
    },
    {
      nameK: "UI8 Platform",
      idK: "sadasdas5454342",
      "teamName": "Design",
      bioK: " project bio",
      endDateK: DateTime.now(),
      startDateK: DateTime.now(),
      "projeImagePath": "lib/images/KAREM.jpg",
      "status": "done",
    },
    {
      nameK: "3D Characters Inc.",
      idK: "sadasdas5454342",
      "teamName": "Development",
      bioK: " project bio",
      endDateK: DateTime.now(),
      startDateK: DateTime.now(),
      "projeImagePath": "lib/images/KAREM.jpg",
      "status": "done",
    },
  ];
}
