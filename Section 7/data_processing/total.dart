//library to exit method
import 'dart:io';

//This will help us to take input to our main method
void main(List<String> arguments) {
  //In case we forgot to give input we would get an error message
  if (arguments.isEmpty) {
    print('Usage: dart totals.dart <inputFile.csv>');
    //Defined inside dart io library , non - zero for code failure else zero!
    exit(1);
  }

  final inputFile = arguments.first;
  //This line varialbe add a reference to the file,  an argument pass and  read all content in one go,  return list of string
  final lines = File(inputFile).readAsLinesSync();
  //Create an empty map with annotation which define the key type string and value typr double
  final totalDurationByTag = <String, double>{};
  //Remove header from the lines
  lines.removeAt(0);
  //To hold the value of total duration
  var totalDuration = 0.0;
  //Run for loop
  for (var line in lines) {
    //This provide us the comma seperated values
    final values = line.split(',');
    //The duration at index 3 and replace the "" by '', and this remove the " and give the string representaion of duration
    final durationStr = values[3].replaceAll('"', '');
    //To get duration string as number
    final duration = double.parse(durationStr);
    //To get tag values at index 5
    final tag = values[5].replaceAll('"', '');
    //Hold the previous total duration
    final previousTotal = totalDurationByTag[tag];
    //First time the tag is null so we used this condition
    if (previousTotal == null) {
      totalDurationByTag[tag] = duration;
    } else {
      totalDurationByTag[tag] = previousTotal + duration;
    }
    //Calculate the total duration
    totalDuration += duration;
  }
  //Display the results
  for (var entry in totalDurationByTag.entries) {
    //Get formatted duation values and fix it to single decimal point
    final durationFormatted = entry.value.toStringAsFixed(1);
    //To get the tag name final tag = entry.tag, for unknown tag a placeholder  used, ternary opertor used
    final tag = entry.key == '' ? 'Unallocated' : entry.key;
    //Finally print the required result
    print('$tag: ${durationFormatted}h');
  }
  //Print total duration
  print('Total for all tags: ${totalDuration.toStringAsFixed(1)}h');
}

//PSEUDOCODE:-
// lines = readFile(inputFile)
// durationByTag = empty map
// lines.removeFirst()
// for (line in lines)
// values = line.split(',')
// duration = values[3]
// tag = values[5]
// update(durationByTag[tag], duration)
// end
// printAll(durationByTag)
