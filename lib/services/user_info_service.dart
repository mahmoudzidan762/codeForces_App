import 'dart:convert';
import 'package:code_forces/models/user_info_model.dart';
import 'package:http/http.dart' as http;

class userInfoService {


  Future<userInfo> getService({required String name}) async {
    Uri url = Uri.parse('https://codeforces.com/api/user.info?handles=$name');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    userInfo jsonData = userInfo(
        city: (data['result'][0]['city']==null)?'Not Selected':data['result'][0]['city'],
        country: (data['result'][0]['country']==null)?'Not Selected':data['result'][0]['country'],
        rating: data['result'][0]['rating'],
        handle: data['result'][0]['handle'],
        organization: (data['result'][0]['organization']==null)?'Not Selected':data['result'][0]['organization'],
        rank: (data['result'][0]['rank']==null)?'Unrated':data['result'][0]['rank'],
        maxRating: data['result'][0]['maxRating'],
        maxrank: data['result'][0]['maxRank'],
        image: data['result'][0]['titlePhoto'],
        fname: (data['result'][0]['firstName']==null)?'Not Selected':data['result'][0]['firstName'],
        lname: (data['result'][0]['lastName']==null)?'Not Selected':data['result'][0]['lastName'],
        contribution: data['result'][0]['contribution'],
        friendOfCount:  data['result'][0]['friendOfCount'],
        );
        
        return jsonData;
  }
}


