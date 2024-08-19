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

## Aspose.Words dla Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 rozszerza opcje złożeń, poprawia możliwości renderowania i rozszerza niektóre inne opcje.

Aspose.Words 24.6 poprawia opcje renderowania, ulepsza funkcjonalność wyszukiwania i porównywania oraz rozszerza kilka innych funkcji.

Aspose.Words 24.7 zmienia sposób pracy z ActiveX, rozszerza możliwości renderowania, a także eksportu do formatów Markdown i XLSX.

Aspose.Words 24.8 rozszerza dostosowywanie wykresów o precyzyjną kontrolę nad etykietami osi, rozszerza zarządzanie czcionkami, usprawnia obsługę struktury dokumentu i dodaje nowe możliwości eksportu HTML/XAML, funkcjonalności PDF, konwersji dokumentów i podpisów cyfrowych.

### Obsługiwane formaty

Począwszy od wersji 24.7 obsługiwany jest eksport do formatu PDF/UA-2, aby zapewnić dostępność dla użytkowników niepełnosprawnych.

### Renderowanie i drukowanie

#### Zmiany w Charts, Shapes i DrawingML <sup>24.5</sup>

- Zaimplementowano renderowanie efektów DrawingML dla grafiki SVG, rozszerzając poprzednią funkcjonalność ograniczoną do obrazów.
- Wprowadzono obsługę tworzenia wykresów kombi i dostosowywania właściwości, takich jak szerokość przerwy, nakładanie się i skala bąbelków w grupach serii poprzez dodanie [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/) i [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) oraz klasy [SeriesGroups](https://reference.aspose.com/ words/java/com.aspose.words/chart/#getSeriesGroups).
- Zaimplementowano funkcję manipulowania efektem SoftEdge kształtów poprzez dodanie klasy [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- Zaimplementowano możliwość modyfikowania wartości dopasowania kształtów poprzez dodanie [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) i [Adjustment](https://reference.aspose.com/words/java/com.aspose.words/adjustment/) klasy publiczne i [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments).

#### Zmiany w wykresach, kształtach i rysunkach <sup>24.6</sup>

* Możliwości tworzenia wykresów zostały ulepszone. Możesz teraz tworzyć szerszą gamę wykresów, w tym *Mapy drzew*, *Sunbursts*, *Histogramy*, *Pareto*, *Box & Whisker*, *Waterfalls* i *Funnels*. Dzięki temu możesz wizualizować swoje dane w bardziej zróżnicowany i informacyjny sposób.
* Poprawiono kontrolę kolorów przy formatowaniu cieni. Możesz uzyskać bardziej precyzyjną kontrolę nad wyglądem swoich dokumentów, korzystając z kolorów cieni.
* Poprawiono wydajność renderowania tła. Dzięki natywnej technologii kafelkowania możesz znacznie przyspieszyć renderowanie tła zawierającego małe elementy.
* Dodano realistyczne gradienty kształtów. Możesz teraz tworzyć kształty DML z nieliniowymi gradientami, naśladując styl wizualny programu Microsoft Word, aby uzyskać bardziej dopracowany wygląd.

#### Dostosowywanie etykiet danych wykresu <sup>24.7</sup>

Dodano możliwość dostosowania etykiet danych wykresu, takich jak **Orientation** i **Rotation**.

#### Niestandardowa stylizacja numerów dla poziomów list <sup>24,7</sup>

Dodano moduł ustawiający właściwość publiczną [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat). Można teraz zdefiniować niestandardową stylizację numerów dla poziomów list.

#### Zmiany w pracy z ActiveX <sup>24.7</sup>

* Można teraz modyfikować właściwości obiektów ActiveX, co daje większą kontrolę nad ich zachowaniem.
* Dodano możliwość modyfikacji wartości przycisku opcji ActiveX w celu umożliwienia dynamicznej interakcji.
* Dodano możliwość przełączania pola wyboru ActiveX na „zaznaczone” lub „niezaznaczone”.

#### Kontrola nad orientacją i obrotem etykiet znaczników osi wykresu <sup>24.8</sup>

Dodano precyzyjną kontrolę nad orientacją i obrotem etykiet znaczników osi wykresu w celu wygodniejszej personalizacji wykresu – klasa [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) została rozszerzona o nowe właściwości **Orientation** i **Rotation**.

#### Zastępowanie ukośnika odwrotnego znakiem Yen <sup>24.8</sup>

Ulepszono wstecznie kompatybilny eksport HTML i XAML w celu zastąpienia znaku ukośnika odwrotnego znakiem Yen. Aby to osiągnąć, właściwość **ReplaceBackslashWithYenSign** została dodana do klas [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) i [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/).

#### Używanie tagów SDT jako nazw pól formularza podczas eksportowania do PDF <sup>24.8</sup>

Eksport PDF z obsługą używania tagów SDT jako nazw pól formularza został ulepszony przez dodanie nowej właściwości **UseSdtTagAsFormFieldName** do klasy [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### Konwertowanie, ładowanie i zapisywanie dokumentów

#### Eksportowanie linków do formatu Markdown <sup>24.7</sup>

Dodano możliwość kontroli eksportu linków w formacie Markdown poprzez implementację właściwości [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode <sup>24.8</sup>

Wprowadzono nową klasę **LowCode.Converter**, zaprojektowaną w celu zapewnienia zestawu metod do konwersji różnych typów dokumentów za pomocą jednej linii kodu.

### Wyszukaj i porównaj

#### Zaawansowane opcje porównania <sup>24.6</sup>
Dodano możliwość usprawnienia procesów analizy danych dzięki ulepszonej funkcjonalności porównawczej. Obejmuje to nową opcję [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) i przeprojektowany interfejs do zaawansowanych porównań.

### Inny

* Zaimplementowano funkcję eliminowania pustych stron z dokumentu poprzez dodanie metody [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24.5</sup>
* Dodano możliwość sprawdzenia obecności makr VBA bez ładowania dokumentu poprzez dodanie [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros) nieruchomość. <sup>24.5</sup>
* Obsługiwane jest teraz zachowywanie numeracji źródłowej podczas wstawiania dokumentu przy użyciu silnika raportowania LINQ. <sup>24.5</sup>
* Dodano nową właściwość [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) – zapewnia ona dokładniejszy znacznik czasu dla komentarzy, poprawiając organizację i identyfikowalność. <sup>24.6</sup>
* Ulepszono silnik raportowania LINQ. Dokonano selektywnego usunięcia pustych akapitów i zdefiniowania niestandardowych komunikatów dla brakujących elementów obiektów, co doprowadziło do czystszych i bardziej informacyjnych raportów. <sup>24.6</sup>
* Format daty i godziny jest teraz automatycznie wykrywany w celu bezproblemowego eksportu do formatu XLSX. <sup>24.7</sup>
* Dodano właściwość publiczną [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), która pozwala sprawdzić, czy projekt VBA jest chroniony. <sup>24.7</sup>
* Informacje o czcionkach zostały rozszerzone o właściwość **EmbeddingLicensingRights** dodaną do klas [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) i [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* Dodano sposób na wydajne czyszczenie nagłówków i stopek sekcji przy jednoczesnym zachowaniu znaków wodnych, aby dokładniej pracować ze strukturą dokumentu. Aby wyczyścić nagłówki i stopki sekcji, użyj nowej publicznej metody **ClearHeadersFooters**. <sup>24.8</sup>
* Włączono cyfrowe podpisywanie dokumentów XPS przy użyciu [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) – w tym celu dodano nową właściwość **DigitalSignatureDetails**. <sup>24.8</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words for Java 24.5 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Dowiedz się więcej o [Aspose.Words for Java 24.6 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Dowiedz się więcej o [Aspose.Words for Java 24.7 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

Dowiedz się więcej o [Aspose.Words for Java 24.8 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words zamiast Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 Poprawia doświadczenie w zarządzaniu kolorami udaru, wzmacnia obiekty OLE i LINQ raportowanie, a także wprowadza nowe źródła bibliografii publicznie API.

Aspose.Words 24.2 Rozszerzone karty API, zarządzanie stylem i opcje LINQ. Ta wersja Aspose.Words również wprowadziła możliwość określenia SvgSaveOptions podczas renderowania, bardziej elastyczne obciążenie sterujące Markdown pliki i praca z tekstem referencyjnym dla przypisów i notatek końcowych.

Aspose.Words 24.3 wprowadza nowy czytnik / pisarz TIFF oraz emulację operacji binarnych rastrowych dla metafilów WMF. Aspose.Words 24.3 również nadal rozwijać karty API.

Aspose.Words 24.4 ulepsza zapisywanie formatów, niektóre opcje renderowania, a także poprawia pracę z podpisami cyfrowymi.

### Obsługiwane formaty <sup>24.4</sup>

Nowoczesny format obrazu **WebP** jest teraz obsługiwany w Aspose.Words. Możesz teraz odczytywać i wstawiać obrazy WebP do dokumentów, a także zapisywać obrazy w formacie WebP.

### Renderowanie i drukowanie

#### Kontrola koloru uderzenia <sup>24.1</sup>

W [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) klasa została rozszerzona o zestaw nowych właściwości publicznych związanych z zarządzaniem kolorami udaru: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) oraz [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) oraz [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### Wykresy DrawingML API Rozszerzenie <sup>24.2 / 24.3 / 24.4</sup>

W **DrawingML Charts API** nadal się rozwija.

#### Osadzanie czcionek zdefiniowanych w regułach @font-face <sup>24.4</sup>

Dodano możliwość osadzania czcionek zdefiniowanych w regułach @font-face w definicjach czcionek wynikowego dokumentu poprzez dodanie nowej właściwości o nazwie [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules).

#### Praca z formatowaniem efektu połysku i odbicia <sup>24.4</sup>

Zaimplementowano możliwość pracy z formatowaniem efektu połysku i odbicia dla obiektu rysunkowego.

### Wczytywanie i zapisywanie dokumentów

#### Określ SvgSaveOptions podczas renderingu <sup>24.2</sup>

Możliwość określenia [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) podczas renderowania został dodany za pomocą [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) oraz [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) metody.

#### Zachowaj puste linie podczas wczytywania Markdown pliki <sup>24.2</sup>

Możliwość zachowania pustych linii podczas ładowania Markdown dodano pliki.

#### Nowy czytnik / pisarz TIFF <sup>24.3</sup>

Nowy czytnik / pisarz TIFF dla Aspose.Words zamiast .NET Standard, .NET Opracowano 6 i później. Aspose.Words zamiast .NET 24.3 dodano wsparcie do czytania obrazów TIFF z JPEG i starych typów kompresji JPEG, a także znacznie poprawić jakość operacji odczytu i zapisu.

### Inne

* Możliwość zmiany tekstu `TextBox` Kontrola OLE została wprowadzona poprzez dodanie nowego [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) nieruchomości do nowego [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) Klasa. 24.1 <sup>24.1</sup>
* Bibliografia Źródła publiczne API został wdrożony poprzez dodanie kilku nowych [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) oraz [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) klasy i a [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) wyliczenie, jak również poprzez dodanie nowego [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) nieruchomości do [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Klasa. <sup>24.1</sup>
* An API w celu ograniczenia dostępu do członków typu przy użyciu składni szablonów dla LINQ Reporting Engine dostarczono. <sup>24.1</sup>
* Nowe nieruchomości publiczne [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), oraz [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) dla wzmocnionego zarządzania stylem zostały dodane do [Style](https://reference.aspose.com/words/net/aspose.words/style/) Klasa. <sup>24.2</sup>
* Funkcjonalność odzyskania rzeczywistego tekstu znaku referencyjnego dla przypisów i notatek końcowych została wzmocniona z [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) nieruchomości i [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) Metoda. <sup>24.2</sup>
* Zgodność z `Word 2016` wykresy dla `LINQ Reporting Engine` został włączony. <sup>24.2</sup>
* Emulacja operacji binarnych rastrowych dla metafilów WMF została wdrożona. <sup>24.3</sup>
* Włączono możliwość definiowania opcji podpisu dla dokumentów w ramach **SaveOptions** poprzez dodanie nowej klasy o nazwie [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) z nowymi publicznymi składnikami, a także dodanie nowych właściwości do klas [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) i [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words zamiast Java 24.1 Uwagi do wydania](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 24.2 Uwagi do wydania.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

Dowiedz się więcej o [Aspose.Words zamiast Java 24.3 Uwagi do wydania.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

Dowiedz się więcej o [Aspose.Words zamiast Java 24.4 Uwagi do wydania.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/)


{{% /alert %}}

## Aspose.Words zamiast Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 rozszerza opcje renderowania, metafilową emulację renderowania i markdown Zapisz opcje.

Aspose.Words 23.10 ulepsza renderowanie, rozszerza opcje ładowania i zapisywania dokumentów oraz umożliwia użytkownikom łączenie dokumentów w nowe sposoby.

Aspose.Words 23.11 Poprawia pracę z poprawkami, format XLSX i czcionek na wykresie legendy z dodatkowymi opcjami.

Aspose.Words 23.12 wprowadza nowe właściwości i wyliczenia do pracy z dokumentami PDF, wsparcie dla WebP obrazy i zaktualizowana biblioteka Bouncy Castle.

### Renderowanie i drukowanie

#### Dostosowywanie tytułów osi w DrawingML Wykresy <sup>23.9</sup>

Możliwość dostosowania tytułów osi w wykresach DrawingML została wprowadzona przez wdrożenie nowej klasy publicznej [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) oraz [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) nieruchomości.

#### Określenie pionowej pozycji czcionki w ramach ustępu <sup>23.9</sup>

Obecnie możliwe jest zdefiniowanie pionowej pozycji czcionek w ramach akapitu przy użyciu nowych odbiorców [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) nieruchomości i nowy [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) wyliczenie.

#### Kontrola nowego koloru <sup>23.10</sup>

Możliwość pobrania koloru pierwszoplanowego bez modyfikatorów została dodana do [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) oraz [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) klasy za pośrednictwem **BaseForeColor** nieruchomości.

#### Rozszerzenie funkcjonalności wykresów <sup>23.10</sup>

Funkcjonalność [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), oraz [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) klasy zostały rozszerzone o nowe metody i właściwości.

#### Automatycznie dopasować i dopasować obrazek do kształtu <sup>23.10</sup>

Prosty sposób automatycznej regulacji i dopasowania obrazu w danym kształcie został zapewniony przez nowy [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) Metoda.

#### Domyślne formatowanie czcionki dla rysowania ML Wpisy legendy wykresu <sup>23.11</sup>

Możliwość określenia domyślnego formatowania czcionki dla wpisów legendy wykresów DrawingML została dodana przez **Font** nieruchomości. Funkcja ta ułatwia bardziej usprawniony i konsekwentny wygląd elementów mapy, poprawiając ogólną estetykę dokumentu.

#### Określa układ strony podczas otwierania PDF w czytniku <sup>23.12</sup>

Możliwość określenia układu strony przy otwieraniu dokumentu w czytniku PDF została dodana poprzez wprowadzenie nowego [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) nieruchomości do [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) klasa i wprowadzenie nowego [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) wyliczenie.

### Wczytywanie i zapisywanie dokumentów

#### Określanie nazwy folderu do tworzenia obrazów URI w Markdown <sup>23.9</sup>

W [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) klasy został rozszerzony przez włączenie [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) właściwość, która pozwala na określenie nazwy folderu używanego do tworzenia obrazów URI zapisanych do Markdown dokument.

#### Zmniejsz format PDF Rozmiar wyjścia <sup>23.10</sup>

Różne zoptymalizacje renderowania PDF w celu zmniejszenia rozmiaru wyjściowego przy wykorzystaniu [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) zaimplementowano ustawienia.

#### Rozpoznaj hiperłącza podczas wczytywania dokumentów TXT <sup>23.10</sup>

Funkcja rozpoznawania hiperlinków podczas wczytywania dokumentów TXT została zaimplementowana przez dodanie nowego [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) nieruchomości.

### Inne

- Zastosowano emulację renderowania metafilowego w celu określenia wielkości rasteryzacji, szczególnie dla szerokości długopisu WMF i szerokości długopisu kosmetycznego EMF. Aby to osiągnąć, **ScaleWmfFontsToMetafileSize** nieruchomość została zastąpiona [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) nieruchomości i [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) nieruchomości zostały dodane. <sup>23.9</sup>
- Uproszczona metoda wprowadzania jednego dokumentu do innego dokumentu w aktualnej pozycji kursora została wprowadzona przy użyciu [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) Metoda. <sup>23.10</sup>
- Możliwość dostępu i modyfikacji właściwości stylów została dodana poprzez wprowadzenie nowego [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) nieruchomości. <sup>23.10</sup>
- Do metod [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) Klasa. <sup>23.10</sup>
- Sposób kontroli, kiedy pewna zmiana powinna zostać przyjęta / odrzucona lub nie została wdrożona za pomocą [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) oraz [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) metody. Wzmocnienie to zapewnia użytkownikom lepszą kontrolę nad procesem przeglądu. <sup>23.11</sup>
- Możliwość zapisu wszystkich sekcji dokumentu na tym samym arkuszu roboczym XLSX została dostarczona za pośrednictwem nowego [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) rodzaj wyliczenia i nowy [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) nieruchomości. <sup>23.11</sup>
- Wsparcie dla WebP obraz został wprowadzony. Należy pamiętać, że ta funkcja jest dostępna tylko dla .NetStandart i .NET6 + wersje. <sup>23.12</sup>

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

* Od wersji 23.6 można zapisać dokument w formacie XLSX. Teraz możesz przekonwertować swoje dokumenty do formatu Excel. <sup>23.6</sup>

* Od wersji 23.7 można zapisać stronę dokumentu lub kształt w formacie EPS. <sup>23.7</sup>

* Nowy format

  - Wprowadzono funkcję automatycznego generowania tabeli zawartości (TOC) dokumentów MOBI. <sup>23.8</sup>
  - [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) konstruktor został rozszerzony o [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - Wprowadzono kształt pionowego tekstu dla metafilów EMF. <sup>23.8</sup>

### Renderowanie

#### Pobierz i modyfikuj Dane serii wykresów <sup>23.5</sup>

Funkcja uzyskiwania i modyfikowania danych serii map została dostarczona przez dodanie:

- nowe klasy: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- nowe typy enum: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Wsparcie dla zaawansowanej typografii <sup>23.6</sup>

Dodano wsparcie dla zaawansowanej typografii w renderowaniu WMF, EMF i EMF +.

#### Kolorowa zawartość na stronie <sup>23.6</sup>

Własność publiczna [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), wskazanie, czy strona jest kolorowa czy nie, zostało dodane.

#### Formatowanie etykiet danych wykresu <sup>23.6</sup>

Zaimplementowano możliwość ustawiania formatowania danych dotyczących wypełnienia, udaru i wywołania.

### Mail Merge i sprawozdawczość

#### Dynamiczne wstawianie HTML dla LINQ Reporting Engine <sup>23.6</sup>

Dodano nowy sposób dynamicznego wprowadzania HTML dla LINQ Reporting Engine.

#### Mustache Wsparcie dla tagów <sup>23.7</sup>

Mustache tagi są teraz obsługiwane w [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) oraz [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) metody.

#### LINQ Reporting Engine Template Syntax Aktualizacje <sup>23.7</sup>

Składnia szablonu LINQ Reporting Engine obsługuje teraz `ElementAt` i ElementAtOrDomyślne metody rozszerzenia.

#### Określanie rozmiaru renderowanych obrazów <sup>23.8</sup>

Nowa własność publiczna **ImageSize** dla określenia rozmiaru renderowanych obrazów w pikselu został wprowadzony.

#### Zachować Whitespaces dla wartości String JSON - LINQ <sup>23.8</sup>

Do LINQ Reporting Engine dodano opcję, aby zachować białe paces dla wartości strun JSON.

### LowCode <sup>23.6</sup>

Nowy LowCode dodano metody mające na celu połączenie różnych typów dokumentów w jeden dokument wyjściowy.

### Inne

- Zaimplementowano obsługę pakowania tekstu w nagłówkach / stopkach. <sup>23.5</sup>
- Możliwość usunięcia podpisów cyfrowych z dokumentów ODT została dodana poprzez [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) Metoda. <sup>23.5</sup>
- Własność publiczna [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) do uzyskania tekstu bazowego i rubinowego przewodnika fonetycznego [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) został dodany. <sup>23.5</sup>
- Możliwość pobrania cyfrowej wartości podpisu z podpisanego cyfrowo dokumentu jako tablicy bajtów została dodana poprzez wprowadzenie nowego [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) nieruchomości. <sup>23.7</sup>
- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) oraz [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Klasy zostały rozszerzone o nowych członków publicznych - [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), oraz [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- Dodano wsparcie dla pól CITATION i BIBLIOGRAPHY. <sup>23.8</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words zamiast Java 23.5 Uwagi do wydania](/words/java/aspose-words-for-java-23-5-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 23.6 Uwagi do wydania](/words/java/aspose-words-for-java-23-6-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 23.7 Uwagi do wydania](/words/java/aspose-words-for-java-23-7-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 23.8 Uwagi do wydania](/words/java/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words zamiast Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 poprawia wydajność emulacji operacji rastrowych, a także zwiększa jakość eksportu dokumentów i renderowania.

Aspose.Words 23.2 wprowadza zapisywanie dokumentów w formacie MOBI, poprawia renderowanie map i wprowadza znaczące zmiany w szczegółach wyglądu dokumentów.

Aspose.Words 23.3 zwiększa import i oszczędność dokumentów z nowymi właściwościami, a także poprawia jakość pracy z tle, kolor pierwszoplanowy i gradient promieniowy.

Aspose.Words 23.4 poprawia obliczanie niektórych parametrów oraz pozycjonowanie tabeli i otaczającego tekstu.

### Poprawa wydajności

#### Emulacja operacji rastrowych <sup>23.1</sup>

Wydajność i jakość emulacji operacji rastrowych z metafilami zostały znacząco poprawione.

### Obsługiwane formaty

#### Eksport do MOBI <sup>23.2</sup>

Począwszy od wersji 23.2, można zapisać dokument w formacie MOBI (zwany także ChRL, AZW - Amazon własny format pliku e-book Kindle). Teraz można nie tylko załadować dokumenty MOBI, ale także eksportować pliki do formatu MOBI.

### Renderowanie

#### Praca z Shading Theme kolory <sup>23.1</sup>

Możliwość pracy z kolorami cieniowania motywu została zaimplementowana.

#### Wsparcie współdziałania R- square w DML Charts <sup>23.1</sup>

Wsparcie współczynnika R- square w etykietach linii trendów DML po dodaniu renderowania.

#### Wykres Ulepszenia renderowania <sup>23.2</sup>

Od 23.2 r. renderowanie map uległo znacznej poprawie.

#### Tło i kontrola koloru <sup>23.3</sup>

W [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) klasa została rozszerzona o zestaw nowych właściwości publicznych związanych z kolorami tła i pierwszeństwa: **ForeThemeColor** oraz **BackThemeColor**, **ForeTintAndShade** oraz **BackTintAndShade**.

#### Radialne gradienty z `SkiaSharp` Native Shader <sup>23.3</sup>

Renderowanie gradientów promieniowych z `SkiaSharp` native shader for .NET Standard została wdrożona.

#### Odległość między tabelą a tekstem otaczającym <sup>23.4</sup>

Możliwość ustawienia odległości między tabelą a otaczającym tekstem została dodana poprzez wprowadzenie nowych właściwości do [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) klasa: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), oraz [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Wczytywanie i zapisywanie dokumentów

#### Generuj `TOC` dla dokumentów AZW3 <sup>23.1</sup>

Zdolność do generowania `TOC` (tabela treści) dla dokumentów AZW3 został dodany poprzez użycie [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) nieruchomości.

#### Eksportowanie pozycji listy do Markdown <sup>23.1</sup>

Sposób kontroli eksportu pozycji listy do Markdown format został dostarczony poprzez dodanie [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) nieruchomości do [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) Klasa.

#### Zapisywanie powiadomień o postępach <sup>23.3</sup>

Zaoszczędzenie powiadomień o postępach dla formatów MOBI i AZW3 zostało wdrożone.

#### Dostosowanie do wyroku i odstępów słownych <sup>23.3</sup>

Możliwość określenia, czy dostosować zdanie i słowo odstępy automatycznie przy imporcie dokumentu została dodana poprzez wprowadzenie **AdjustSentenceAndWordSpacing** nieruchomości.

### Inne

- Możliwość określenia zmiany odstępów między znakami dokumentu została dodana poprzez [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) implementacja nieruchomości <sup>23.2</sup>
- Sposób na nauczanie Aspose.Words czy włączyć textboxes, przypisy i notatki końcowe w statystyce liczby słów zostały dostarczone poprzez dodanie [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) nieruchomość <sup>23.2</sup>
- Nowa opcja dla stylu dokumentu, która pozwala na określenie, czy styl jest automatycznie przedefiniowany w oparciu o odpowiednią wartość, została wprowadzona poprzez [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) nieruchomość <sup>23.2</sup>
- Możliwość ustalenia, czy [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) to fonetyczny przewodnik został dodany za pomocą **IsPhoneticGuide** nieruchomość <sup>23.4</sup>
- Prosty sposób pracy z serii i osi wykresów combo został wdrożony przez wprowadzenie **ChartAxisCollection** klasy i dodanie **Chart.Axes** nieruchomość <sup>23.4</sup>
- Nowe właściwości publiczne połączone z kształtem względne pozycjonowanie i rozmiar zostały dodane do [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) klasa <sup>23.4</sup>
- Dokładność i wydajność obliczeń jasności kolorów dla automatycznej rozdzielczości kolorów tekstu została poprawiona zgodnie z najnowszymi wersjami Microsoft Word <sup>23.4</sup>

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

### Poprawa wydajności <sup>22.12</sup>

Wprowadzono optymalizację, która znacznie zmniejsza głębokość gniazda stanu graficznego podczas renderowania do PDF w celu utrzymania zgodności specyfikacji.

### Renderowanie i drukowanie

#### Drukowanie niekolorowe Strony na drukarce kolorowej <sup>22.11</sup>

Niestandardowy kolorowy / szarości tryb drukowania został zaimplementowany przez dodanie nowego **GrayscaleAuto** wartość [ColorPrintMode](https://reference.aspose.com/words/java/com.aspose.words/colorprintmode/) wyliczenie.

Nowa właściwość drukowania pozwala użytkownikom kontrolować sposób drukowania stron niekolorowych, jeśli urządzenie obsługuje drukowanie kolorów. Funkcja ta może być przydatna, jeśli użytkownicy chcą automatycznie drukować niekolorowe strony tylko za pomocą trybu druku w skali szarości.

#### Nowe właściwości renderowania granic <sup>22.12</sup>

Nowe nieruchomości publiczne [ThemeColor](https://reference.aspose.com/words/java/com.aspose.words/border/#getThemeColor) oraz [TintAndShade](https://reference.aspose.com/words/java/com.aspose.words/border/#getTintAndShade) zostały wprowadzone.

#### Formuła trendów liniowych dla renderingu DrawingML <sup>22.12</sup>

Liniowe renderowanie formuły trendline dla wykresów DrawingML zostało wdrożone.

#### Ustawienia czcionek dla Google Noto Czcionki <sup>22.12</sup>

Predefiniowane ustawienia awaryjne czcionki dla Google Noto czcionki zostały zaktualizowane.

### Wczytywanie i zapisywanie dokumentów

#### Nagłówek cache lub kształty footer do zmniejszenia rozmiaru PDF <sup>22.9</sup>

Zdolność bufora nagłówka / stopki do zmniejszenia rozmiaru wyjścia pliku PDF została zaimplementowana przez dodanie nowego [CacheHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) nieruchomości.

#### Automatyczne wykrywanie numerów podczas wczytywania dokumentu <sup>22.9</sup>

Możliwość określenia [AutoNumberingDetection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getAutoNumberingDetection) właściwość podczas wczytywania tekstu została wdrożona poprzez rozszerzenie [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) Klasa.

#### Określanie szczegółowych Rodzaj marży <sup>22.12</sup>

Możliwość określenia konkretnego [Margin](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getMargins) typ dla danej sekcji został wdrożony.

### Szukaj i porównuj <sup>22.10</sup>

Zdolność do ignorowania [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) po znalezieniu i zastąpieniu opcji zostało wdrożone poprzez dodanie nowego [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreStructuredDocumentTags--) nieruchomości do [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) Klasa.

### Inne

- Dodano nową funkcję, aby uzyskać FieldEQ jako OfficeMath. <sup>22.9</sup>
- Tworzenie strukturyzowanych tagów dokumentów Group typ na poziomie wiersza był dozwolony. <sup>22.9</sup>
- Obiekty i sterowniki OLE są teraz traktowane jako metafilowe obrazy podczas konwersji dokumentu na HTML. <sup>22.10</sup>
- Nowa funkcja sprawdzająca, czy określona lista została utworzona z tego samego szablonu co lista porównawcza została dodana poprzez wprowadzenie nowego [HasSameTemplate](https://reference.aspose.com/words/java/com.aspose.words/list/#hasSameTemplate-com.aspose.words.List-) metoda do [List](https://reference.aspose.com/words/java/com.aspose.words/list/) Klasa. <sup>22.10</sup>
- Zdolność do tworzenia nowych tagów ustrukturyzowanych dokumentów [Citation](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) dodano typ. <sup>22.11</sup>
- Zapewniono możliwość śledzenia postępów w aktualizacji pola. <sup>22.11</sup>
- Nowy **EmbedAttachments** została wprowadzona właściwość, która umożliwia użytkownikom osadzanie załączników OLE z dokumentu źródłowego do dokumentu PDF. <sup>22.11</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words zamiast Java 22.9 Uwagi do wydania](/words/java/aspose-words-for-java-22-9-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 22.10 Uwagi do wydania](/words/java/aspose-words-for-java-22-10-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 22.11 Uwagi do wydania](/words/java/aspose-words-for-java-22-11-release-notes/).

Dowiedz się więcej o [Aspose.Words zamiast Java 22.12 Uwagi do wydania](/words/java/aspose-words-for-java-22-12-release-notes/).

{{% /alert %}}

## Zobacz również

{{% alert color="primary" %}}

Ta strona zawiera najnowsze wiadomości z ostatnich 2 lat. Szczegółowe informacje na temat wcześniejszych wydań, patrz [Uwagi do wydania '](/words/java/release-notes/) strony w odpowiednich sekcjach.

{{% /alert %}}
