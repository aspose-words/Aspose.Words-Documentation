---
title: Konwersja na Fixed- page Format w Java
second_title: Aspose.Words zamiast Java
articleTitle: Konwersja na format strony Fixed
linktitle: Konwersja na format strony Fixed
description: "Aspose.Words zamiast Java wdraża własny silnik układu stron umożliwiający mu produkcję wszystkich stałych formatów stron, takich jak PDF, XPS, i różne formaty obrazów."
type: docs
weight: 10
url: /pl/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words wdraża własny układ strony silnika. Przed zagłębieniem się w jego specyfikacje warto najpierw omówić dokument na wysokim szczeblu. Myśląc o dokumencie, użytkownicy zazwyczaj wyobrażają sobie wiele arkuszy papieru zawierających słowa, obrazy, tabele i wykresy. Dokumenty mogą być różnych typów, takich jak tekst, arkusze kalkulacyjne, slajdy, rysunki CAD, wykresy, a zatem mogą mieć zasadniczo różne układy. Większość aplikacji pozwala na wysyłanie dokumentów do drukarki; jest to moment, w którym użytkownik może rzeczywiście zobaczyć końcowy zamierzony wygląd dokumentu.

## Wyświetlanie dokumentu w różnych aplikacjach

Różne aplikacje do przeglądania lub publikowania dokumentów pozwalają użytkownikom na otwarcie (Adobe Acrobat, XPS Przeglądarka), a czasami edytować (Adobe InDesign) dokumenty konkretnych formatów. Aplikacje te zazwyczaj produkują tak zwane dokumenty formatu "fixed-page". Taki format dokumentu opisuje dokładnie, gdzie zawartość dokumentu jest umieszczona na każdej stronie. Wewnętrznie, PDF lub XPS format zawiera opis każdej strony, jak również instrukcje rysowania, określając układ treści na stronie. Jest to podobne do formatów obrazów, opisujących, gdzie zawartość jest pokazywana albo w formie rastrowej, albo wektorowej.

Natomiast niektóre programy do edycji tekstu nie obsługują przeglądania stron dokumentu. Na przykład: Microsoft Notatnik obsługuje bardzo niewiele funkcji innych niż po prostu wyświetlanie, edycja i drukowanie tekstu. Ważna uwaga polega na tym, że takie aplikacje nie mogą pokazywać stron dokumentu ani mówić użytkownikowi, ile z nich zostanie wydrukowanych, pozwalając tylko na wyświetlenie treści dokumentu. Dokument może być zapisany w prostym formacie tekstowym i może być otwarty przez wiele innych aplikacji. Korzystanie z aplikacji, która pozwala na oglądanie zawartości binarnej dowolnego pliku można zobaczyć, co jest zapisane w pliku dokumentu - jest to po prostu tekst, nie ma w nim nic innego.

Nieco bardziej wyrafinowane aplikacje do edycji tekstów, takie jak Microsoft WordPad, zapisz dokument w Rich Text Format (RTF), który obsługuje więcej funkcji formatowania, takich jak wstawianie obrazów, formatowanie znaków, marginesy fragmentów i odstępy. Format RTF zawiera jednak tylko treść dokumentu, bez informacji o stronach.

Microsoft Word jest najbardziej zaawansowaną aplikacją do edycji tekstu w Windows Dzisiaj. Formuje pliki w formacie DOCX, który opisuje zawartość dokumentu elastycznie i szeroko, pozwalając użytkownikom określić rozmiar strony, orientację dla sekcji dokumentu, a jako aplikacja WYSIWYG nawet pokazać strony dokumentu na ekranie. Niemniej jednak nadal nie ma informacji dotyczących wyświetlania zawartości dokumentu na stronach dostępnych w pliku dokumentu. Plik dokumentu opisuje tylko samą zawartość, a relacje pomiędzy obiektami dokumentu, wraz z pewnymi ograniczeniami geometrycznymi. W rezultacie, przed wyświetleniem dokumentu, Microsoft Word oblicza te informacje samodzielnie. To tutaj pojawia się układ strony.

## Co to jest układ strony

Układ strony dokumentu jest strukturą danych opisującą, gdzie dany obiekt znajduje się na stronach dla wszystkich obiektów dokumentu. Ponadto, ponieważ obiekty mają właściwości wpływające na ich wygląd, takie jak rozmiar czcionki, cieniowanie lub rysowanie efektów, musisz nie tylko wiedzieć, gdzie jest obiekt, ale także jaki obszar (-y) strony zajmuje, i czy będzie to miało zastosowanie do wielu stron, tak aby inne obiekty nie pokrywały się z tym samym obszarem (-ami).

Aspose.Words implementuje wewnętrzną funkcjonalność układu strony umożliwiającą jej produkcję wszystkich stałych formatów stron, takich jak PDF, XPS, i różne formaty obrazów. Bez układu strony informacje przechowywane w pliku dokumentu stałej strony nie byłyby dostępne i wszystkie te formaty nie byłyby obsługiwane.

Relacja między dokumentem a układem strony jest dość prosta. Podczas gdy dokument opisuje treść, odpowiedni układ strony opisuje geometrię tej treści. Zauważ, że układ strony nie może istnieć bez dokumentu, ponieważ nie byłoby treści do obliczania geometrii, ale dokument może istnieć bez układu strony. Na przykład, gdy dokument DOCX jest przekształcany w dokument RTF, zazwyczaj nie trzeba znać geometrii, ponieważ żaden format go nie przechowuje.

## Tworzenie układu strony

Tworzenie układu strony może być kosztowną procedurą, zarówno pod względem prędkości, jak i pamięci. Wynika to z kilku powodów:

- Dokument może mieć dużą ilość treści, które mogą wymagać wyświetlenia na tysiącach stron. Geometria każdego obiektu na każdej stronie musi być opisana, pochłaniając zasoby pamięci.
- Dokument może zawierać wiele zasad, nakładających ograniczenia na geometrię. Można wykorzystać znaczny czas obliczeniowy, zapewniając spełnienie każdego ograniczenia
- Niektóre funkcje dokumentu, na przykład, `NUMPAGES` pole, tworzyć rekursywne zależności dla przyszłych wartości właściwości, które nie są dostępne w momencie obliczania. Prowadzi to do powtarzalnych obliczeń i dodaje w czasie obliczeń.

Z powyższych powodów, Aspose.Words będzie tworzyć układ strony tylko wtedy, gdy jest to konieczne. Typowym powodem tego byłoby żądanie wydania stron dokumentu lub uzyskania wartości pola zależnej od informacji dostępnych w układzie strony. Mniej oczywistym powodem może być eksportowanie dokumentu do HTML. Mimo że HTML nie jest formatem strony fixed i nie opisuje geometrii obiektów treści, nadal obsługuje obrazy. Takie obrazy mogą mieć formę kształtów stworzonych w Microsoft Word z napisem w środku. Na przykład, wykres z etykietami osi może być eksportowany do HTML jako obraz, ale przed to można zrobić Aspose.Words musi wykonać ten obraz, a zatem musi wiedzieć, gdzie wyświetlić etykietę. Patrz poniższy przykład:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Niegeometryczne Właściwości

Oprócz obsługi informacji geometrycznych, układ strony jest również odpowiedzialny za obliczanie kolorów i stylów granicznych. W Microsoft Word, kolor tekstu może być określony jako automatyczny, co oznacza, że wybór koloru powinien być oparty na kolorze cieniowania komórki lub paragrafu, lub na kolorze strony, gdzie pojawia się tekst.

Układ strony oblicza, gdzie pojawi się tekst i jaka zawartość będzie za nim renderowana, umożliwiając obliczanie kolorów. Istnieją inne szczegółowe obliczenia wykonane przez układ strony. Na przykład granica pozioma w tabeli zależy od tego, czy wiersz tabeli jest ostatni w kolumnie tekstu i czy jest podzielony na kolumny. Jeżeli wiersz jest ostatni w kolumnie, to dolna granica jest używana zamiast poziomej.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

W Aspose.Words, > użytkownik może poprosić o zbudowanie nowego układu strony lub aktualizację istniejącej. Oba te mogą być wykonywane przez [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)) metody dostarczonej przez [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasa. Jeżeli układ strony nie istnieje, ale istnieje taka potrzeba (na przykład, gdy dokument jest eksportowany do formatu strony fixed), Aspose.Words automatycznie wywołają tę metodę. Jeśli jednak układ strony już istnieje, Aspose.Words będzie korzystać z istniejącego, aby uniknąć zużycia zasobów niezbędnych do jego aktualizacji. W tym przypadku, użytkownik musi zadzwonić `UpdatePageLayout` metoda, w celu zapewnienia aktualności układu strony z modelem dokumentu.

### Struktura dynamiczna

Proces tworzenia układu stron obejmuje następujące etapy:

- *Conversion* - opisując zawartość modelu dokumentu i przygotowując odpowiednie obiekty układu.
- *Build* - układanie obiektów układu w celu przedstawienia treści dokumentu na stronach.
- *Reflow* - aktualizacja konfiguracji obiektów w celu spełnienia ograniczeń geometrycznych.
- * Wprowadzanie obiektów układu do stałej prezentacji strony i finalizacja informacji o kolorze *.
- * Budowa i odświeżanie zawartości kształtu * - krok wymagany, jeśli dokument zawiera kształty z zagnieżdżoną zawartością tekstu.

Należy zauważyć, że układ strony jest dynamiczną strukturą, którą można częściowo odbudować. Jest to szczególnie potrzebne, gdy niemożliwe jest obliczenie wartości pola bez odbudowania struktury układu dokumentu. Pole może odnosić się do lokalizacji obiektu na stronie, a jednocześnie wartość pola jest również renderowana na stronie, wpływając na lokalizację obiektu, do którego się odnosi. Układ strony nie może być wbudowany w jednym przejściu, ponieważ wartości pola mogą nie być jeszcze dostępne w momencie pozycjonowania na stronie.

Rozważ typowy scenariusz, gdy `NUMPAGES` pole pojawia się w stopce pierwszej strony dokumentu. Wartość tego pola to całkowita liczba stron. W celu umieszczenia pola na stronie, jego wartość powinna być znana. Jeśli tylko pierwsza strona jest obecnie budowana, to całkowita liczba stron nie jest jeszcze znana. W tym przypadku układ strony musi używać wartości domyślnej, a następnie powrócić do tego pola i zmienić jego wartość zgodnie z rzeczywistymi obliczeniami. Jednakże zmiana wartości pola może mieć wpływ na inne treści dokumentu na stronie i ostatecznie spowodować dodanie nowej strony lub usunięcie istniejącej strony, czyniąc w ten sposób wartość obliczoną przestarzałą. Problem ten można rozwiązać poprzez umożliwienie aktualizacji istniejącego układu strony.

Przy tworzeniu układu można również skonfigurować [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) właściwości wpływające na wynik dokumentu na stronach.

## Zapisywanie do Format strony

Po zbudowaniu układu strony i obliczeniu geometrii obiektów oraz ich pozycji na stronie dokument może być zapisany w formacie strony fixed obsługiwanym przez Aspose.Words. Podczas zapisywania dokumentów do formatów fixed-page można użyć opcji renderowania wspólnych dla wszystkich tych formatów. Umożliwiają one kontrolę:

- Liczba i zakres stron zawartych w dokumencie wyjściowym ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Progress of queen-by- page document saving ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Zestaw znaków używanych do renderowania liczb ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Metafilowy gracz ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Więcej szczegółów na stronie internetowej: [Postępowanie Windows Metafil](/words/pl/java/handling-windows-metafiles/) Artykuł.
- Współczynnik jakości do rekompresji obrazów JPEG, którego wartość może się nieznacznie różnić, w zależności od wybranego formatu zapisu ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Optymalizacja grafiki wektorowej w Aspose.Words wyjście ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Opcje graficzne podczas zapisywania do formatów Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Zapisywanie dokumentu w skali szarości ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Przełączanie między renderowaniem kształtów DrawingML a kształtami oparcia ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Przełączanie pomiędzy trybami renderowania efektów DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

Poniższy przykład pokazuje, jak zapisać dokument do formatu JPEG za pomocą `Save` metoda i opcje renderowania:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
