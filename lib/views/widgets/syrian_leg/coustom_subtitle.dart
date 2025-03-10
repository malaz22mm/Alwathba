import 'package:flutter/material.dart';
class CoustomSubtitle extends StatelessWidget {
  final String team;
  final String point;
  final String matches;
  final String w;
  final String d;
  final String l;
  final String goal;
  final String goals;
  final String poo ;
  const CoustomSubtitle({super.key, required this.team, required this.point, required this.matches, required this.w, required this.d, required this.l, required this.goal, required this.goals, required this.poo, });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width:75,child: Text(team,style: const TextStyle(color: Colors.white),)),
            const SizedBox(
              width: 5,
            ),
            SizedBox(width:20,child: Text(point,style: const TextStyle(color: Colors.white))),
            const SizedBox(
              width: 25,
            ),
            SizedBox(width:20,child: Text(matches,style: const TextStyle(color: Colors.white))),
            const SizedBox(
              width: 30,
            ),
            SizedBox(width: 20,child: Text(w,style: const TextStyle(color: Colors.white))),
            const SizedBox(
              width: 18,
            ),
            SizedBox(width:20,child: Text(d,style: const TextStyle(color: Colors.white))),
            const SizedBox(
              width: 3,
            ),
            SizedBox(width:20,child: Text(l,style: const TextStyle(color: Colors.white))),
            const SizedBox(
              width: 6,
            ),
            SizedBox(width:20,child: Text(goal,style: const TextStyle(color: Colors.white))),
            const SizedBox(
              width: 30,
            ),
            SizedBox(width:20,child: Text(goals,style: const TextStyle(color: Colors.white))),
            const SizedBox(
              width: 30,
            ),
            SizedBox(width:20,child: Text(poo,style: const TextStyle(color: Colors.white))),


          ],
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}
