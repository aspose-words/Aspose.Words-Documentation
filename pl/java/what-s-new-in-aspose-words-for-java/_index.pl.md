---
title: Co nowego?
second_title: Aspose.Words zamiast Java
articleTitle: Co nowego w Aspose.Words zamiast Java
linktitle: Co nowego w Aspose.Words zamiast Java
type: docs
description: "Aspose.Words zamiast Java rozszerza i wzmacnia codziennie. Na tej stronie można poznać ogromne i najbardziej interesujące cechy produktu."
weight: 2
url: /pl/java/what-s-new-in-aspose-words-for-java/
---

Ta strona opisuje najbardziej interesujące nowe Aspose.Words funkcje wprowadzone w ostatnich wersjach.

## Aspose.Words zamiast Java 24, 1, 24, 2; 24, 3

Aspose.Words 24.1 Poprawia doświadczenie w zarządzaniu kolorami udaru, wzmacnia obiekty OLE i LINQ raportowanie, a także wprowadza nowe źródła bibliografii publicznie API.

Aspose.Words 24.2 Rozszerzone karty API, zarządzanie stylem i opcje LINQ. Ta wersja Aspose.Words również wprowadziła możliwość określenia SvgSaveOptions podczas renderowania, bardziej elastyczne obciążenie sterujące Markdown pliki i praca z tekstem referencyjnym dla przypisów i notatek końcowych.

Aspose.Words 24.3 wprowadza nowy czytnik / pisarz TIFF oraz emulację operacji binarnych rastrowych dla metafilów WMF. Aspose.Words 24.3 również nadal rozwijać karty API.

### Renderowanie i drukowanie

#### Kontrola koloru uderzenia <sup>24, 1</sup>

W [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) klasa została rozszerzona o zestaw nowych właściwości publicznych związanych z zarządzaniem kolorami udaru: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) oraz [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) oraz [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### Wykresy DrawingML API Rozszerzenie <sup>24, 2 / 24, 3</sup>

W **DrawingML Charts API** nadal się rozwija.

### Wczytywanie i zapisywanie dokumentów

#### Określ SvgSaveOptions podczas renderingu <sup>24, 2</sup>

Możliwość określenia [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) podczas renderowania został dodany za pomocą [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) oraz [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) metody.

#### Zachowaj puste linie podczas wczytywania Markdown pliki <sup>24, 2</sup>

Możliwość zachowania pustych linii podczas ładowania Markdown dodano pliki.

#### Nowy czytnik / pisarz TIFF <sup>24, 3</sup>

Nowy czytnik / pisarz TIFF dla Aspose.Words zamiast .NET Standard, .NET Opracowano 6 i później. Aspose.Words zamiast .NET 24.3 dodano wsparcie do czytania obrazów TIFF z JPEG i starych typów kompresji JPEG, a także znacznie poprawić jakość operacji odczytu i zapisu.

### Inne

* Możliwość zmiany tekstu `TextBox` Kontrola OLE została wprowadzona poprzez dodanie nowego [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) nieruchomości do nowego [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) Klasa. 24, 1 <sup>24, 1</sup>
* Bibliografia Źródła publiczne API został wdrożony poprzez dodanie kilku nowych [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) oraz [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) klasy i a [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) wyliczenie, jak również poprzez dodanie nowego [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) nieruchomości do [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasa. <sup>24, 1</sup>
* An API w celu ograniczenia dostępu do członków typu przy użyciu składni szablonów dla LINQ Reporting Engine dostarczono. <sup>24, 1</sup>
* Nowe nieruchomości publiczne [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), oraz [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) dla wzmocnionego zarządzania stylem zostały dodane do [Style](https://reference.aspose.com/words/net/aspose.words/style/) Klasa. <sup>24, 2</sup>
* Funkcjonalność odzyskania rzeczywistego tekstu znaku referencyjnego dla przypisów i notatek końcowych została wzmocniona z [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) nieruchomości i [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) Metoda. <sup>24, 2</sup>
* Zgodność z `Word 2016` wykresy dla `LINQ Reporting Engine` został włączony. <sup>24, 2</sup>
* Emulacja operacji binarnych rastrowych dla metafilów WMF została wdrożona. <sup>24, 3</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words zamiast Java 24.1 Uwagi do wydania](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 24.2 Uwagi do wydania.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

Dowiedz się więcej o [Aspose.Words zamiast Java 24.3 Uwagi do wydania.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

{{% /alert %}}

## Aspose.Words zamiast Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 rozszerza opcje renderowania, metafilową emulację renderowania i markdown Zapisz opcje.

Aspose.Words 23.10 ulepsza renderowanie, rozszerza opcje ładowania i zapisywania dokumentów oraz umożliwia użytkownikom łączenie dokumentów w nowe sposoby.

Aspose.Words 23.11 Poprawia pracę z poprawkami, format XLSX i czcionek na wykresie legendy z dodatkowymi opcjami.

Aspose.Words 23.12 wprowadza nowe właściwości i wyliczenia do pracy z dokumentami PDF, wsparcie dla WebP obrazy i zaktualizowana biblioteka Bouncy Castle.

### Renderowanie i drukowanie

#### Dostosowywanie tytułów osi w DrawingML Wykresy <sup>23, 9</sup>

Możliwość dostosowania tytułów osi w wykresach DrawingML została wprowadzona przez wdrożenie nowej klasy publicznej [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) oraz [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) nieruchomości.

#### Określenie pionowej pozycji czcionki w ramach ustępu <sup>23, 9</sup>

Obecnie możliwe jest zdefiniowanie pionowej pozycji czcionek w ramach akapitu przy użyciu nowych odbiorców [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) nieruchomości i nowy [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) wyliczenie.

#### Kontrola nowego koloru <sup>23, 10</sup>

Możliwość pobrania koloru pierwszoplanowego bez modyfikatorów została dodana do [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) oraz [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) klasy za pośrednictwem **BaseForeColor** nieruchomości.

#### Rozszerzenie funkcjonalności wykresów <sup>23, 10</sup>

Funkcjonalność [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), oraz [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) klasy zostały rozszerzone o nowe metody i właściwości.

#### Automatycznie dopasować i dopasować obrazek do kształtu <sup>23, 10</sup>

Prosty sposób automatycznej regulacji i dopasowania obrazu w danym kształcie został zapewniony przez nowy [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) Metoda.

#### Domyślne formatowanie czcionki dla rysowania ML Wpisy legendy wykresu <sup>23, 11</sup>

Możliwość określenia domyślnego formatowania czcionki dla wpisów legendy wykresów DrawingML została dodana przez **Font** nieruchomości. Funkcja ta ułatwia bardziej usprawniony i konsekwentny wygląd elementów mapy, poprawiając ogólną estetykę dokumentu.

#### Określa układ strony podczas otwierania PDF w czytniku <sup>23, 12</sup>

Możliwość określenia układu strony przy otwieraniu dokumentu w czytniku PDF została dodana poprzez wprowadzenie nowego [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) nieruchomości do [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) klasa i wprowadzenie nowego [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) wyliczenie.

### Wczytywanie i zapisywanie dokumentów

#### Określanie nazwy folderu do tworzenia obrazów URI w Markdown <sup>23, 9</sup>

W [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) klasy został rozszerzony przez włączenie [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) właściwość, która pozwala na określenie nazwy folderu używanego do tworzenia obrazów URI zapisanych do Markdown dokument.

#### Zmniejsz format PDF Rozmiar wyjścia <sup>23, 10</sup>

Różne zoptymalizacje renderowania PDF w celu zmniejszenia rozmiaru wyjściowego przy wykorzystaniu [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) zaimplementowano ustawienia.

#### Rozpoznaj hiperłącza podczas wczytywania dokumentów TXT <sup>23, 10</sup>

Funkcja rozpoznawania hiperlinków podczas wczytywania dokumentów TXT została zaimplementowana przez dodanie nowego [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) nieruchomości.

### Inne

- Zastosowano emulację renderowania metafilowego w celu określenia wielkości rasteryzacji, szczególnie dla szerokości długopisu WMF i szerokości długopisu kosmetycznego EMF. Aby to osiągnąć, **ScaleWmfFontsToMetafileSize** nieruchomość została zastąpiona [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) nieruchomości i [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) nieruchomości zostały dodane. <sup>23, 9</sup>
- Uproszczona metoda wprowadzania jednego dokumentu do innego dokumentu w aktualnej pozycji kursora została wprowadzona przy użyciu [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) Metoda. <sup>23, 10</sup>
- Możliwość dostępu i modyfikacji właściwości stylów została dodana poprzez wprowadzenie nowego [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) nieruchomości. <sup>23, 10</sup>
- Do metod [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) Klasa. <sup>23, 10</sup>
- Sposób kontroli, kiedy pewna zmiana powinna zostać przyjęta / odrzucona lub nie została wdrożona za pomocą [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) oraz [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) metody. Wzmocnienie to zapewnia użytkownikom lepszą kontrolę nad procesem przeglądu. <sup>23, 11</sup>
- Możliwość zapisu wszystkich sekcji dokumentu na tym samym arkuszu roboczym XLSX została dostarczona za pośrednictwem nowego [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) rodzaj wyliczenia i nowy [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) nieruchomości. <sup>23, 11</sup>
- Wsparcie dla WebP obraz został wprowadzony. Należy pamiętać, że ta funkcja jest dostępna tylko dla .NetStandart i .NET6 + wersje. <sup>23, 12</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words zamiast Java 23.9 Uwagi do wydania](/words/java/aspose-words-for-java-23-9-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 23.10 Uwagi do wydania](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 23.11 Uwagi do wydania](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 23.12 Uwagi do wydania](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words zamiast Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 zwiększa zdolność do pracy z danymi serii map i zdolność do pracy z dokumentami ODT, a także poprawić nagłówki / stopy i ich zawijanie tekstu.

Aspose.Words 23.6 rozszerza opcje renderowania, dodaje nowy format eksportu, poprawia raportowanie LINQ i LowCode narzędzia.

Aspose.Words 23.7 zwiększa zdolności sprawozdawcze, dodaje nowy format eksportu i wprowadza zmiany w pracy z tabelami i podpisem cyfrowym.

Aspose.Words 23.8 rozszerza możliwości różnych formatów, poprawia renderowanie i dodaje nowe opcje pracy z polami

### Obsługiwane formaty

* Od wersji 23.6 można zapisać dokument w formacie XLSX. Teraz możesz przekonwertować swoje dokumenty do formatu Excel. <sup>23, 6</sup>

* Od wersji 23.7 można zapisać stronę dokumentu lub kształt w formacie EPS. <sup>23, 7</sup>

* Nowy format

  - Wprowadzono funkcję automatycznego generowania tabeli zawartości (TOC) dokumentów MOBI. <sup>23, 8</sup>
  - [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) konstruktor został rozszerzony o [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23, 8</sup>
  - Wprowadzono kształt pionowego tekstu dla metafilów EMF. <sup>23, 8</sup>

### Renderowanie

#### Pobierz i modyfikuj Dane serii wykresów <sup>23, 5</sup>

Funkcja uzyskiwania i modyfikowania danych serii map została dostarczona przez dodanie:

- nowe klasy: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- nowe typy enum: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Wsparcie dla zaawansowanej typografii <sup>23, 6</sup>

Dodano wsparcie dla zaawansowanej typografii w renderowaniu WMF, EMF i EMF +.

#### Kolorowa zawartość na stronie <sup>23, 6</sup>

Własność publiczna [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), wskazanie, czy strona jest kolorowa czy nie, zostało dodane.

#### Formatowanie etykiet danych wykresu <sup>23, 6</sup>

Zaimplementowano możliwość ustawiania formatowania danych dotyczących wypełnienia, udaru i wywołania.

### Mail Merge i sprawozdawczość

#### Dynamiczne wstawianie HTML dla LINQ Reporting Engine <sup>23, 6</sup>

Dodano nowy sposób dynamicznego wprowadzania HTML dla LINQ Reporting Engine.

#### Mustache Wsparcie dla tagów <sup>23, 7</sup>

Mustache tagi są teraz obsługiwane w [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) oraz [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) metody.

#### LINQ Reporting Engine Template Syntax Aktualizacje <sup>23, 7</sup>

Składnia szablonu LINQ Reporting Engine obsługuje teraz `ElementAt` i ElementAtOrDomyślne metody rozszerzenia.

#### Określanie rozmiaru renderowanych obrazów <sup>23, 8</sup>

Nowa własność publiczna **ImageSize** dla określenia rozmiaru renderowanych obrazów w pikselu został wprowadzony.

#### Zachować Whitespaces dla wartości String JSON - LINQ <sup>23, 8</sup>

Do LINQ Reporting Engine dodano opcję, aby zachować białe paces dla wartości strun JSON.

### LowCode <sup>23, 6</sup>

Nowy LowCode dodano metody mające na celu połączenie różnych typów dokumentów w jeden dokument wyjściowy.

### Inne

- Zaimplementowano obsługę pakowania tekstu w nagłówkach / stopkach. <sup>23, 5</sup>
- Możliwość usunięcia podpisów cyfrowych z dokumentów ODT została dodana poprzez [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) Metoda. <sup>23, 5</sup>
- Własność publiczna [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) do uzyskania tekstu bazowego i rubinowego przewodnika fonetycznego [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) został dodany. <sup>23, 5</sup>
- Możliwość pobrania cyfrowej wartości podpisu z podpisanego cyfrowo dokumentu jako tablicy bajtów została dodana poprzez wprowadzenie nowego [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) nieruchomości. <sup>23, 7</sup>
- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) oraz [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Klasy zostały rozszerzone o nowych członków publicznych - [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), oraz [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23, 7</sup>
- Dodano wsparcie dla pól CITATION i BIBLIOGRAPHY. <sup>23, 8</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words zamiast Java 23.5 Uwagi do wydania](/words/java/aspose-words-for-java-23-5-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 23.6 Uwagi do wydania](/words/java/aspose-words-for-java-23-6-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 23.7 Uwagi do wydania](/words/java/aspose-words-for-java-23-7-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 23.8 Uwagi do wydania](/words/java/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words zamiast Java 23,1, 23,2, 23.3, 23.4

Aspose.Words 23.1 poprawia wydajność emulacji operacji rastrowych, a także zwiększa jakość eksportu dokumentów i renderowania.

Aspose.Words 23.2 wprowadza zapisywanie dokumentów w formacie MOBI, poprawia renderowanie map i wprowadza znaczące zmiany w szczegółach wyglądu dokumentów.

Aspose.Words 23.3 zwiększa import i oszczędność dokumentów z nowymi właściwościami, a także poprawia jakość pracy z tle, kolor pierwszoplanowy i gradient promieniowy.

Aspose.Words 23.4 poprawia obliczanie niektórych parametrów oraz pozycjonowanie tabeli i otaczającego tekstu.

### Poprawa wydajności

#### Emulacja operacji rastrowych <sup>23, 1</sup>

Wydajność i jakość emulacji operacji rastrowych z metafilami zostały znacząco poprawione.

### Obsługiwane formaty

#### Eksport do MOBI <sup>23, 2</sup>

Począwszy od wersji 23.2, można zapisać dokument w formacie MOBI (zwany także ChRL, AZW - Amazon własny format pliku e-book Kindle). Teraz można nie tylko załadować dokumenty MOBI, ale także eksportować pliki do formatu MOBI.

### Renderowanie

#### Praca z Shading Theme kolory <sup>23, 1</sup>

Możliwość pracy z kolorami cieniowania motywu została zaimplementowana.

#### Wsparcie współdziałania R- square w DML Charts <sup>23, 1</sup>

Wsparcie współczynnika R- square w etykietach linii trendów DML po dodaniu renderowania.

#### Wykres Ulepszenia renderowania <sup>23, 2</sup>

Od 23.2 r. renderowanie map uległo znacznej poprawie.

#### Tło i kontrola koloru <sup>23, 3</sup>

W [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) klasa została rozszerzona o zestaw nowych właściwości publicznych związanych z kolorami tła i pierwszeństwa: **ForeThemeColor** oraz **BackThemeColor**, **ForeTintAndShade** oraz **BackTintAndShade**.

#### Radialne gradienty z `SkiaSharp` Native Shader <sup>23, 3</sup>

Renderowanie gradientów promieniowych z `SkiaSharp` native shader for .NET Standard została wdrożona.

#### Odległość między tabelą a tekstem otaczającym <sup>23, 4</sup>

Możliwość ustawienia odległości między tabelą a otaczającym tekstem została dodana poprzez wprowadzenie nowych właściwości do [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) klasa: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), oraz [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Wczytywanie i zapisywanie dokumentów

#### Generuj `TOC` dla dokumentów AZW3 <sup>23, 1</sup>

Zdolność do generowania `TOC` (tabela treści) dla dokumentów AZW3 został dodany poprzez użycie [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) nieruchomości.

#### Eksportowanie pozycji listy do Markdown <sup>23, 1</sup>

Sposób kontroli eksportu pozycji listy do Markdown format został dostarczony poprzez dodanie [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) nieruchomości do [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) Klasa.

#### Zapisywanie powiadomień o postępach <sup>23, 3</sup>

Zaoszczędzenie powiadomień o postępach dla formatów MOBI i AZW3 zostało wdrożone.

#### Dostosowanie do wyroku i odstępów słownych <sup>23, 3</sup>

Możliwość określenia, czy dostosować zdanie i słowo odstępy automatycznie przy imporcie dokumentu została dodana poprzez wprowadzenie **AdjustSentenceAndWordSpacing** nieruchomości.

### Inne

- Możliwość określenia zmiany odstępów między znakami dokumentu została dodana poprzez [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) implementacja nieruchomości <sup>23, 2</sup>
- Sposób na nauczanie Aspose.Words czy włączyć textboxes, przypisy i notatki końcowe w statystyce liczby słów zostały dostarczone poprzez dodanie [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) nieruchomość <sup>23, 2</sup>
- Nowa opcja dla stylu dokumentu, która pozwala na określenie, czy styl jest automatycznie przedefiniowany w oparciu o odpowiednią wartość, została wprowadzona poprzez [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) nieruchomość <sup>23, 2</sup>
- Możliwość ustalenia, czy [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) to fonetyczny przewodnik został dodany za pomocą **IsPhoneticGuide** nieruchomość <sup>23, 4</sup>
- Prosty sposób pracy z serii i osi wykresów combo został wdrożony przez wprowadzenie **ChartAxisCollection** klasy i dodanie **Chart.Axes** nieruchomość <sup>23, 4</sup>
- Nowe właściwości publiczne połączone z kształtem względne pozycjonowanie i rozmiar zostały dodane do [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) klasa <sup>23, 4</sup>
- Dokładność i wydajność obliczeń jasności kolorów dla automatycznej rozdzielczości kolorów tekstu została poprawiona zgodnie z najnowszymi wersjami Microsoft Word <sup>23, 4</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words zamiast Java 23.1 Uwagi do wydania](/words/java/aspose-words-for-java-23-1-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 23.2 Uwagi do wydania](/words/java/aspose-words-for-java-23-2-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 23.3 Uwagi do wydania](/words/java/aspose-words-for-java-23-3-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 23.4 Uwagi do wydania](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words zamiast Java 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 rozszerza możliwości ładowania i zapisywania dokumentów oraz usprawnia interakcję z innymi opcjami.

Aspose.Words 22.10 ulepsza opcje wyszukiwania i wymiany, wzmacnia obiekty OLE i rozszerza funkcjonalność listy.

Aspose.Words 22.11 rozszerza swoją funkcjonalność o nowe opcje dla wygodniejszej pracy z już znanymi obiektami: polami, drukowaniem, OLE i usystematyzowanymi tagami dokumentów.

Aspose.Words 22.12 zwiększa możliwości renderowania i wprowadza opcje pracy z marginesami podczas wczytywania / zapisywania dokumentu.

### Poprawa wydajności <sup>22, 12</sup>

Wprowadzono optymalizację, która znacznie zmniejsza głębokość gniazda stanu graficznego podczas renderowania do PDF w celu utrzymania zgodności specyfikacji.

### Renderowanie i drukowanie

#### Drukowanie niekolorowe Strony na drukarce kolorowej <sup>22, 11</sup>

Niestandardowy kolorowy / szarości tryb drukowania został zaimplementowany przez dodanie nowego **GrayscaleAuto** wartość [ColorPrintMode](https://reference.aspose.com/words/java/com.aspose.words/colorprintmode/) wyliczenie.

Nowa właściwość drukowania pozwala użytkownikom kontrolować sposób drukowania stron niekolorowych, jeśli urządzenie obsługuje drukowanie kolorów. Funkcja ta może być przydatna, jeśli użytkownicy chcą automatycznie drukować niekolorowe strony tylko za pomocą trybu druku w skali szarości.

#### Nowe właściwości renderowania granic <sup>22, 12</sup>

Nowe nieruchomości publiczne [ThemeColor](https://reference.aspose.com/words/java/com.aspose.words/border/#getThemeColor) oraz [TintAndShade](https://reference.aspose.com/words/java/com.aspose.words/border/#getTintAndShade) zostały wprowadzone.

#### Formuła trendów liniowych dla renderingu DrawingML <sup>22, 12</sup>

Liniowe renderowanie formuły trendline dla wykresów DrawingML zostało wdrożone.

#### Ustawienia czcionek dla Google Noto Czcionki <sup>22, 12</sup>

Predefiniowane ustawienia awaryjne czcionki dla Google Noto czcionki zostały zaktualizowane.

### Wczytywanie i zapisywanie dokumentów

#### Nagłówek cache lub kształty footer do zmniejszenia rozmiaru PDF <sup>22, 9</sup>

Zdolność bufora nagłówka / stopki do zmniejszenia rozmiaru wyjścia pliku PDF została zaimplementowana przez dodanie nowego [CacheHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) nieruchomości.

#### Automatyczne wykrywanie numerów podczas wczytywania dokumentu <sup>22, 9</sup>

Możliwość określenia [AutoNumberingDetection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getAutoNumberingDetection) właściwość podczas wczytywania tekstu została wdrożona poprzez rozszerzenie [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) Klasa.

#### Określanie szczegółowych Rodzaj marży <sup>22, 12</sup>

Możliwość określenia konkretnego [Margin](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getMargins) typ dla danej sekcji został wdrożony.

### Szukaj i porównuj <sup>22, 10</sup>

Zdolność do ignorowania [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) po znalezieniu i zastąpieniu opcji zostało wdrożone poprzez dodanie nowego [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreStructuredDocumentTags--) nieruchomości do [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) Klasa.

### Inne

- Dodano nową funkcję, aby uzyskać FieldEQ jako OfficeMath. <sup>22, 9</sup>
- Tworzenie strukturyzowanych tagów dokumentów Group typ na poziomie wiersza był dozwolony. <sup>22, 9</sup>
- Obiekty i sterowniki OLE są teraz traktowane jako metafilowe obrazy podczas konwersji dokumentu na HTML. <sup>22, 10</sup>
- Nowa funkcja sprawdzająca, czy określona lista została utworzona z tego samego szablonu co lista porównawcza została dodana poprzez wprowadzenie nowego [HasSameTemplate](https://reference.aspose.com/words/java/com.aspose.words/list/#hasSameTemplate-com.aspose.words.List-) metoda do [List](https://reference.aspose.com/words/java/com.aspose.words/list/) Klasa. <sup>22, 10</sup>
- Zdolność do tworzenia nowych tagów ustrukturyzowanych dokumentów [Citation](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) dodano typ. <sup>22, 11</sup>
- Zapewniono możliwość śledzenia postępów w aktualizacji pola. <sup>22, 11</sup>
- Nowy **EmbedAttachments** została wprowadzona właściwość, która umożliwia użytkownikom osadzanie załączników OLE z dokumentu źródłowego do dokumentu PDF. <sup>22, 11</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words zamiast Java 22.9 Uwagi do wydania](/words/java/aspose-words-for-java-22-9-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 22.10 Uwagi do wydania](/words/java/aspose-words-for-java-22-10-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 22.11 Uwagi do wydania](/words/java/aspose-words-for-java-22-11-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 22.12 Uwagi do wydania](/words/java/aspose-words-for-java-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words zamiast Java 22, 5; 22, 6; 22, 7; 22, 8

Aspose.Words 22.5 wprowadza obsługę nowych formatów wczytywania i nowy rozmiar strony drukowania, a także poprawia niektóre opcje renderowania.

Aspose.Words 22.6 rozszerza możliwości konwersji PDF na inne formaty, a także usprawnia pracę z DrawingML i stały efekt wypełnienia tekstu.

Aspose.Words 22.7 zwiększa możliwości pracy z funkcjami renderowania, a także dodaje nowe funkcje do pracy z importu HTML i eksportu do PDF.

Aspose.Words 22.8 wprowadza nowy format eksportu i ulepsza różne algorytmy renderowania.

W API jest bardziej elastyczny i wygodny rozwój.

### Obsługiwane formaty

* Wsparcie dla wczytywania dokumentów EPUB i XML zostało wprowadzone poprzez dodanie nowych wartości do [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) wyliczenie. Począwszy od wersji 22.5, możliwe jest wczytanie dokumentów EPUB i XML do Aspose.Words model dokumentu i przekształcić je na dowolny [obseslugiwane formaty](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). <sup>22,5</sup>
* Od wersji 22.8 można zapisać dokument w formacie AZW3 - Amazon Własny format pliku e- book Kindle (KF8 to inna nazwa dla formatu). Teraz można nie tylko załadować dokumenty AZW3, ale również eksportować pliki do formatu AZW3, który jest zasadniczo skompilowany EPUB. <sup>22, 8</sup>

### Renderowanie i drukowanie

#### Nowy rozmiar druku <sup>22,5</sup>

Wsparcie dla "Koperty nr 10" rozmiar strony drukowanej został dodany poprzez wprowadzenie nowej wartości do [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/) wyliczenie.

#### Rendering MathML Formulas <sup>22,5</sup>

Ulepszono renderowanie pola granicznego wokół wzorów MathML i wykrywanie czcionek przy renderowaniu znaków dla takich wzorów.

#### DML Ulepszenia wykresów <sup>22, 6</sup>

Wykresy DrawingML publiczne API został rozszerzony w celu wspierania gradientu, tekstury, i wzór wypełnia.

#### Glyph Paragraf dla OpenType <sup>22, 7</sup>

Aspose.Words własne glyph Zaimplementowano parsing dla czcionek OpenType (CFF).

Poprzednio: glyph Parsing for OpenType (CFF) fonts została wykonana za pośrednictwem GDI +. Więc teraz działa w przypadkach, gdy GDI + nie jest dostępne - Java, .NET Standard platformy, Linux OS itp. Glyph zarys parsowanie jest wymagane w konkretnych przypadkach, takich jak WordArt, efekty tekstowe, niektóre funkcje Matematyczne Office, i inne.

#### Ustaw formatowanie kształtu cienia <sup>22, 7</sup>

Możliwość ustawienia formatowania cienia obiektu kształtu została zapewniona poprzez dodanie nowego [ShadowFormat](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getShadowFormat) nieruchomości.

#### Wsparcie dla separacji komórek w tabelach <sup>22, 8</sup>

Silnik układu jest teraz znacznie ulepszony: bardzo złożony mechanizm separacji komórek w tabelach został wprowadzony.

#### Zastąpienie czcionki symbolami <sup>22, 8</sup>

Zastąpienie czcionki symbolami uległo poprawie.

#### Wykres Algorytm rotacji osi <sup>22, 8</sup>

Algorytm rotacji etykiet osi mapy został poprawiony.

### Wczytywanie i zapisywanie dokumentów

#### Wczytaj i przekonwertuj PDF na Fixed- page Format bez modelu układu <sup>22, 6</sup>

Możliwość ładowania i konwersji dokumentów PDF do stałych formatów stron z wysoką wierność i wydajność została wdrożona.

#### Nowy tryb importu HTML <sup>22, 7</sup>

Nowy tryb importu HTML dla elementów block- level został wprowadzony poprzez dodanie nowej wartości do [HtmlInsertOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlinsertoptions/) wyliczenie.

#### Konwertuj na PDF / UA-1 CSSOmpliant z WCAG 2.0 <sup>22, 7</sup>

Dodano wsparcie dla konwersji dokumentu na format PDF / UA-1, zgodny z WCAG 2.0.

Więc jeśli klient ma dostępny dokument Word i konwertuje go na PDF / UA-1 przez Aspose.Words mówiąc o szczegółach konwersji, wtedy wyjście będzie kompatybilne z WCAG 2.0.

WCAG lub dostępność zawartości sieci Web Wytyczne są zestawem wytycznych opracowanych przez W3C we współpracy z osobami i organizacjami na całym świecie. Teraz z Aspose.Words można przekonwertować swój dokument do wyjścia PDF / UA-1 format, który nadaje się do budowy dokumentów PDF zgodnych z WCAG 2.0.

Warto zauważyć, że WCAG 2.0 ma dwa dodatkowe wymagania, które nie są określone w specyfikacji PDF / UA-1:

- wymagania dotyczące kontrastu
- wymagania dotyczące znakowania treści multimedialnych

Ale oba wymagania nie są istotne dla naszego przypadku konwersji Word na PDF.

### Inne

* Wyjątek dziedziczenia stałego efektu wypełnienia tekstu, który naśladuje zachowanie MS Word został wprowadzony. <sup>22, 6</sup>
* Wsparcie `DATABASE` pola zostały dodane. Korzystanie z tego typu pola, można na przykład pokazać wyniki zapytania bazy danych w Microsoft Word stół. <sup>22, 7</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words zamiast Java 22.5 Uwagi do wydania](/words/java/aspose-words-for-java-22-5-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 22.6 Uwagi do wydania](/words/java/aspose-words-for-java-22-6-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 22.7 Uwagi do wydania](/words/java/aspose-words-for-java-22-7-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 22.8 Uwagi do wydania](/words/java/aspose-words-for-java-22-8-release-notes/).

{{% /alert %}}

## Aspose.Words zamiast Java 22,1, 22,2, 22,3, 22.4

Aspose.Words 22.1 ulepsza opcje renderowania, jak również ładowanie i zapisywanie dokumentów.

Aspose.Words 22.2 wprowadza nowy format obciążenia i nowe opcje eksportu dokumentów. Zawiera ona również dużą aktualizację tabel oraz pewne zmiany dotyczące pracy z polami.

Aspose.Words 22.3 zwiększa możliwości pracy z formatami PDF i TXT oraz poprawia pracę niektórych istniejących algorytmów i silników.

Aspose.Words 22.4 zwiększa możliwości PDF - teraz można zapisać plik w formacie PDF / A-4 i uzyskać szereg innych ulepszeń w wyjściu PDF. W tym samym czasie Aspose.Words 22.4 zapewnia dodatkowe zdolności do pracy z wykresami DML, odczytu metadanych Photoshop i importu HTML block- level elementów.

W API jest bardziej elastyczny i wygodny rozwój.

### Obsługiwane formaty

Wczytywanie dokumentu w formacie AZW3 (KF8 to inna nazwa formatu) zostało dodane. Teraz można załadować dokument AZW3 i przekonwertować go na inne obsługiwane formaty.

### Renderowanie

#### Rendering do PDF z PDF / UA-1 Zgodność

Rendering do PDF z zgodności PDF / UA-1 został wdrożony poprzez dodanie nowych wartości do [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) wyliczenie - **PDF _ UA _ 1**. Wariant ten zakłada zgodność ze specjalnymi wymogami dotyczącymi dostępności dokumentów.

#### Rendering MathML Formulas

Ulepszono renderowanie operatorów w formułach MathML.

#### DML Ulepszenia wykresów

Na wykresach DML wprowadzono następujące ulepszenia:

- Algorytm skalowania osi DML został poprawiony, aby był taki sam jak w MS Word
- Możliwość manipulowania z legendą DrawingML została dostarczona do naszego wykresu API coraz bardziej kompleksowy
- Zaimplementowano możliwość podania nazwy pliku xls / xlsx z wykresem DrawingML

#### Rendering do PDF z PDF / A- 4 Zgodność

Rendering do PDF z zgodności PDF / A- 4 został dodany przez dodanie nowych wartości do [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) wyliczenie - PDF _ A _ 4. Opcja ta zakłada zmienione poziomy zgodności: regularna zgodność PDF / A- 4 jest równoważna poziomowi zgodności U poprzednich wersji, a zgodność poziomu A jest usuwana.

#### Czytanie rozdzielczości metadanych Photoshop w JPEG

Odczyt rozdzielczości metadanych Photoshop w obrazach JPEG został wdrożony, aby naprawić interesujący problem z nieprawidłowym skalowaniem obrazów przy renderowaniu.

### Wczytywanie i zapisywanie dokumentów

#### Kontrolowanie stylu zachowania Podczas wczytywania dokumentu

Nowa opcja [ForceCopyStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getForceCopyStyles) został wprowadzony do kontroli zachowania kolidujących stylów przy imporcie dokumentów.

#### Zapisywanie powiadomień o postępach

Możliwość otrzymywania powiadomień o postępach w oszczędzaniu dokumentów została dodana poprzez [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) nieruchomość w 22.1.

W 22.2, powiadomienia o postępie zostały rozszerzone dla formatów przepływu opartych na HTML i XAML: HTML, MHTML, Epub, XamlFlow i XamlFlowPack.

W 22.3, dla formatu TXT rozszerzono zakres powiadomień o postępach.

#### Przelicz kształty do SVG Podczas wywozu

Możliwość konwersji kształtów do obrazów SVG podczas eksportu do HTML, MHTML lub EPUB została zapewniona przez dodanie [ExportShapesAsSvg](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportShapesAsSvg) nieruchomości.

#### Eksport Listy Numeracji do struktury logicznej PDF

Zaimplementowano listę eksportu do struktury logicznej PDF.

#### Zapisywanie do PDF 2.0 i ulepszenia w wyjściu PDF

Możliwość zapisania dokumentu jako PDF 2.0 poprzez dodanie nowej wartości do [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) wprowadzono wyliczenie, jak również kilka innych żądanych ulepszeń do wyjścia PDF.

#### Nowy tryb importu HTML

Nowy tryb importu elementów block- level HTML został wprowadzony do naśladowania Microsoft Word zachowanie.

### Inne

* Dodano możliwość uzyskiwania niestandardowych danych związanych z polem.
* Najnowsza wersja Aspose.Words w dokumencie źródłowym zawiera również dużą aktualizację, która obsługuje tabele z błędnymi lub brakującymi danymi o szerokości kolumny.
* Tabela porównująca algorytm oparty na głębokiej analizie Microsoft Word ulepszono mechanizm porównawczy.
* Przedstawiono składnię komentarzy w LINQ Reporting Engine.

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words zamiast Java 22.1 Uwagi do wydania](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-1-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 22.2 Uwagi do wydania](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-2-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 22.3 Uwagi do wydania](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-3-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 22.4 Uwagi do wydania](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-4-release-notes/).

{{% /alert %}}

## Aspose.Words zamiast Java 21, 9, 21, 10, 21, 11, 21, 12

Aspose.Words 21.9 rozszerza kontrolę formatowania list- level.

Aspose.Words 21.10 zwiększa możliwości renderowania, poprawia odnalezienie i zastąpienie opcji i rozszerza Mail Merge oraz funkcjonalność znacznika dokumentacji struktury.

Aspose.Words 21.11 rozszerza obciążenia i oszczędza funkcjonalność, poprawia możliwość znajdowania i zastępowania i pracy z PDF.

Aspose.Words 21.12 wprowadza dodatkowe możliwości pracy z łacińskim tekstem i czcionkami w celu poprawy wyglądu i wydajności, a także rozszerza możliwość pracy z kontrolą treści i przypisami

W API jest bardziej elastyczny i wygodny rozwój.

### Poprawa wydajności

Wczytywanie wcześniej zapisanej pamięci podręcznej do wyszukiwania czcionek w celu przyspieszenia procesu inicjalizacji pamięci podręcznej czcionek po renderowaniu zostało wdrożone. Twoje rozwiązania będą działać jeszcze szybciej.

### Renderowanie

#### Praca z wypełnieniami gradientowymi i przystankami gradientowymi

Dodano nowe metody i właściwości publiczne do pracy z wypełnieniami gradientowymi i przystankami gradientowymi, aby zaspokoić najjaśniejsze pomysły przy opracowywaniu dokumentów.

#### Pane dodatek w dokumentach wyjściowych PDF

Nowa opcja [UseAttachments](https://reference.aspose.com/words/java/com.aspose.words/pdfpagemode/) została zaimplementowana w celu wyświetlenia tafli załącznika w dokumentach PDF.

#### Pozwól łacińskiemu tekstowi owijać w środku słowa

Wsparcie dla funkcji "Pozwól łacińskiemu tekstowi zawinąć się w środku słowa" zostało wdrożone, aby nasze łacińskie wsparcie było jeszcze lepsze po renderowaniu.

### Szukaj i porównuj

* Nowa opcja [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes) aby zignorować przypisy podczas operacji wyszukiwania i zastępowania dodano.

* Nowa opcja [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes) do ignorowania kodów pola podczas operacji wyszukiwania i zastępowania dodano.

### Konwersja

Prosty sposób, aby zapisać obrazy jako ciąg Base64 Markdown format został dostarczony poprzez [ExportImagesAsBase64](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportImagesAsBase64) nieruchomości.

### Mail Merge i sprawozdawczość

Zdolność do uzyskania [ParentRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/#getParentRegion) przez [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/), który sprawił, że nasz silnik MailMerge stał się bardziej dotkliwy, został dodany.

### Inne

- Zdolność do uzyskania [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat) Własność [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) obiekt został dodany.
- Możliwość uzyskania przedstawienia łańcucha [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) obiekt dla określonego indeksu przy użyciu [GetEffectiveValue](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getEffectiveValue-int-int-java.lang.String) dodano metodę.
- Wprowadzono intuicyjną możliwość zmiany wyglądu usystematyzowanych znaczników dokumentów, które pozwalają na osadzanie semantyki zdefiniowanej przez klienta, jak również jej zachowania w dokumencie.
- Nowa klasa [ChmLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/chmloadoptions/) został dodany, aby uzyskać większą kontrolę nad ładowaniem CHM.
- Wprowadzono możliwość uzyskania OOXML o kontroli zawartości i zapisu jej do łańcucha. Aby to zrobić, **WordOpenXML** nieruchomość została dodana do [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) oraz [StructuredDocumentTagRangeStart](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttagrangestart/) zajęcia.
- Dodano uznanie niestandardowych przypisów w dokumentach PDF dotyczących przywozu.

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words zamiast Java 21.9 Uwagi do wydania](/words/java/aspose-words-for-java-21-9-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 21.10 Uwagi do wydania](/words/java/aspose-words-for-java-21-10-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 21.11 Uwagi do wydania](/words/java/aspose-words-for-java-21-11-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 21.12 Uwagi do wydania](/words/java/aspose-words-for-java-21-12-release-notes/).

{{% /alert %}}

## Zobacz również

{{% alert color="primary" %}}

Ta strona zawiera najnowsze wiadomości z ostatnich 2 lat. Szczegółowe informacje na temat wcześniejszych wydań, patrz [Uwagi do wydania '](/words/java/release-notes/) strony w odpowiednich sekcjach.

{{% /alert %}}
