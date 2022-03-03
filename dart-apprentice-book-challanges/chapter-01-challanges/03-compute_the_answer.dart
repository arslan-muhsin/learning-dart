main(List<String> args) {
  const x = 46;
  const y = 10;

  const answer1 = (x * 100) + y; // 4600 + 10 = 4610
  const answer2 = (x * 100) + (y * 100); // 4600 + 1000 = 5600
  const answer3 = (x * 100) + (y / 10); // 4600 + 1 = 4601

  print(answer1);
  print(answer2);
  print(answer3);
}
