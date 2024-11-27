---
title: Tworzenie układu strony w C++
second_title: Aspose.Words dla C++
articleTitle: Tworzenie układu strony
linktitle: Tworzenie układu strony
description: "Tworzenie układu strony może być kosztowną procedurą. Aspose.Words utworzy układ strony tylko wtedy, gdy będzie to konieczne: aby renderować strony dokumentu, uzyskać wartość pola, wyeksportować dokument do HTML itp."
type: docs
weight: 10
url: /pl/cpp/creating-a-page-layout/
timestamp: 2024-09-24-14-35-44
---

Tworzenie układu strony może być kosztowną procedurą, zarówno pod względem szybkości, jak i pamięci. Wynika to z kilku powodów:

- Dokument może zawierać dużą ilość treści, które mogą wymagać wyświetlenia na tysiącach stron. Geometria każdego obiektu na każdej stronie musiałaby zostać opisana, zużywając zasoby pamięci.
- Dokument może mieć wiele reguł, nakładających ograniczenia na geometrię. Można poświęcić znaczny czas obliczeniowy, upewniając się, że każde ograniczenie jest spełnione.
- Niektóre funkcje dokumentu, na przykład pole `NUMPAGES`, tworzą rekurencyjne zależności dla przyszłych wartości właściwości, które nie są dostępne w momencie obliczeń. Prowadzi to do powtarzalnych obliczeń i sumuje się w czasie obliczeń.

Z wyżej wymienionych powodów Aspose.Words utworzy układ strony tylko wtedy, gdy będzie to konieczne. Typowym powodem tego byłoby żądanie renderowania stron dokumentu lub uzyskania wartości pola, która zależy od informacji dostępnych w układzie strony. Mniej oczywistym powodem może być eksport dokumentu do HTML. Mimo że HTML nie jest formatem o stałej stronie i nie opisuje geometrii obiektów zawartości, nadal obsługuje obrazy. Takie obrazy mogą mieć postać kształtów utworzonych w Microsoft Word z tekstem w środku. Na przykład Wykres z etykietami osi można wyeksportować do HTML Jako obraz, ale zanim będzie to możliwe Aspose.Words musi renderować Ten obraz, a zatem musi wiedzieć, gdzie wyświetlić Etykietę. Zobacz przykład tabeli poniżej:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Właściwości Niegeometryczne

Oprócz obsługi informacji geometrycznych układ strony jest również odpowiedzialny za obliczanie kolorów i stylów obramowań. W Microsoft Word kolor tekstu można określić jako automatyczny, co oznacza, że wybór koloru powinien opierać się na Kolorze cieniowania komórki lub akapitu lub na Kolorze strony, na której pojawia się tekst.

Układ strony oblicza, gdzie pojawi się tekst i jaka treść będzie renderowana za nim, umożliwiając obliczanie kolorów. Istnieją inne specyficzne obliczenia wykonywane przez układ strony. Na przykład obramowanie poziome w tabeli zależy od tego, czy wiersz tabeli jest ostatni w kolumnie tekstu i czy jest podzielony na kolumny. Jeśli wiersz jest renderowany jako ostatni w kolumnie, dolna granica jest używana zamiast poziomej.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

W Aspose.Words Użytkownik może zażądać, czy zbudować nowy układ strony, czy zaktualizować istniejący. Oba można wykonać metodą [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/), dostarczoną przez klasę [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Jeśli układ strony nie istnieje, ale istnieje taka potrzeba (na przykład, gdy dokument jest eksportowany do formatu stałej strony), Aspose.Words automatycznie wywoła tę metodę. Jeśli jednak układ strony już istnieje, Aspose.Words użyje istniejącego, aby uniknąć zużywania zasobów niezbędnych do jego aktualizacji. W takim przypadku użytkownik musi wywołać metodę `UpdatePageLayout`, aby upewnić się, że układ strony jest aktualny z modelem dokumentu.

## Dynamiczna Struktura

Proces tworzenia układu strony składa się z następujących etapów:

- *Conversion* - wyliczenie zawartości modelu dokumentu i przygotowanie odpowiednich obiektów Układu.
- *Build* - rozmieszczanie obiektów Układu w celu przedstawienia zawartości dokumentu na stronach.
- *Reflow* - aktualizowanie układu obiektów w celu spełnienia ograniczeń geometrii.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - krok wymagany, jeśli dokument zawiera kształty z zagnieżdżoną zawartością tekstową.

Zwróć uwagę, że układ strony jest strukturą dynamiczną, którą można częściowo przebudować. Jest to szczególnie potrzebne, gdy niemożliwe jest obliczenie wartości pól bez przebudowy struktury układu dokumentu. Pole może odwoływać się do lokalizacji obiektu na stronie, a jednocześnie sama wartość pola jest również renderowana na stronie, wpływając na lokalizację obiektu, do którego się odwołuje. Układu strony nie można zbudować za jednym razem, ponieważ wartości pól mogą nie być jeszcze dostępne w momencie pozycjonowania na stronie.

Rozważ typowy scenariusz, w którym pole `NUMPAGES` pojawia się w stopce pierwszej strony dokumentu. Wartość tego pola to całkowita liczba stron. Aby umieścić pole na stronie, jego wartość powinna być znana. Jeśli tylko pierwsza strona jest obecnie budowana, całkowita liczba stron nie jest jeszcze znana. W takim przypadku układ strony musi użyć wartości domyślnej, a następnie wrócić do tego pola i zmienić jego wartość zgodnie z rzeczywistymi obliczeniami. Jednak zmiana wartości pola może wpłynąć na inną zawartość dokumentu na stronie i ostatecznie spowodować dołączenie nowej strony lub usunięcie istniejącej strony, co spowoduje, że obliczona wartość będzie nieaktualna. Ten problem można rozwiązać, umożliwiając aktualizację istniejącego układu strony.

Podczas tworzenia układu można również skonfigurować właściwości [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/), które wpływają na wynik dokumentu na stronach.
