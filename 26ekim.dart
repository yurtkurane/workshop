//Verilen sayının Armstrong Sayı olup olmadığını bulan fonksiyonu yazınız ve test ediniz.

//Armstrong Sayı Nedir ?
//N haneli bir sayının basamaklarının n’inci üstlerinin toplamı, sayının kendisine eşitse, böyle sayılara Armstrong sayı denir.
//Örneğin 407 = (4^3)+ (0^3)+(7^3) = 64+0+343 = 407  bir armstrong sayıdır.

import 'dart:math';

bool isArmstrong(int number) {
  int originalNumber = number;
  int numDigits = number.toString().length;
  int sum = 0;

  while (number > 0) {
    int digit = number % 10;
    sum += pow(digit, numDigits).toInt();
    number ~/= 10;
  }

  return sum == originalNumber;
}

void main() {
  int number = 371; 
  if (isArmstrong(number)) {
    print("$number bir Armstrong sayısıdır.");
  } else {
    print("$number bir Armstrong sayısı değildir.");
  }
}

