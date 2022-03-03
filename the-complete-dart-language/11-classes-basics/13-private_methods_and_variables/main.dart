import 'bank_account.dart';

main(List<String> args) {
  final bankAccount = BankAccount(100);

  // Next line: This should be unavailable.
  // It's cause balance property is public.
  // bankAccount.balance = 10000000;

  // Next line: We cannot access here cause of private property
  // bankAccount._balance = 100000;

  print(bankAccount.balance);
}
