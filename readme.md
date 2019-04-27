# Zadanie 1

Program pwostał jako zadanie zaliczeniowe z przedmiotu "Programowanie w języku Fortran". Jest to prosty program porównujący różne metody mnożenia macierzy.

## Składowe projektu

Projekt składa się z 2 folderów oraz pliku uruchomieniowego.
```
.
├── src                         #(folder zawierający pliki źródłowe)
├── res                         #(folder zawierjący wyniki działania)
├── ./mull                      #(plik uruchomieniowy programu)
```

## Sposób użycia
```
./mull
```

Uruchomienie programu spowoduje przeprowadzenie testów wszystkich metod wykonania mnożenia macierzy (również z różną precyzją (kind=4,8,16)). Wyniki zostaną zapisane w folderze /res.

## Wyniki działania
<center>

![alt text](https://github.com/Marwin34/Fortran_homework/blob/master/res/wykres4.png "Wykres dla kind = 4")
_Wykres porównujący czas wykonania mnożenia macierzy dla kind = 4_

![alt text](https://github.com/Marwin34/Fortran_homework/blob/master/res/wykres8.png "Wykres dla kind = 8")
_Wykres porównujący czas wykonania mnożenia macierzy dla kind = 8_

![alt text](https://github.com/Marwin34/Fortran_homework/blob/master/res/wykres16.png "Wykres dla kind = 16")
_Wykres porównujący czas wykonania mnożenia macierzy dla kind = 16_
</center>

___

Przykładowe wykresy stworzone narzędziem gnuplot stosując odpowiednie pliki sterujące.

```
res
  ├── plots_kind_4          #(plik wykresu kind = 4)
  ├── plots_kind_8          #(plik wykresu kind = 8)
  ├── plots_kin_16          #(plik wykresu kind = 16)
```

## Wnioski
Zadany problem najszybciej liczony jest za pomocą wbudowanej funkcji matmull, jednak róznica pomiędzy metodami jest stosunkowo mała. Zauważyć jednak można, że niwny sposób obliczania iloczynu macierzy jest wolniejszt niż jego ulepszona wersja. Na długość obliczania ma też znaczący wpływ dokładność użytych typów (najszybciej dla kind = 4 a najwolniej dla kind = 16).