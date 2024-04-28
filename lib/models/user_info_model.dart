import 'package:flutter/material.dart';

class userInfo {
  String country;
  String city;
  int? rating;
  String? handle;
  String organization;
  String? rank;
  String? maxrank;
  int? maxRating;
  String image;
  String fname;
  String lname;
  int? contribution;
  int? friendOfCount;

  userInfo(
      {this.city = 'Not Selected',
      this.contribution,
      this.friendOfCount,
      this.fname = 'Not Selected',
      this.lname = 'Not Selected',
      this.country = 'Not Selected',
      this.handle,
      this.maxRating,
      this.maxrank,
      this.organization = 'Not Selected',
      this.rank,
      this.image = 'Not Selected',
      this.rating});
}
