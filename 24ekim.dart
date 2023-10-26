List<int> asalSayilariHesapla(int N) {
  List<int> asalSayilar = [];

  for (int sayi = 2; sayi <= N; sayi++) {
    bool asal = true;

    for (int bolen = 2; bolen * bolen <= sayi; bolen++) {
      if (sayi % bolen == 0) {
        asal = false;
        break;
      }
    }

    if (asal) {
      asalSayilar.add(sayi);
    }
  }

  return asalSayilar;
}

int faktoriyelHesapla(int sayi) {
  if (sayi == 0 || sayi == 1) {
    return 1;
  }
  
  int faktoriyel = 1;
  for (int i = 2; i <= sayi; i++) {
    faktoriyel *= i;
  }
  
  return faktoriyel;
}

void main() {
  int N = 60; 
  List<int> asalSayilar = asalSayilariHesapla(N);
  print("1'den $N'e kadar olan asal sayılar: $asalSayilar");

  int sayi = 3; 
  int faktoriyel = faktoriyelHesapla(sayi);
  print("$sayi sayısının faktöriyeli: $faktoriyel");
}
