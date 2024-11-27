---
title: Co nowego
second_title: Aspose.Words dla C++
articleTitle: Co nowego w Aspose.Words dla C++
linktitle: Co nowego w Aspose.Words dla C++
type: docs
description: "Aspose.Words dla C++ rozszerza się i zwiększa codziennie. Na tej stronie możesz dowiedzieć się o ogromnych i najciekawszych funkcjach produktu."
weight: 2
url: /pl/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

Ta strona opisuje najciekawsze nowe funkcje Aspose.Words wprowadzone w ostatnich wydaniach.

## Aspose.Words dla C++ 24.9, 24.10

Aspose.Words 24.9 wprowadza group shape wstawianie i StructuredDocumentTag wstawianie przez DocumentBuilder, poprawia renderowanie Wykresów promieniowych z podziałką, poprawia podpisy cyfrowe z obsługą XAdES-EPES, dodaje rozpoznawanie podkreśleń Markdown i zapewnia dostęp do separatorów przypisów/przypisów końcowych.

Aspose.Words 24.10 wprowadza ulepszoną obsługę kontroli ActiveX z tworzeniem CommandButton, nową kontrolą widoczności kształtu, możliwością group shapes, ulepszonym eksportem Markdown dla tabel, formatowaniem wykresów dla Wykresów Pie i Doughnut, lepszą obsługą kodowania Big5 i obsługą przestarzałych czcionek tajwańskich.

### Renderowanie i drukowanie

#### Podziałka na wykresach promieniowych <sup>24.9</sup>

Zaimplementowano renderowanie podziałek na wykresach promieniowych.

#### CommandButton Formanty ActiveX <sup>24.10</sup>

Możliwość tworzenia CommandButton formantów ActiveX została wprowadzona przez dodanie nowej metody publicznej [InsertForms2OleControl]() i nowej klasy publicznej [Forms2OleControl]().

#### Kontrola Widoczności Kształtu <sup>24.10</sup>

Dodano nową właściwość publiczną [Hidden](), aby kontrolować widoczność kształtów.

#### Zmiany na wykresach Pie i Doughnut <sup>24.10</sup>

Dodano kilka nowych właściwości publicznych do Wykresów format Pie i Doughnut.

### Konwertowanie, ładowanie i zapisywanie dokumentów

#### Podkreśl formatowanie podczas ładowania plików Markdown <sup>24.9</sup>

Opcja rozpoznawania formatowania podkreślenia podczas ładowania dokumentów Markdown została włączona przez dodanie nowej własności publicznej [ImportUnderlineFormatting]().

#### Eksportowanie tabel jako HTML podczas zapisywania do Markdown <sup>24.10</sup>

Opcja eksportu tabel jako HTML podczas zapisywania dokumentów do formatu Markdown została zaimplementowana przez dodanie nowej własności publicznej [ExportAsHtml]() i wyliczenia [MarkdownExportAsHtml]().

### Podpisy Cyfrowe

#### Podpisuj dokumenty za pomocą XAdES-EPES <sup>24.9</sup>

Możliwość podpisywania dokumentów z podpisami XAdES-EPES poziomu XML-DSig została wprowadzona przez dodanie nowej własności publicznej [XmlDsigLevel]() i nowego wyliczenia publicznego [XmlDsigLevel]().

### Inne

* Nowa metoda publiczna [InsertGroupShape]() została dodana do group shapes. <sup>24.9</sup>
* Dodano nową metodę publiczną [InsertStructuredDocumentTag](), aby wstawić **StructuredDocumentTags** do dokumentu. <sup>24.9</sup>
* Publiczny dostęp do separatorów przypisów / przypisów końcowych został zapewniony przez dodanie kilku publicznych klas i właściwości. <sup>24.9</sup>
* Możliwość grupowania poszczególnych kształtów, group shapes Razem i bezpośredniego grupowania zarówno kształtów, jak i group shapes została wprowadzona przez dodanie metody [InsertGroupShape](). <sup>24.10</sup>
* Poprawiono obsługę kodowania Big5 dla tabel CMAP TrueType. <sup>24.10</sup>
* Ulepszono obsługę przestarzałych czcionek tajwańskich. <sup>24.10</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla C++ 24.9 informacje o wydaniu](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

Dowiedz się więcej o [Aspose.Words dla C++ 24.10 informacje o wydaniu](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words dla C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 rozszerza opcje zestawów, poprawia możliwości renderowania i rozszerza niektóre inne opcje.

Aspose.Words 24.6 poprawia opcje renderowania, poprawia funkcje wyszukiwania i porównywania oraz rozszerza kilka innych funkcji.

Aspose.Words 24.7 zmienia sposób pracy z ActiveX, rozszerza możliwości renderowania, a także eksportuje do formatów Markdown i XLSX.

### Obsługiwane Formaty

Począwszy od wersji 24.7, eksport do PDF/UA-2 jest obsługiwany w celu zapewnienia dostępności dla użytkowników niepełnosprawnych.

### Renderowanie i drukowanie

#### Zmiany w wykresach, kształtach i DrawingML <sup>24.5</sup>

- Zaimplementowano renderowanie efektów DrawingML dla Grafiki SVG, rozszerzając poprzednią funkcjonalność ograniczoną do obrazów.
- Obsługa tworzenia wykresów kombi i dostosowywania właściwości, takich jak szerokość szczeliny, nakładanie się i skala bąbelków w grupach serii, została wprowadzona przez dodanie klas **ChartSeriesGroup** i **ChartSeriesGroupCollection** oraz właściwości **SeriesGroups**.
- Funkcjonalność manipulowania efektem SoftEdge kształtów została zaimplementowana przez dodanie klasy **SoftEdgeFormat**.
- Możliwość modyfikowania dostosowywania wartości kształtów została zaimplementowana przez dodanie klas publicznych **AdjustmentCollection** i **Adjustment** oraz właściwości **Adjustments**.

#### Zmiany w wykresach, kształtach i rysunkach <sup>24.6</sup>

- Zwiększono możliwości tworzenia wykresów. Możesz teraz tworzyć szerszą gamę Wykresów, w tym*Treemaps*, *Sunbursts*, *Histograms*, *Pareto* wykresy, *Box & Whisker* wykresy, *Waterfalls* i *Funnels*. Pozwala to na wizualizację danych w bardziej zróżnicowany i informacyjny sposób.
- Poprawiono kontrolę koloru dla formatowania cienia. Możesz uzyskać bardziej precyzyjną kontrolę nad wyglądem dokumentów, uzyskując dostęp do kolorów cieni.
- Poprawiono zwiększenie wydajności renderowania w tle. Możesz znacznie przyspieszyć renderowanie tła zawierającego małe elementy dzięki natywnej technologii układania płytek.
- Dodano realistyczne gradienty kształtów. Możesz teraz tworzyć DML kształty z nieliniowymi gradientami, naśladując styl wizualny Microsoft Word, aby uzyskać bardziej dopracowany wygląd.

#### Dostosowanie Etykiety Danych Wykresu <sup>24.7</sup>

Dodano możliwość dostosowywania etykiet danych wykresów, takich jak **Orientation** i **Rotation**.

#### Niestandardowa Stylizacja numerów dla poziomów listy <sup>24.7</sup>

Dodano seter dla własności publicznej [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/). Możesz teraz zdefiniować niestandardową stylizację numerów dla poziomów listy.

#### Zmiany w pracy z ActiveX <sup>24.7</sup>

- Właściwości obiektów ActiveX można teraz modyfikować, co daje większą kontrolę nad ich zachowaniem.
- Dodano możliwość modyfikacji wartości kontrolki ActiveX przycisku radiowego w celu umożliwienia dynamicznej interakcji.
- Dodano możliwość przełączania ActiveX checkbox Na "zaznaczone" lub "niezaznaczone".

### Ładowanie i zapisywanie dokumentów

#### Eksportowanie linków do formatu Markdown <sup>24.7</sup>

Możliwość kontrolowania eksportu linków w formacie Markdown została dodana poprzez implementację właściwości [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/).

### Wyszukaj i porównaj

#### Zaawansowane Opcje Porównania <sup>24.6</sup>

Dodano możliwość usprawnienia przepływów pracy analizy danych dzięki ulepszonej funkcji porównywania. Obejmuje to nową opcję **IgnoreStoreItemId** i przeprojektowany interfejs do zaawansowanych porównań.

### Inne

- Funkcja eliminacji pustych stron z dokumentu została zaimplementowana przez dodanie metody [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/). <sup>24.5</sup>
- Możliwość sprawdzenia obecności makr VBA bez ładowania dokumentu została zapewniona przez dodanie właściwości **HasMacros**. <sup>24.5</sup>
- Dodano nową właściwość **DateTimeUtc** - zapewnia to dokładniejszy znacznik czasu dla komentarzy, poprawiając organizację i identyfikowalność. <sup>24.6</sup>
- Format datetime jest teraz automatycznie wykrywany w celu bezproblemowego eksportu do formatu XLSX. <sup>24.7</sup>
- Dodano własność publiczną [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/), która pozwala sprawdzić, czy projekt VBA jest chroniony. <sup>24.7</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla C++ 24.5 informacje o wydaniu](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

Dowiedz się więcej o [Aspose.Words dla C++ 24.6 informacje o wydaniu](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

Dowiedz się więcej o [Aspose.Words dla C++ 24.7 informacje o wydaniu](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words dla C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 poprawia wrażenia związane z zarządzaniem kolorami obrysu, poprawia OLE obiekty, a także wprowadza nową bibliografię źródła publiczne API.

Aspose.Words 24.2 rozszerzone wykresy API i zarządzanie stylem. Ta wersja Aspose.Words wprowadziła również możliwość określania SvgSaveOptions podczas renderowania, bardziej elastycznego sterowania ładowaniem plików Markdown i pracy z tekstem odniesienia dla przypisów dolnych i końcowych.

Aspose.Words 24.3 wprowadza emulację binarnych operacji rastrowych dla WMF metaplików, a także kontynuuje Rozszerzanie Wykresów API.

Aspose.Words 24.4 ulepsza niektóre opcje renderowania, a także usprawnia pracę z podpisami cyfrowymi.

### Renderowanie i drukowanie

#### Kontrola Koloru Obrysu <sup>24.1</sup>

Klasa [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) została rozszerzona o zestaw nowych właściwości publicznych związanych z zarządzaniem kolorami obrysu: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) i [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) i [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### DrawingML Wykresy API Rozszerzenie <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** jest nadal rozwijany.

#### Osadź czcionki zadeklarowane w regułach @font-face <sup>24.4</sup>

Dodano możliwość osadzania czcionek zadeklarowanych w regułach @font-face w definicjach czcionek wynikowego dokumentu została wprowadzona przez dodanie nowej właściwości [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/).

#### Pracuj z formatowaniem blasku i odbicia <sup>24.4</sup>

Zaimplementowano możliwość pracy z formatowaniem blasku i odbicia dla obiektu rysunkowego.

### Ładowanie i zapisywanie dokumentów

#### Określ SvgSaveOptions Podczas Renderowania <sup>24.2</sup>

Możliwość określenia [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) podczas renderowania została dodana przy użyciu [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) i [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) metody.

#### Zachowaj puste linie podczas ładowania plików Markdown <sup>24.2</sup>

Dodano możliwość zachowania pustych linii podczas ładowania plików Markdown.

### Inne

- Możliwość modyfikowania tekstu kontrolki `TextBox` OLE została wprowadzona przez dodanie nowej właściwości **Text** do nowej klasy **TextBoxControl**. <sup>24.1</sup>
- Bibliografia Sources public API została zaimplementowana poprzez dodanie nowej przestrzeni nazw [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) z nowymi klasami i wyliczeniami oraz poprzez dodanie nowej właściwości [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) do klasy [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). <sup>24.1</sup>
- Nowe właściwości publiczne [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/) i [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) dla ulepszonego zarządzania stylem zostały dodane do klasy [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). <sup>24.2</sup>
- Funkcjonalność pobierania rzeczywistego tekstu znaku odniesienia dla przypisów dolnych i końcowych została wzbogacona o Właściwość [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) i metodę [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- Zaimplementowano emulację binarnych operacji rastrowych dla WMF metaplików. <sup>24.3</sup>
- Możliwość definiowania opcji podpisu dla dokumentów w **SaveOptions** została włączona poprzez dodanie nowej klasy **DigitalSignatureDetails** z nowymi członkami publicznymi, a także dodanie nowych właściwości do klas [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) i [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla C++ 24.1 informacje o wydaniu](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

Dowiedz się więcej o [Aspose.Words dla C++ 24.2 informacje o wydaniu](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

Dowiedz się więcej o [Aspose.Words dla C++ 24.3 informacje o wydaniu](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

Dowiedz się więcej o [Aspose.Words dla C++ 24.4 informacje o wydaniu](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words dla C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 rozszerza opcje renderowania, emulację renderowania metapliku i markdown opcje zapisywania.

Aspose.Words 23.10 poprawia renderowanie, rozszerza opcje ładowania i zapisywania dokumentów oraz umożliwia użytkownikom scalanie dokumentów na nowe sposoby.

Aspose.Words 23.11 usprawnia pracę z wersjami, formatem XLSX i czcionkami w legendzie wykresu z dodatkowymi opcjami.

Aspose.Words 23.12 wprowadza nowe właściwości i wyliczenia do pracy z dokumentami PDF i OOXML, a także obsługę obrazów WebP.

### Renderowanie i drukowanie

#### Dostosowywanie tytułów osi na wykresach DrawingML <sup>23.9</sup>

Możliwość dostosowywania tytułów osi na wykresach DrawingML została wprowadzona przez implementację nowej klasy publicznej **ChartAxisTitle** i właściwości [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/).

#### Określanie pozycji pionowej czcionek w akapicie <sup>23.9</sup>

Teraz Można zdefiniować pionowe położenie czcionek w akapicie przy użyciu nowej właściwości public [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) i nowego wyliczenia [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/).

#### Kontrola Koloru Pierwszego Planu <sup>23.10</sup>

Możliwość pobierania koloru pierwszego planu bez modyfikatorów została dodana do klas [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) i [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) za pośrednictwem właściwości **BaseForeColor**.

#### Rozszerzenie funkcjonalności Wykresów <sup>23.10</sup>

Funkcjonalność klas [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) i [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) została rozszerzona o nowe metody i właściwości.

#### Automatycznie Dopasuj i Dopasuj obraz do kształtu <sup>23.10</sup>

Prosty sposób automatycznego dopasowania i dopasowania obrazu w określonym kształcie został zapewniony za pomocą nowej metody [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/).

#### Domyślne formatowanie czcionek dla wpisów legendy wykresu DrawingML <sup>23.11</sup>

Możliwość określenia domyślnego formatowania czcionek dla wpisów legendy Wykresów DrawingML została dodana za pośrednictwem właściwości [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/). Ta funkcja ułatwia bardziej usprawniony i spójny wygląd elementów wykresu, poprawiając ogólną estetykę dokumentu.

#### Określ układ strony podczas otwierania PDF w czytniku <sup>23.12</sup>

Możliwość określenia układu strony, który ma być używany podczas otwierania dokumentu w czytniku PDF, została dodana poprzez wprowadzenie nowej właściwości **PageLayout** do klasy [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) i wprowadzenie nowego wyliczenia **PdfPageLayout**.

### Ładowanie i zapisywanie dokumentów

#### Określanie nazwy folderu do konstruowania obrazu URIs w Markdown <sup>23.9</sup>

Klasa [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) została rozszerzona o Właściwość [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/), która pozwala określić nazwę folderu użytego do skonstruowania obrazu URIs zapisanego w dokumencie Markdown.

#### Zmniejsz Rozmiar Wyjściowy PDF <sup>23.10</sup>

Zaimplementowano różne optymalizacje renderowania PDF w celu zmniejszenia rozmiaru wyjściowego przy użyciu ustawień [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/).

#### Rozpoznaj hiperłącza podczas ładowania dokumentów TXT <sup>23.10</sup>

Funkcja rozpoznawania hiperłączy podczas ładowania dokumentów TXT została zaimplementowana przez dodanie nowej właściwości [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/).

### Inne

- Zaimplementowano emulację renderowania metaplików w celu określenia rozmiaru rasteryzacji, szczególnie dla WMF szerokości pióra i EMF szerokości pióra kosmetycznego. Aby to osiągnąć, właściwość **ScaleWmfFontsToMetafileSize** została zastąpiona właściwością [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) i dodano Właściwość [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/). <sup>23.9</sup>
* Uproszczona metoda wstawiania jednego dokumentu do innego dokumentu w bieżącej pozycji kursora została wprowadzona przy użyciu metody [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* Możliwość dostępu i modyfikowania właściwości stylu została dodana poprzez wprowadzenie nowej właściwości [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/). <sup>23.10</sup>
* Ogólny parametr typu został dodany do metod klasy [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/). <sup>23.10</sup>
* Sposób kontrolowania, kiedy pewna wersja powinna zostać zaakceptowana/odrzucona lub nie została zaimplementowana przy użyciu metod [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) i [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/). To ulepszenie zapewnia użytkownikom lepszą kontrolę nad procesem weryfikacji. <sup>23.11</sup>
* Możliwość zapisania wszystkich sekcji dokumentu w tym samym arkuszu XLSX została zapewniona przez nowy typ wyliczenia [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) i właściwość new [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/). <sup>23.11</sup>
* Sposób kontrolowania sposobu użycia rozszerzeń formatu ZIP64 dla dokumentów OOXML został zaimplementowany za pomocą właściwości new Zip64Mode klasy `OoxmlSaveOptions` i wyliczenia new Zip64Mode. <sup>23.12</sup>
* Wprowadzono obsługę obrazu WebP. Należy pamiętać, że ta funkcja jest dostępna tylko dla .NetStandart i .NET6+ wersji. <sup>23.12</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla C++ 23.9 Informacje o wydaniu](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
Dowiedz się więcej o [Aspose.Words dla C++ 23.10 informacje o wydaniu](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
Dowiedz się więcej o [Aspose.Words dla C++ 23.11 informacje o wydaniu](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
Dowiedz się więcej o [Aspose.Words dla C++ 23.12 informacje o wydaniu](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Zobacz także

{{% alert color="primary" %}}

Ta strona zawiera najnowsze wiadomości z ostatnich 2 lat. Aby uzyskać szczegółowe informacje na temat wcześniejszych wydań, zobacz [Release Notes"](/words/cpp/release-notes/) strony w odpowiednich sekcjach.

{{% /alert %}}
