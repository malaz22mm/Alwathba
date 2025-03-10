import 'package:alwathba/data/models/table_leg_model.dart';
import 'package:alwathba/views/widgets/syrian_leg/coustom_subtitle.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/imageasset.dart';
import '../../widgets/homepage/homeimage.dart';
import '../../widgets/syrian_leg/coustom_title.dart';

class SyrianLeague extends StatelessWidget {
  const SyrianLeague({super.key});

  @override
  Widget build(BuildContext context) {
    List<TableLegModel> tableData = [
      TableLegModel(team: "Alwathba",
          point: "90",
          matches: "38",
          w: "29",
          d: "3",
          l: "6",
          goal: "93",
          goals: "40",
          poo: "53"),

      TableLegModel(team: "Ahgaish",
          point: "84",
          matches: "38",
          w: "26",
          d: "6",
          l: "6",
          goal: "88",
          goals: "51",
          poo: "37"),
      TableLegModel(team: "Alfetoah",
          point: "75",
          matches: "38",
          w: "23",
          d: "6",
          l: "9",
          goal: "73",
          goals: "57",
          poo: "36"),
      TableLegModel(team: "Tishreen",
          point: "73",
          matches: "38",
          w: "22",
          d: "7",
          l: "11",
          goal: "65",
          goals: "40",
          poo: "25"),
      TableLegModel(team: "Hetten",
          point: "69",
          matches: "38",
          w: "21",
          d: "6",
          l: "7",
          goal: "67",
          goals: "63",
          poo: "4"),
      TableLegModel(team: "AlWahda",
          point: "67",
          matches: "38",
          w: "18",
          d: "13",
          l: "10",
          goal: "72",
          goals: "41",
          poo: "25"),
      TableLegModel(team: "AlTaleeaa",
          point: "66",
          matches: "38",
          w: "19",
          d: "9",
          l: "11",
          goal: "66",
          goals: "40",
          poo: "27"),
      TableLegModel(team: "alNawaeer",
          point: "59",
          matches: "38",
          w: "16",
          d: "11",
          l: "11",
          goal: "54",
          goals: "39",
          poo: "20"),
      TableLegModel(team: "AlShirtah",
          point: "59",
          matches: "38",
          w: "16",
          d: "11",
          l: "13",
          goal: "55",
          goals: "38",
          poo: "23"),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.primarycolor,
          title: const Text(
            'Syrian League', style: TextStyle(color: Colors.white),),
          actions: [
            Image.asset(AppImage.imagethree),
          ],
          elevation: 0.0,
        ),
        body: Stack(
          children: [
            Center(
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        opacity: 0.3,
                        image: AssetImage(AppImage.imagethree),
                      )),
                )),
            Container(
              color: AppColor.background,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const HomeImage(
                    height: 150,
                    imageurl: AppImage.imagethree,
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Text(
                    "SyrianLeague",
                    textAlign: TextAlign.center,
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyLarge,
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  const CoustomTitle(),
                  const Text(
                    "____________________________________________________",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: tableData.length, itemBuilder: (context, index) {
                        TableLegModel data = tableData[index];
                        return CoustomSubtitle(team: data.team,
                            point: data.point,
                            matches: data.matches,
                            w: data.w,
                            d: data.d,
                            l: data.l,
                            goal: data.goal,
                            goals: data.goals,
                            poo: data.poo);
                      }))
                ],
              ),
            ),
          ],
        ));
  }
}
