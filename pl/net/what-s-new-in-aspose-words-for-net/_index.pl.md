---
title: Co nowego
second_title: Aspose.Words dla .NET
articleTitle: Co nowego w Aspose.Words dla .NET
linktitle: Co nowego w Aspose.Words dla .NET
type: docs
description: "Aspose.Words dla .NET rozwija się i ulepsza każdego dnia. Na tej stronie możesz dowiedzieć się o ogromnych i najciekawszych funkcjach produktu."
weight: 10
url: /pl/net/what-s-new-in-aspose-words-for-net/
---

Na tej stronie opisano najciekawsze nowe funkcje Aspose.Words wprowadzone w ostatnich wydaniach.

## Aspose.Words dla .NET 24.1, 24.2, 24.3

Aspose.Words 24.1 poprawia doświadczenie w zarządzaniu kolorami obrysów, ulepsza obiekty OLE i raportowanie LINQ, a także wprowadza nowy publiczny API źródeł bibliograficznych.

Aspose.Words 24.2 rozszerzyło API wykresów, zarządzanie stylem i opcje LINQ. W tej wersji Aspose.Words wprowadzono również możliwość określania SvgSaveOptions podczas renderowania, bardziej elastyczne ładowanie plików Markdown oraz pracę z tekstem odwołania dla przypisów dolnych i przypisów końcowych.

Aspose.Words 24.3 wprowadza nowy czytnik/zapisywacz TIFF oraz emulację operacji binarnych na rastrach dla meta plików WMF. Aspose.Words 24.3 nadal rozbudowuje API wykresów.

### Renderowanie i drukowanie

#### Kontrola koloru obrysu <sup>24.1</sup>

Klasa [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) została rozszerzona o zestaw nowych właściwości publicznych związanych z zarządzaniem kolorami obrysu: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) i [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) i [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### Rozszerzenie DrawingML Charts API <sup>24.2 / 24.3</sup>

**DrawingML Charts API** jest nadal rozwijane.

### Ładowanie i zapisywanie dokumentów

#### Określanie SvgSaveOptions podczas renderowania <sup>24.2</sup>

Dodano możliwość określania [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) podczas renderowania za pomocą [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) i [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/).

#### Zachowanie pustych wierszy podczas ładowania plików Markdown <sup>24.2</sup>

Dodano możliwość zachowania pustych wierszy podczas ładowania plików Markdown.

#### Nowy czytnik/zapisywacz TIFF <sup>24.3</sup>

Dla Aspose.Words dla .NET Standard, .NET 6 i późniejszych został opracowany nowy czytnik/zapisywacz TIFF. Aspose.Words dla .NET 24.3 dodaje obsługę odczytu obrazów TIFF z typami kompresji JPEG i Old JPEG, a także znacznie poprawia jakość operacji odczytu i zapisu.

### Inny

* Wprowadzono możliwość modyfikacji tekstu kontrolki `TextBox` OLE poprzez dodanie nowej właściwości [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) do nowej klasy [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/). <sup>24.1</sup>
* Publiczny API źródeł bibliograficznych został zaimplementowany poprzez dodanie nowej przestrzeni nazw [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) z jej nowymi klasami i wyliczeniami oraz poprzez dodanie nowej właściwości [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) do klasy [Document](https://reference.aspose.com/words/net/aspose.words/document/). <sup>24.1</sup>
* Dostarczono API ograniczający dostęp do członków typu przy użyciu składni szablonu dla silnika raportowania LINQ. <sup>24.1</sup>
* Do klasy [Style](https://reference.aspose.com/words/net/aspose.words/style/) dodano nowe publiczne właściwości [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) i [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) w celu ulepszenia zarządzania stylem. <sup>24.2</sup>
* Funkcjonalność pobierania rzeczywistego tekstu znacznika odwołania dla przypisów dolnych i przypisów końcowych została ulepszona dzięki właściwości [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) i metodzie [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* Włączono zgodność z wykresami `Word 2016` dla `LINQ Reporting Engine`. <sup>24.2</sup>
* Zaimplementowano emulację operacji binarnych na rastrach dla meta plików WMF. <sup>24.3</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla .NET 24.1 Informacje o wydaniu](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 24.2 Informacje o wydaniu](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 24.2 Informacje o wydaniu](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

{{% /alert %}}

## Aspose.Words dla .NET 23,9, 23,10, 23,11, 23,12

Aspose.Words 23.9 rozszerza opcje renderowania, emulację renderowania metaplików i opcje zapisywania markdown.

Aspose.Words 23.10 poprawia renderowanie, rozszerza opcje ładowania i zapisywania dokumentów oraz umożliwia użytkownikom łączenie dokumentów na nowe sposoby.

Aspose.Words 23.11 usprawnia pracę dzięki rewizjom, formatowi XLSX i czcionkom w legendzie wykresu o dodatkowe opcje.

Aspose.Words 23.12 wprowadza nowe właściwości i wyliczenia do pracy z dokumentami PDF i OOXML, a także obsługę obrazów WebP.

### Renderowanie i drukowanie

#### Dostosowywanie tytułów osi na wykresach DrawingML <sup>23.9</sup>

Możliwość dostosowania tytułów osi na wykresach DrawingML została wprowadzona poprzez wdrożenie nowej właściwości [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) i [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) klasy publicznej.

#### Określanie pionowego położenia czcionek w akapicie <sup>23.9</sup>

Możliwe jest teraz zdefiniowanie pionowej pozycji czcionek w akapicie przy użyciu nowej publicznej właściwości [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) i nowego wyliczenia [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/).

#### Kontrola koloru pierwszego planu <sup>23.10</sup>

Do klas [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) i [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) dodano możliwość odzyskania koloru pierwszego planu bez modyfikatorów poprzez właściwość **BaseForeColor**.

#### Rozszerzanie funkcjonalności wykresów <sup>23.10</sup>

Funkcjonalność klas [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) i [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) została rozszerzona o nowe metody i właściwości.

#### Automatycznie dopasuj i dopasuj obraz do kształtu <sup>23.10</sup>

Nowa metoda [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) zapewnia prosty sposób automatycznego dopasowania i dopasowania obrazu do określonego kształtu.

#### Domyślne formatowanie czcionki dla wpisów legendy wykresów DrawingML <sup>23.11</sup>

Możliwość określenia domyślnego formatowania czcionki dla wpisów legendy wykresów DrawingML została dodana poprzez właściwość [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/). Ta funkcja zapewnia bardziej uproszczony i spójny wygląd elementów wykresu, poprawiając ogólną estetykę dokumentu.

#### Określ układ strony podczas otwierania pliku PDF w programie Reader <sup>23.12</sup>

Dodano możliwość określenia układu strony, który będzie używany podczas otwierania dokumentu w czytniku PDF poprzez wprowadzenie nowej właściwości [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) do klasy [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) i wprowadzenie nowego wyliczenia [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/).

### Ładowanie i zapisywanie dokumentów

#### Określanie nazwy folderu w celu utworzenia identyfikatorów URI obrazu w Markdown <sup>23.9</sup>

Rozszerzono klasę [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) o właściwość [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/), która pozwala określić nazwę folderu służącego do konstruowania identyfikatorów URI obrazów zapisywanych w dokumencie Markdown.

#### Zmniejsz rozmiar wyjściowy PDF <sup>23.10</sup>

Zaimplementowano różne optymalizacje renderowania plików PDF w celu zmniejszenia rozmiaru wyjściowego podczas korzystania z ustawień [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/).

#### Rozpoznawanie hiperłączy podczas ładowania dokumentów TXT <sup>23.10</sup>

Zaimplementowano funkcję rozpoznawania hiperłączy podczas ładowania dokumentów TXT poprzez dodanie nowej właściwości [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/).

### Inny

* Zaimplementowano emulację renderowania metaplików w celu określenia rozmiaru rasteryzacji, szczególnie dla szerokości pisaka WMF i szerokości pisaka kosmetycznego EMF. Aby to osiągnąć, właściwość **ScaleWmfFontsToMetafileSize** została zastąpiona właściwością [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) i dodana została właściwość [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/). <sup>23.9</sup>
* Wprowadzono uproszczoną metodę wstawiania jednego dokumentu do innego dokumentu w aktualnej pozycji kursora, wykorzystując metodę [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* Możliwość dostępu i modyfikowania właściwości stylu została dodana poprzez wprowadzenie nowej właściwości [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/). <sup>23.10</sup>
* Do metod klasy [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) dodano parametr typu ogólnego. <sup>23.10</sup>
* Wdrożono sposób kontrolowania, kiedy dana wersja powinna zostać zaakceptowana/odrzucona, za pomocą metod [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) i [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/). To ulepszenie zapewnia użytkownikom lepszą kontrolę nad procesem rewizji. <sup>23.11</sup>
* Możliwość zapisania wszystkich sekcji dokumentu w tym samym arkuszu XLSX została zapewniona dzięki nowemu typowi wyliczeniowemu [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) i nowej właściwości [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/). <sup>23.11</sup>
* Zaimplementowano sposób kontrolowania sposobu wykorzystania rozszerzeń formatu ZIP64 w dokumentach OOXML poprzez nową właściwość Zip64Mode klasy `OoxmlSaveOptions` i nowe wyliczenie Zip64Mode. <sup>23.12</sup>
* Wprowadzono obsługę obrazu WebP. Należy pamiętać, że ta funkcja jest dostępna tylko w wersjach .NetStandart i .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla .NET 23.9 Informacje o wydaniu](/words/net/aspose-words-for-net-23-9-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 23.10 Informacje o wydaniu](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 23.11 Informacje o wydaniu](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 23.12 Informacje o wydaniu](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words dla .NET 23,5, 23,6, 23,7, 23,8

Aspose.Words 23.5 zwiększa możliwości pracy z danymi serii wykresów i możliwość pracy z dokumentami ODT, a także poprawia nagłówki/stopki i zawijanie ich tekstu.

Aspose.Words 23.6 rozszerza opcje renderowania, dodaje nowy format eksportu, ulepsza raportowanie LINQ i narzędzia LowCode.

Aspose.Words 23.7 zwiększa możliwości raportowania, dodaje nowy format eksportu i wprowadza zmiany w pracy z tabelami i podpisami cyfrowymi.

Aspose.Words 23.8 rozszerza możliwości różnych formatów, poprawia renderowanie i dodaje nowe opcje pracy z polami

### Obsługiwane formaty

* Począwszy od wersji 23.6 możliwe jest zapisanie dokumentu w formacie XLSX. Teraz możesz konwertować swoje dokumenty do formatu Excel. <sup>23,6</sup>
* Począwszy od wersji 23.7 możliwe jest zapisanie strony dokumentu lub kształtu w formacie EPS. <sup>23,7</sup>

### Nowe funkcje formatu

* Wprowadzono funkcjonalność automatycznego generowania spisu treści (TOC) dla dokumentów MOBI. <sup>23.8</sup>
* Konstruktor [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) został rozszerzony o [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
* Zaimplementowano kształtowanie tekstu pionowego w metaplikach EMF. <sup>23.8</sup>

### Renderowanie i drukowanie

#### Pobieranie i modyfikowanie danych serii wykresów <sup>23.5</sup>

Dodano funkcję pobierania i modyfikowania danych serii wykresów:

* nowe klasy: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* nowe typy wyliczeń: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Wsparcie dla zaawansowanej typografii <sup>23.6</sup>

Dodano obsługę zaawansowanej typografii w renderowaniu WMF, EMF i EMF+.

#### Kolorowa treść na stronie <sup>23.6</sup>

Dodana została publiczna właściwość [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/) wskazująca czy strona jest kolorowa czy nie.

#### Formatowanie etykiet danych wykresu <sup>23.6</sup>

Zaimplementowano możliwość ustawiania formatowania wypełnienia, obrysu i objaśnień dla etykiet danych wykresu.

### Mail Merge i raportowanie

#### Dynamiczne wstawianie HTML dla silnika raportowania LINQ <sup>23.6</sup>

Dodano nowy sposób dynamicznego wstawiania HTML dla LINQ Reporting Engine.

#### Obsługa tagów Mustache <sup>23.7</sup>

Tagi Mustache są teraz obsługiwane w metodach [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) i [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion).

#### Aktualizacje składni szablonu aparatu raportowania LINQ <sup>23.7</sup>

Składnia szablonu aparatu raportowania LINQ obsługuje teraz metody rozszerzenia `ElementAt` i ElementAtOrDefault.

#### Określanie rozmiaru renderowanych obrazów <sup>23.8</sup>

Wprowadzono nową publiczną właściwość [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) służącą do określania rozmiaru renderowanych obrazów w pikselach.

#### Zachowaj białe znaki dla wartości ciągu JSON – LINQ <sup>23.8</sup>

Do mechanizmu raportowania LINQ dodano opcję pozwalającą zachować białe znaki dla wartości ciągów JSON.

### LowCode <sup>23.6</sup>

Dodano nowe metody LowCode przeznaczone do łączenia różnych typów dokumentów w jeden dokument wyjściowy.

### Inny

* Wprowadzono obsługę zawijania tekstu w nagłówkach/stopkach. <sup>23,5</sup>
* Dodano możliwość usuwania podpisów cyfrowych z dokumentów ODT metodą [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/). <sup>23,5</sup>
* Dodano publiczną właściwość [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) umożliwiającą uzyskanie tekstu podstawowego i rubinowego przewodnika fonetycznego [Run](https://reference.aspose.com/words/net/aspose.words/run/). <sup>23,5</sup>
* Możliwość pobrania wartości podpisu cyfrowego z dokumentu podpisanego cyfrowo w postaci tablicy bajtów została dodana poprzez wprowadzenie nowej właściwości [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/). <sup>23,7</sup>
* Klasy [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) i [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) zostały rozszerzone o nowe publiczne składowe – [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/) i [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/). <sup>23,7</sup>
* Dodano obsługę pól CITATION i BIBLIOGRAPHY. <sup>23.8</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla .NET 23.5 Informacje o wydaniu](/words/net/aspose-words-for-net-23-5-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 23.6 Informacje o wydaniu](/words/net/aspose-words-for-net-23-6-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 23.7 Informacje o wydaniu](/words/net/aspose-words-for-net-23-7-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 23.8 Informacje o wydaniu](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words dla .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 poprawia wydajność emulacji operacji rastrowych, a także poprawia jakość eksportu i renderowania dokumentów.

Aspose.Words 23.2 wprowadza zapisywanie dokumentów w formacie MOBI, poprawia renderowanie wykresów i wprowadza zauważalne zmiany w szczegółach wyglądu dokumentów.

Aspose.Words 23.3 usprawnia import i zapisywanie dokumentów o nowe właściwości, a także poprawia jakość pracy z kolorem tła i pierwszego planu oraz gradientem promieniowym.

Aspose.Words 23.4 poprawia obliczanie niektórych parametrów oraz pozycjonowanie tabeli i otaczającego tekstu.

### Ulepszenia w wydajności

#### Emulacja operacji rastrowych <sup>23.1</sup>

Znacząco poprawiono wydajność i jakość emulacji operacji rastrowych na metaplikach.

### Obsługiwane formaty

#### Eksport do MOBI <sup>23.2</sup>

Począwszy od wersji 23.2 możliwe jest zapisanie dokumentu w formacie MOBI (zwanym także PRC, AZW – własny format plików e-booków Amazon Kindle). Teraz możesz nie tylko ładować dokumenty MOBI, ale także eksportować swoje pliki do formatu MOBI.

### Wykonanie

#### Praca z kolorami motywu cieniowania <sup>23.1</sup>

Zaimplementowano możliwość pracy z cieniowaniem kolorów motywu.

#### Wsparcie współczynnika R-kwadrat na wykresach DML <sup>23.1</sup>

Dodano obsługę współczynnika R-kwadrat w etykietach linii trendu wykresu DML podczas renderowania.

#### Ulepszenia renderowania wykresów <sup>23.2</sup>

Od wersji 23.2 znacznie poprawiono renderowanie wykresów.

#### Kontrola koloru tła i pierwszego planu <sup>23.3</sup>

Klasa [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) została rozszerzona o zestaw nowych właściwości publicznych związanych z kolorami tła i pierwszego planu: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) i [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) i [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/).

#### Gradienty radialne z natywnym modułem cieniującym `SkiaSharp` <sup>23.3</sup>

Zaimplementowano renderowanie gradientów promieniowych za pomocą natywnego modułu cieniującego `SkiaSharp` dla .NET Standard.

#### Odległość pomiędzy tabelą a otaczającym tekstem <sup>23.4</sup>

Dodano możliwość ustawienia odległości tabeli od otaczającego tekstu poprzez wprowadzenie nowych właściwości do klasy [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/): [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) i [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/).

### Ładowanie i zapisywanie dokumentów

#### Generowanie `TOC` dla dokumentów AZW3 <sup>23.1</sup>

Dodano możliwość generowania `TOC` (spisu treści) dla dokumentów AZW3 poprzez wykorzystanie właściwości [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/).

#### Eksportowanie elementów listy do formatu Markdown <sup>23.1</sup>

Zapewniono sposób kontrolowania eksportu elementów listy do formatu Markdown poprzez dodanie właściwości [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) do klasy [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/).

#### Powiadomienia o postępie zapisywania dokumentu <sup>23.3</sup>

Zaimplementowano zapisywanie powiadomień o postępie dla formatów MOBI i AZW3.

#### Regulacja odstępów między zdaniami i wyrazami <sup>23.3</sup>

Dodano możliwość określenia, czy odstępy między zdaniami i wyrazami mają być automatycznie dostosowywane podczas importu dokumentu poprzez wprowadzenie właściwości [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/).

### Inny

* Możliwość określenia odstępów między znakami w dokumencie została dodana poprzez implementację właściwości [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) <sup>23.2</sup>
* Sposób instruowania Aspose.Words, czy uwzględniać pola tekstowe, przypisy dolne i końcowe w statystykach liczby słów, został zapewniony poprzez dodanie właściwości [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) <sup>23.2</sup>
* We właściwości [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) <sup>23.2</sup> wprowadzono nową opcję stylu dokumentu, która umożliwia określenie, czy styl ma być automatycznie przedefiniowywany na podstawie odpowiedniej wartości
* Możliwość określenia, czy [Run](https://reference.aspose.com/words/net/aspose.words/run/) jest przebiegiem przewodnika fonetycznego, została dodana przy użyciu właściwości [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) <sup>23.4</sup>
* Zaimplementowano prosty sposób pracy z seriami i osiami wykresów kombi poprzez wprowadzenie klasy [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) i dodanie właściwości [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
* Do klasy [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) <sup>23.4</sup> dodano nowe właściwości publiczne związane z pozycjonowaniem względnym kształtu i rozmiarem
* Dokładność i wydajność obliczania jasności kolorów dla automatycznej rozdzielczości kolorów tekstu została poprawiona zgodnie z najnowszymi wersjami Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla .NET 23.1 Informacje o wydaniu](/words/net/aspose-words-for-net-23-1-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 23.2 Informacje o wydaniu](/words/net/aspose-words-for-net-23-2-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 23.3 Informacje o wydaniu](/words/net/aspose-words-for-net-23-3-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 23.4 Informacje o wydaniu](/words/net/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words dla .NET 22,9, 22,10, 22,11, 22,12

Aspose.Words 22.9 rozszerza opcje ładowania i zapisywania dokumentów oraz poprawia interakcję z niektórymi innymi opcjami.

Aspose.Words 22.10 poprawia opcje wyszukiwania i zamiany, ulepsza obiekty OLE i rozszerza funkcjonalność list.

Aspose.Words 22.11 rozszerza swoją funkcjonalność o nowe opcje umożliwiające wygodniejszą pracę ze znanymi już obiektami: pola, drukowanie, OLE i znaczniki dokumentów strukturalnych.

Aspose.Words 22.12 zwiększa możliwości renderowania i wprowadza opcje pracy z marginesami podczas ładowania/zapisywania dokumentu.

### Ulepszenia wydajności <sup>22.12</sup>

Wprowadzono optymalizację, która znacznie zmniejsza głębokość zagnieżdżenia stanu grafiki podczas renderowania do formatu PDF, aby zachować zgodność ze specyfikacją.

### Renderowanie i drukowanie

#### Drukowanie niekolorowych stron na drukarce kolorowej <sup>22.11</sup>

Zaimplementowano niestandardowy tryb drukowania w kolorze/w skali szarości poprzez dodanie nowej wartości **GrayscaleAuto** do wyliczenia [ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/).

Nowa właściwość drukowania pozwala użytkownikom kontrolować sposób drukowania niekolorowych stron, jeśli urządzenie obsługuje drukowanie w kolorze. Ta funkcja może być przydatna, jeśli użytkownicy chcą automatycznie drukować strony inne niż kolorowe, korzystając wyłącznie z trybu drukowania w skali szarości.

#### Nowe właściwości renderowania obramowania <sup>22.12</sup>

Wprowadzono nowe właściwości publiczne [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) i [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/).

#### Liniowa formuła trendu dla renderowania DrawingML <sup>22.12</sup>

Zaimplementowano liniowe renderowanie formuły linii trendu dla wykresów DrawingML.

#### Ustawienia zastępcze czcionek dla czcionek Google Noto <sup>22.12</sup>

Zaktualizowano predefiniowane ustawienia zastępczych czcionek Google Noto.

### Ładowanie i zapisywanie dokumentów

#### Buforuj kształty nagłówka lub stopki, aby zmniejszyć rozmiar pliku PDF <sup>22.9</sup>

Możliwość buforowania kształtów nagłówka/stopki w celu zmniejszenia rozmiaru wyjściowego pliku PDF została zaimplementowana poprzez dodanie nowej właściwości **CacheHeaderFooterShapes**.

#### Automatyczne wykrywanie numerowania podczas ładowania dokumentu <sup>22.9</sup>

Możliwość określenia właściwości [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) podczas ładowania tekstu została zaimplementowana poprzez rozszerzenie klasy [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/).

#### Określanie konkretnego typu marginesu <sup>22.12</sup>

Zaimplementowano możliwość określenia konkretnego typu [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) dla danej sekcji.

### Wyszukaj i porównaj <sup>22.10</sup>

Możliwość ignorowania [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) przy opcjach wyszukiwania i zamiany została zaimplementowana poprzez dodanie nowej właściwości [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) do klasy [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/).

### Inny

* Dodano nową funkcję pozwalającą uzyskać FieldEQ jako OfficeMath. <sup>22.9</sup>
* Zezwolono na tworzenie strukturalnych znaczników dokumentów typu Group na poziomie Row. <sup>22.9</sup>
* Obiekty i kontrolki OLE są teraz traktowane jako obrazy metaplików podczas konwersji dokumentu do formatu HTML. <sup>22.10</sup>
* Dodano nową funkcję sprawdzającą, czy dana lista została utworzona na podstawie tego samego szablonu, co lista porównywana, poprzez wprowadzenie nowej metody [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) do klasy [List](https://reference.aspose.com/words/net/aspose.words.lists/list/). <sup>22.10</sup>
* Dodano możliwość tworzenia nowych znaczników dokumentów strukturalnych typu [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/). <sup>22.11</sup>
* Dodano możliwość śledzenia postępu aktualizacji pola. <sup>22.11</sup>
* Wprowadzono nową właściwość **EmbedAttachments**, która umożliwia użytkownikom osadzanie załączników OLE z dokumentu źródłowego w wyjściowym dokumencie PDF. <sup>22.11</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla .NET 22.9 Informacje o wydaniu](/words/net/aspose-words-for-net-22-9-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 22.10 Informacje o wydaniu](/words/net/aspose-words-for-net-22-10-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 22.11 Informacje o wydaniu](/words/net/aspose-words-for-net-22-11-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 22.12 Informacje o wydaniu](/words/net/aspose-words-for-net-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words dla .NET 22,5, 22,6, 22,7, 22,8

Aspose.Words 22.5 wprowadza obsługę nowych formatów ładowania i nowy rozmiar strony wydruku, a także poprawia niektóre opcje renderowania.

Aspose.Words 22.6 rozszerza możliwości konwersji plików PDF na inne formaty, a także usprawnia pracę z systemem DrawingML i efektem wypełnienia pełnym tekstem.

Aspose.Words 22.7 zwiększa możliwości pracy z funkcjami renderowania, a także dodaje nowe funkcje do pracy z importem HTML i eksportem do formatu PDF.

Aspose.Words 22.8 wprowadza nowy format eksportu i ulepsza różne algorytmy renderowania.

API został ulepszony w celu zapewnienia bardziej elastycznego i wygodnego programowania.

### Obsługiwane formaty

* Wprowadzono obsługę ładowania dokumentów EPUB i XML poprzez dodanie nowych wartości do wyliczenia [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/). Począwszy od wersji 22.5 możliwe jest ładowanie dokumentów EPUB i XML do modelu dokumentu Aspose.Words i konwertowanie ich do dowolnego formatu [obsługiwane formaty](https://reference.aspose.com/words/net/aspose.words/saveformat/). <sup>22,5</sup>
* Począwszy od wersji 22.8 możliwe jest zapisanie dokumentu w formacie AZW3 – zastrzeżonym formacie plików e-booków firmy Amazon Kindle (KF8 to inna nazwa tego formatu). Teraz możesz nie tylko ładować dokumenty AZW3, ale także eksportować swoje pliki do formatu AZW3, który w zasadzie jest skompilowanym EPUB. <sup>22.8</sup>

### Renderowanie i drukowanie

#### Nowy rozmiar druku <sup>22,5</sup>

Dodano obsługę rozmiaru strony wydruku "Koperta nr 10" poprzez wprowadzenie nowej wartości do wyliczenia [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).

#### Renderowanie formuł MathML <sup>22.5</sup>

Poprawiono renderowanie ramki wokół formuł MathML i wykrywanie czcionek podczas renderowania znaków dla takich formuł.

#### Ulepszenia wykresu DML <sup>22.6</sup>

Publiczny format API wykresów DrawingML został rozszerzony o obsługę wypełnień gradientem, teksturą i wzorkiem.

#### Glyph przedstawia analizę składniową dla OpenType <sup>22.7</sup>

Zaimplementowano analizę składniową własnych zarysów glyph Aspose.Words dla czcionek OpenType (CFF).

Wcześniej parsowanie glyph dla czcionek OpenType (CFF) odbywało się za pośrednictwem GDI+. Zatem teraz działa w przypadkach, gdy GDI+ nie jest dostępne – platformy Java, .NET Standard, Linux OS itp. Glyph określa, że analizowanie jest wymagane w określonych przypadkach, takich jak WordArt, efekty tekstowe, niektóre funkcje pakietu Office Math i inne.

#### Ustaw formatowanie cienia kształtu <sup>22.7</sup>

Dodano możliwość ustawienia formatowania cienia obiektu kształtu poprzez dodanie nowej właściwości [ShadowFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/shadowformat/).

#### Obsługa odstępów między komórkami w tabelach <sup>22.8</sup>

Silnik układu został teraz znacznie ulepszony: zaimplementowano bardzo złożony mechanizm rozmieszczania komórek w tabelach.

#### Zastępowanie czcionek dla symboli <sup>22.8</sup>

Ulepszono zastępowanie czcionek symboli.

#### Algorytm obrotu etykiety osi wykresu <sup>22.8</sup>

Ulepszono algorytm obracania etykiet osi wykresu.

### Ładowanie i zapisywanie dokumentów

#### Załaduj i skonwertuj plik PDF do formatu o stałej stronie bez modelu układu <sup>22.6</sup>

Zaimplementowano możliwość ładowania i konwertowania dokumentów PDF do ustalonych formatów stron z zachowaniem wysokiej wierności i wydajności.

#### Nowy tryb importu HTML <sup>22.7</sup>

Wprowadzono nowy tryb importu HTML dla elementów blokowych poprzez dodanie nowej wartości do wyliczenia [HtmlInsertOptions](https://reference.aspose.com/words/net/aspose.words/htmlinsertoptions/).

#### Konwertuj na format PDF/UA-1 zgodny z WCAG 2.0 <sup>22.7</sup>

Dodano obsługę konwersji dokumentu do formatu PDF/UA-1 zgodnego z WCAG 2.0.

Tak więc, jeśli klient ma dostępny dokument Word i konwertuje go do formatu PDF/UA-1 za pośrednictwem Aspose.Words, podając szczegóły konwersji, wówczas wynik będzie zgodny z WCAG 2.0.

WCAG, czyli Wytyczne dotyczące dostępności treści internetowych, to zestaw wytycznych opracowanych przez W3C we współpracy z osobami i organizacjami na całym świecie. Teraz dzięki Aspose.Words możesz przekonwertować swój dokument do wyjściowego formatu PDF/UA-1, który jest odpowiedni do tworzenia dokumentów PDF zgodnych z WCAG 2.0.

Warto zauważyć, że WCAG 2.0 ma dwa dodatkowe wymagania, które nie są określone w specyfikacji PDF/UA-1:

* wymagania kontrastowe

* wymagania dotyczące tagowania treści multimedialnych

Jednak oba wymagania nie mają zastosowania w naszym przypadku konwersji z programu Word do formatu PDF.

### Inny

* Zaimplementowano wyjątek dziedziczenia efektu wypełnienia pełnym tekstem, który naśladuje zachowanie MS Word. <sup>22.6</sup>
* Dodano obsługę pól `DATABASE`. Za pomocą tego typu pola można np. wyświetlić wyniki zapytania do bazy danych w tabeli Microsoft Word. <sup>22,7</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla .NET 22.5 Informacje o wydaniu](/words/net/aspose-words-for-net-22-5-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 22.6 Informacje o wydaniu](/words/net/aspose-words-for-net-22-6-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 22.7 Informacje o wydaniu](/words/net/aspose-words-for-net-22-7-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 22.8 Informacje o wydaniu](/words/net/aspose-words-for-net-22-8-release-notes/).

{{% /alert %}}

## Zobacz też

{{% alert color="primary" %}}

Na tej stronie znajdują się najnowsze informacje o wydaniach z ostatnich 2 lat. Szczegółowe informacje na temat wcześniejszych wydań można znaleźć na stronach [Informacje o wydaniu'](/words/net/release-notes/) w odpowiednich sekcjach.

{{% /alert %}}