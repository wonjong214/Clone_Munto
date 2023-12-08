import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:loginscreen/model/meeting/recommend/challenge_summary.dart';

void main(){
  final test_challange_summary = ChallengeSummary(
      image: "testImage",
      like: false,
      tag: "testTag",
      title: "testTitle",
      date: "testDate",
      duration: "testDuration",
      time: 0,
      participants: 0,
      total: 0
  );

  test(
    'make sure the fromJson function returns a valid model object when reading valid JSON',() async {
    final file = new File("assets/data/test_challenge.json");
    final extractedData = json.decode(await file.readAsString()) as Map<String, dynamic>;
    final result = ChallengeSummary.fromJson(extractedData);

    expect(result.image, test_challange_summary.image);
    expect(result.like, test_challange_summary.like);
    expect(result.tag, test_challange_summary.tag);
    expect(result.title, test_challange_summary.title);
    expect(result.date, test_challange_summary.date);
    expect(result.duration, test_challange_summary.duration);
    expect(result.time, test_challange_summary.time);
    expect(result.participants, test_challange_summary.participants);
    expect(result.total, test_challange_summary.total);
  }
  );

}