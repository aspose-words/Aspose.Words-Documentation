---
title: Konwersja do formatu o stałej stronie w C#
second_title: Aspose.Words dla .NET
articleTitle: Konwersja do formatu o stałej stronie
linktitle: Konwersja do formatu o stałej stronie
description: "Zapisuj dokumenty w formatach PDF, XPS, HTML, XAML, PostScript i PCL przy użyciu C#."
type: docs
weight: 10
url: /pl/net/converting-to-fixed-page-format/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words wdraża własny silnik układu strony. Zanim zagłębimy się w jego specyfikację warto najpierw omówić dokument na wysokim poziomie. Myśląc o dokumencie, użytkownicy zazwyczaj wyobrażają sobie kilka arkuszy papieru zawierających słowa, obrazy, tabele i wykresy. Dokumenty mogą być różnego typu, np. tekst, arkusze kalkulacyjne, slajdy, rysunki CAD, schematy blokowe, dlatego też mogą mieć zasadniczo różne układy. Większość aplikacji umożliwia wysyłanie dokumentów do drukarki; wtedy użytkownik może faktycznie zobaczyć ostateczny zamierzony wygląd dokumentu.

## Wyświetlanie dokumentu w różnych aplikacjach

Różne aplikacje do przeglądania i publikowania dokumentów umożliwiają użytkownikom otwieranie (Adobe Acrobat, XPS Viewer), a czasami edycję (Adobe InDesign) dokumentów o określonych formatach. Aplikacje te zazwyczaj tworzą tak zwane dokumenty w formacie "stałej strony". Taki format dokumentu opisuje dokładnie, gdzie na każdej stronie znajduje się treść dokumentu. Wewnętrznie format PDF lub XPS zawiera opis każdej strony, a także instrukcje rysunkowe, określające układ treści na stronie. Jest to podobne do formatów obrazów i opisuje, gdzie zawartość jest pokazywana w formie rastrowej lub wektorowej.

Natomiast niektóre aplikacje do edycji tekstu nie obsługują przeglądania stron dokumentu. Na przykład Notatnik Microsoft obsługuje bardzo niewiele funkcji innych niż zwykłe wyświetlanie, edytowanie i drukowanie tekstu. Ważną obserwacją jest to, że takie aplikacje nie mogą ani wyświetlać stron dokumentu, ani informować użytkownika, ile z nich zostanie wydrukowanych, pozwalając jedynie na przeglądanie zawartości dokumentu. Dokument można zapisać w formacie zwykłego tekstu i otworzyć w wielu innych aplikacjach. Korzystając z aplikacji umożliwiającej przeglądanie zawartości binarnej dowolnego pliku, można zobaczyć, co jest zapisane w pliku dokumentu – jest to zwykły tekst, nie ma w nim nic więcej.

Nieco bardziej zaawansowane aplikacje do edycji tekstu, takie jak Microsoft WordPad, zapisują dokument w formacie Rich Text Format (RTF), który obsługuje więcej funkcji formatowania, takich jak wstawianie obrazów, formatowanie znaków, marginesy akapitów i odstępy. Jednak format RTF zawiera również tylko treść dokumentu, bez informacji o stronach.

Microsoft Word to obecnie najbardziej zaawansowana aplikacja do edycji tekstu w formacie Windows. Formatuje pliki w formacie DOCX, który elastycznie i szeroko opisuje zawartość dokumentu, pozwalając użytkownikom określić rozmiar strony, orientację sekcji dokumentu, a jako aplikacja WYSIWYG nawet wyświetlać strony dokumentu na ekranie. Niemniej jednak w dalszym ciągu nie ma informacji o sposobie wyświetlania zawartości dokumentu na stronach dostępnych w pliku dokumentu. Plik dokumentu opisuje jedynie samą treść i wzajemne powiązania obiektów dokumentu, wraz z pewnymi ograniczeniami geometrycznymi. W rezultacie przed wyświetleniem dokumentu Microsoft Word sam oblicza te informacje. W tym miejscu wchodzi w grę układ strony.

## Co to jest układ strony

Układ strony dokumentu to struktura danych opisująca położenie określonego obiektu na stronach wszystkich obiektów dokumentu. Ponadto, ponieważ obiekty mają właściwości wpływające na ich wygląd, takie jak rozmiar czcionki, cieniowanie lub efekty rysunkowe, musisz nie tylko wiedzieć, gdzie obiekt się znajduje, ale także jakie obszary strony zajmuje i czy będzie zastosować do wielu stron, tak aby inne obiekty nie nakładały się na ten sam obszar(y).

Aspose.Words implementuje wewnętrznie funkcję układu strony, umożliwiając tworzenie wszystkich ustalonych formatów stron, takich jak PDF, XPS i różne formaty obrazów. Bez układu strony informacje przechowywane w pliku dokumentu o stałej stronie nie byłyby dostępne i wszystkie te formaty nie byłyby obsługiwane.

Związek między dokumentem a układem strony jest dość prosty. Podczas gdy dokument opisuje treść, odpowiedni układ strony opisuje geometrię tej treści. Należy pamiętać, że układ strony nie może istnieć bez dokumentu, ponieważ nie byłoby treści umożliwiającej obliczenie geometrii, ale dokument może istnieć bez układu strony. Na przykład, gdy dokument DOCX jest konwertowany na dokument RTF, zazwyczaj nie jest konieczna znajomość geometrii, ponieważ żaden format jej nie przechowuje.

## Tworzenie układu strony

Tworzenie układu strony może być kosztowną procedurą, zarówno pod względem szybkości, jak i pamięci. Dzieje się tak z kilku powodów:

- Dokument może zawierać dużą ilość treści, która może wymagać wyświetlenia na tysiącach stron. Należałoby opisać geometrię każdego obiektu na każdej stronie, co zajęłoby zasoby pamięci.
- Dokument może zawierać wiele zasad nakładających ograniczenia na geometrię. Można poświęcić znaczną ilość czasu na obliczenia, zapewniając spełnienie wszystkich ograniczeń
- Niektóre funkcje dokumentu, na przykład pole `NUMPAGES`, tworzą rekurencyjne zależności dla przyszłych wartości właściwości, które nie są dostępne w momencie obliczeń. Prowadzi to do powtarzalnych obliczeń i wydłuża czas obliczeń.

Z powyższych powodów Aspose.Words utworzy układ strony tylko wtedy, gdy będzie to konieczne. Typową przyczyną może być żądanie wyrenderowania stron dokumentu lub uzyskania wartości pola zależnej od informacji dostępnych w układzie strony. Mniej oczywistym powodem może być eksport dokumentu do formatu HTML. Mimo że HTML nie jest formatem o stałej stronie i nie opisuje geometrii obiektów treści, nadal obsługuje obrazy. Takie obrazy mogą mieć formę kształtów utworzonych w formacie Microsoft Word z tekstem w środku. Na przykład wykres z etykietami osi można wyeksportować do formatu HTML jako obraz, ale zanim będzie to możliwe, Aspose.Words musi wyrenderować ten obraz, a zatem musi wiedzieć, gdzie wyświetlić etykietę. Zobacz przykładowy wykres poniżej:

<img src="/words/net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="konwersja-do-stałego formatu-strony_1" style="width:800px"/>

### Właściwości niegeometryczne

Oprócz przetwarzania informacji geometrycznych układ strony odpowiada również za obliczanie kolorów i stylów obramowań. W Microsoft Word kolor tekstu można określić jako automatyczny, co oznacza, że wybór koloru powinien opierać się na kolorze cieniowania komórki lub akapitu lub na podstawie koloru strony, na której pojawia się tekst.

Układ strony oblicza, gdzie pojawi się tekst i jaka treść będzie wyświetlana za nim, umożliwiając obliczenie kolorów. Istnieją inne specyficzne obliczenia wykonywane przez układ strony. Na przykład poziome obramowanie w tabeli zależy od tego, czy wiersz tabeli jest ostatnim w kolumnie tekstu i czy jest podzielony między kolumny. Jeśli wiersz jest renderowany jako ostatni w kolumnie, zamiast poziomej używana jest dolna ramka.

![converting-to-fixed-page-format_2](/words/net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

W Aspose.Words użytkownik może zapytać, czy zbudować nowy układ strony, czy zaktualizować istniejący. Obydwa te działania można wykonać metodą [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/) udostępnianą przez klasę [Document](https://reference.aspose.com/words/net/aspose.words/document/). Jeżeli układ strony nie istnieje, ale jest potrzebny (np. gdy dokument jest eksportowany do formatu o stałej stronie), Aspose.Words automatycznie wywoła tę metodę. Jeśli jednak układ strony już istnieje, Aspose.Words użyje już istniejącego, aby nie zużywać zasobów niezbędnych do jego aktualizacji. W takim przypadku użytkownik musi wywołać metodę `UpdatePageLayout`, aby mieć pewność, że układ strony jest zgodny z modelem dokumentu.

### Struktura dynamiczna

Proces tworzenia układu strony składa się z następujących kroków:

- *Conversion* – wyliczenie zawartości modelu dokumentu i przygotowanie odpowiednich obiektów układu.
- *Build* – rozmieszczanie obiektów układu tak, aby reprezentowały treść dokumentu na stronach.
- *Reflow* – aktualizacja rozmieszczenia obiektów w celu uwzględnienia ograniczeń geometrycznych.
- *Projekcja obiektów układu na ustaloną prezentację strony i finalizowanie informacji o kolorach*.
- *Budowanie i ponowne wypełnianie treści kształtów* – krok wymagany, jeśli dokument zawiera kształty z zagnieżdżoną treścią tekstową.

Należy pamiętać, że układ strony jest strukturą dynamiczną, którą można częściowo przebudować. Jest to szczególnie potrzebne, gdy nie ma możliwości obliczenia wartości pól bez przebudowy struktury układu dokumentu. Pole może odwoływać się do lokalizacji obiektu na stronie, a jednocześnie sama wartość pola jest również renderowana na stronie, wpływając na lokalizację odwoływanego obiektu. Układu strony nie można zbudować za jednym razem, ponieważ wartości pól mogą nie być jeszcze dostępne w momencie pozycjonowania na stronie.

Rozważmy typowy scenariusz, w którym pole `NUMPAGES` pojawia się w stopce pierwszej strony dokumentu. Wartością tego pola jest całkowita liczba stron. Aby pozycjonować pole na stronie należy znać jego wartość. Jeśli obecnie tworzona jest tylko pierwsza strona, łączna liczba stron nie jest jeszcze znana. W takim przypadku układ strony musi używać wartości domyślnej, a później wrócić do tego pola i zmienić jego wartość zgodnie z rzeczywistymi obliczeniami. Jednakże zmiana wartości pola może mieć wpływ na inną treść dokumentu na stronie i ostatecznie spowodować dodanie nowej strony lub usunięcie istniejącej strony, co spowoduje, że obliczona wartość stanie się nieaktualna. Problem ten można rozwiązać, umożliwiając aktualizację istniejącego układu strony.

Podczas tworzenia układu możliwe jest również ustawienie właściwości [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/), które wpływają na wydruk dokumentu na stronach.

## Zapisywanie w formacie stałej strony

Po zbudowaniu układu strony i obliczeniu geometrii obiektów oraz ich położenia na stronie dokument można zapisać w formacie strony stałej obsługiwanym przez Aspose.Words. Podczas zapisywania dokumentów w formatach o stałej stronie można używać opcji renderowania wspólnych dla wszystkich tych formatów. Pozwalają kontrolować:

- Liczba i zakres stron zawartych w dokumencie wyjściowym ([PageCount](https://reference.aspose.com/words/net/aspose.words/document/pagecount/)).
- Postęp zapisywania dokumentów strona po stronie ([PageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/pagesavingcallback/)).
- Zestaw znaków używanych do renderowania liczb ([NumeralFormat](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/numeralformat/)).
- Odtwarzacz metaplików ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/metafilerenderingoptions/)). Więcej szczegółów znajdziesz w artykule [Obsługa metaplików Windows](/words/pl/net/handling-windows-metafiles/).
- Współczynnik jakości rekompresji obrazów JPEG, którego wartość może się nieznacznie różnić w zależności od wybranego formatu zapisu ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/)).
- Optymalizacja grafiki wektorowej w formacie Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/)).
- Opcje graficzne podczas zapisywania w formatach Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/usehighqualityrendering/)).
- Zapisywanie dokumentu w skali szarości ([ColorMode](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/colormode/)).
- Przełączanie pomiędzy renderowaniem kształtów DrawingML i kształtów zastępczych ([DmlRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/dmlrenderingmode/)).
- Przełączanie pomiędzy trybami renderowania efektów DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/dmleffectsrenderingmode/)).

Poniższy przykład pokazuje, jak zapisać dokument w formacie JPEG przy użyciu metody `Save` i opcji renderowania:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cs" >}}
