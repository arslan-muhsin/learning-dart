extension NumberExtension on int {
  List<int> rangeTo(int range) {
    if (this > range) {
      return [];
    }

    List<int> rangeList = [];
    for (var i = 1; i <= range; i++) {
      rangeList.add(i);
    }

    return rangeList;
  }
}

main(List<String> args) {
  for (var i in 1.rangeTo(10)) {
    print(i);
  }
}
