import 'package:code_forces/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Rank extends StatelessWidget {
  // const Rank({super.key});
  
  @override
  Widget build(BuildContext context) {

  Color getColor(String rrank)
  {
     if(rrank=='newbie')return Colors.grey;
     else if(rrank=='pupil')return Colors.green;
     else if(rrank=='specialist')return Color.fromARGB(255, 123, 192, 248);
     else if(rrank=='expert')return const Color.fromARGB(255, 13, 71, 161);
     else if(rrank=='candidate master')return  Color(0xffAA00AA);
     else if(rrank=='master'||rrank=='international master')return Color(0xffFF8C00);
     else if(rrank=='grandmaster'||rrank=='international grandmaster'||rrank=='legendary grandmaster')return Colors.red;
     else return Colors.white;
  }

    return Text(Provider.of<userProvider>(context).user!.rank!,
    style: TextStyle(
      fontSize: 32,
      color: getColor(Provider.of<userProvider>(context).user!.rank!),
    ),
    );
  }


}