---
title: Co nowego
second_title: Aspose.Words dla Python via .NET
articleTitle: Co nowego w Aspose.Words dla Python via .NET
linktitle: Co nowego w Aspose.Words dla Python via .NET
type: docs
description: "Aspose.Words dla Python via .NET rozwija się i ulepsza każdego dnia. Na tej stronie możesz dowiedzieć się o ogromnych i najciekawszych funkcjach produktu."
weight: 10
url: /pl/python-net/what-s-new-in-aspose-words-for-python-net/
---

Na tej stronie opisano najciekawsze nowe funkcje Aspose.Words wprowadzone w ostatnich wydaniach.

## Aspose.Words dla Python via .NET 24.1

Aspose.Words 24.1 poprawia zarządzanie kolorami obrysów, ulepsza obiekty OLE, a także wprowadza nowy publiczny API źródeł bibliograficznych.

### Renderowanie i drukowanie

#### Kontrola koloru obrysu <sup>24.1</sup>

Klasa [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) została rozszerzona o zestaw nowych właściwości publicznych związanych z zarządzaniem kolorami obrysu: **ForeThemeColor** i **BackThemeColor**, **ForeTintAndShade** i **BackTintAndShade**.

### Inny

* Wprowadzono możliwość modyfikacji tekstu kontrolki `TextBox` OLE poprzez dodanie nowej właściwości **Text** do nowej klasy **TextBoxControl**. <sup>24.1</sup>
* Publiczny API źródeł bibliograficznych został zaimplementowany poprzez dodanie nowej przestrzeni nazw **Aspose.Words.Bibliography** z jej nowymi klasami i wyliczeniami oraz poprzez dodanie nowej właściwości **Bibliography** do klasy **Document**. <sup>24.1</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla Python via .NET 24.1 Informacje o wydaniu](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

{{% /alert %}}

## Aspose.Words dla Python via .NET 23,9, 23,10, 23,11, 23,12

Aspose.Words 23.9 rozszerza opcje renderowania, emulację renderowania metaplików i opcje zapisywania markdown.

Aspose.Words 23.10 poprawia renderowanie, rozszerza opcje ładowania i zapisywania dokumentów oraz umożliwia użytkownikom łączenie dokumentów na nowe sposoby.

Aspose.Words 23.11 usprawnia pracę dzięki rewizjom, formatowi XLSX i czcionkom w legendzie wykresu o dodatkowe opcje.

Aspose.Words 23.12 wprowadza nowe właściwości i wyliczenia do pracy z dokumentami PDF i OOXML, a także obsługę obrazów WebP.

### Renderowanie i drukowanie

#### Dostosowywanie tytułów osi na wykresach DrawingML <sup>23.9</sup>

Możliwość dostosowania tytułów osi na wykresach DrawingML została wprowadzona poprzez wdrożenie nowej właściwości [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) i [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) klasy publicznej.

####  Określanie pionowego położenia czcionek w akapicie <sup>23.9</sup>

Możliwe jest teraz zdefiniowanie pionowej pozycji czcionek w akapicie przy użyciu nowej publicznej właściwości [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) i nowego wyliczenia [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/).

#### Kontrola koloru pierwszego planu <sup>23.10</sup>

Do klas [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) i [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) dodano możliwość odzyskania koloru pierwszego planu bez modyfikatorów poprzez właściwość **BaseForeColor**.

#### Rozszerzanie funkcjonalności wykresów <sup>23.10</sup>

Funkcjonalność klas [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) i [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) została rozszerzona o nowe metody i właściwości.

#### Automatycznie dopasuj i dopasuj obraz do kształtu <sup>23.10</sup>

Nowa metoda [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) zapewnia prosty sposób automatycznego dopasowania i dopasowania obrazu do określonego kształtu.

#### Domyślne formatowanie czcionki dla wpisów legendy wykresów DrawingML <sup>23.11</sup>

Możliwość określenia domyślnego formatowania czcionki dla wpisów legendy wykresów DrawingML została dodana poprzez właściwość [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/). Ta funkcja zapewnia bardziej uproszczony i spójny wygląd elementów wykresu, poprawiając ogólną estetykę dokumentu.

#### Określ układ strony podczas otwierania pliku PDF w programie Reader <sup>23.12</sup>

Dodano możliwość określenia układu strony, który będzie używany podczas otwierania dokumentu w czytniku PDF poprzez wprowadzenie nowej właściwości [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) do klasy [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) i wprowadzenie nowego wyliczenia [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/).

### Ładowanie i zapisywanie dokumentów

#### Określanie nazwy folderu w celu utworzenia identyfikatorów URI obrazu w Markdown <sup>23.9</sup>

Rozszerzono klasę [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) o właściwość [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/), która pozwala określić nazwę folderu służącego do konstruowania identyfikatorów URI obrazów zapisywanych w dokumencie Markdown.

#### Zmniejsz rozmiar wyjściowy PDF <sup>23.10</sup>

Zaimplementowano różne optymalizacje renderowania plików PDF w celu zmniejszenia rozmiaru wyjściowego podczas korzystania z ustawień [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/).

#### Rozpoznawanie hiperłączy podczas ładowania dokumentów TXT <sup>23.10</sup>

Zaimplementowano funkcję rozpoznawania hiperłączy podczas ładowania dokumentów TXT poprzez dodanie nowej właściwości [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/).

### Inny

- Zaimplementowano emulację renderowania metaplików w celu określenia rozmiaru rasteryzacji, szczególnie dla szerokości pisaka WMF i szerokości pisaka kosmetycznego EMF. Aby to osiągnąć, właściwość **ScaleWmfFontsToMetafileSize** została zastąpiona właściwością [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) i dodana została właściwość [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/). <sup>23.9</sup>
- Wprowadzono uproszczoną metodę wstawiania jednego dokumentu do innego dokumentu w aktualnej pozycji kursora, wykorzystując metodę [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions). <sup>23.10</sup>
- Możliwość dostępu i modyfikowania właściwości stylu została dodana poprzez wprowadzenie nowej właściwości [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/). <sup>23.10</sup>
- Do metod klasy [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) dodano parametr typu ogólnego. <sup>23.10</sup>
- Możliwość zapisania wszystkich sekcji dokumentu w tym samym arkuszu XLSX została zapewniona dzięki nowemu typowi wyliczeniowemu [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) i nowej właściwości [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/). <sup>23.11</sup>
* Zaimplementowano sposób kontrolowania sposobu wykorzystania rozszerzeń formatu ZIP64 w dokumentach OOXML poprzez nową właściwość Zip64Mode klasy `OoxmlSaveOptions` i nowe wyliczenie Zip64Mode. <sup>23.12</sup>
* Wprowadzono obsługę obrazu WebP. Należy pamiętać, że ta funkcja jest dostępna tylko w wersjach .NetStandart i .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla Python via .NET 23.9 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 23.10 Informacje o wydaniu](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 23.11 Informacje o wydaniu](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

Dowiedz się więcej o [Aspose.Words dla .NET 23.12 Informacje o wydaniu](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words dla Python via .NET 23,5, 23,6, 23,7, 23,8

Aspose.Words 23.5 zwiększa możliwości pracy z danymi serii wykresów i możliwość pracy z dokumentami ODT, a także poprawia nagłówki/stopki i zawijanie ich tekstu.

Aspose.Words 23.6 rozszerza opcje renderowania, dodaje nowy format eksportu, ulepsza raportowanie LINQ i narzędzia LowCode.

Aspose.Words 23.7 zwiększa możliwości raportowania, dodaje nowy format eksportu i wprowadza zmiany w pracy z tabelami i podpisami cyfrowymi.

Aspose.Words 23.8 rozszerza możliwości różnych formatów, poprawia renderowanie i dodaje nowe opcje pracy z polami

### Obsługiwane formaty

* Począwszy od wersji 23.6 możliwe jest zapisanie dokumentu w formacie XLSX. Teraz możesz konwertować swoje dokumenty do formatu Excel. <sup>23,6</sup>

* Począwszy od wersji 23.7 możliwe jest zapisanie strony dokumentu lub kształtu w formacie EPS. <sup>23,7</sup>

### Nowe funkcje formatu

- Wprowadzono funkcjonalność automatycznego generowania spisu treści (TOC) dla dokumentów MOBI. <sup>23.8</sup>
- Konstruktor [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) został rozszerzony o [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23.8</sup>
- Zaimplementowano kształtowanie tekstu pionowego dla metaplików EMF. <sup>23.8</sup>

### Wykonanie

#### Pobieranie i modyfikowanie danych serii wykresów <sup>23.5</sup>

Dodano funkcję pobierania i modyfikowania danych serii wykresów:

- nowe klasy: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- nowe typy wyliczeń: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Wsparcie dla zaawansowanej typografii <sup>23.6</sup>

Dodano obsługę zaawansowanej typografii w renderowaniu WMF, EMF i EMF+.

#### Kolorowa treść na stronie <sup>23.6</sup>

Dodana została publiczna właściwość [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/) wskazująca czy strona jest kolorowa czy nie.

#### Formatowanie etykiet danych wykresu <sup>23.6</sup>

Zaimplementowano możliwość ustawiania formatowania wypełnienia, obrysu i objaśnień dla etykiet danych wykresu.

### Mail Merge i raportowanie

#### Dynamiczne wstawianie HTML dla silnika raportowania LINQ <sup>23.6</sup>

Dodano nowy sposób dynamicznego wstawiania HTML dla LINQ Reporting Engine.

#### Obsługa tagów Mustache <sup>23.7</sup>

Tagi Mustache są teraz obsługiwane w metodach [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) i [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/).

#### Określanie rozmiaru renderowanych obrazów <sup>23.8</sup>

Wprowadzono nową publiczną właściwość [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) służącą do określania rozmiaru renderowanych obrazów w pikselach.

#### Zachowaj białe znaki dla wartości ciągu JSON – LINQ <sup>23.8</sup>

Do mechanizmu raportowania LINQ dodano opcję pozwalającą zachować białe znaki dla wartości ciągów JSON.

### LowCode <sup>23.6</sup>

Dodano nowe metody LowCode przeznaczone do łączenia różnych typów dokumentów w jeden dokument wyjściowy.

### Inny

- Wprowadzono obsługę zawijania tekstu w nagłówkach/stopkach. <sup>23,5</sup>
- Dodano możliwość usuwania podpisów cyfrowych z dokumentów ODT za pomocą metody [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str). <sup>23,5</sup>
- Dodano publiczną właściwość [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) umożliwiającą uzyskanie tekstu podstawowego i rubinowego przewodnika fonetycznego [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). <sup>23,5</sup>
- Dodano możliwość pobrania wartości podpisu cyfrowego z dokumentu podpisanego cyfrowo w postaci tablicy bajtów poprzez wprowadzenie nowej właściwości [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/). <sup>23,7</sup>
- Klasy [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) i [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) zostały rozszerzone o nowych członków publicznych – [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/) i [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23,7</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla Python via .NET 23.5 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 23.6 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 23.7 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 23.8 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words dla Python via .NET 23.1, 23.2, 23.3, 23.4

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

Klasa [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) została rozszerzona o zestaw nowych właściwości publicznych związanych z kolorami tła i pierwszego planu: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) i [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) i [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Gradienty radialne z natywnym modułem cieniującym `SkiaSharp` <sup>23.3</sup>

Zaimplementowano renderowanie gradientów promieniowych za pomocą natywnego modułu cieniującego `SkiaSharp` dla .NET Standard.

#### Odległość pomiędzy tabelą a otaczającym tekstem <sup>23.4</sup>

Dodano możliwość ustawienia odległości tabeli od otaczającego tekstu poprzez wprowadzenie nowych właściwości do klasy [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/): [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) i [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### Ładowanie i zapisywanie dokumentów

#### Generowanie `TOC` dla dokumentów AZW3 <sup>23.1</sup>

Dodano możliwość generowania `TOC` (spisu treści) dla dokumentów AZW3 poprzez wykorzystanie właściwości [epub_navigation_map_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/epub_navigation_map_level/).

#### Eksportowanie elementów listy do formatu Markdown <sup>23.1</sup>

Zapewniono sposób kontrolowania eksportu elementów listy do formatu Markdown poprzez dodanie właściwości [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) do klasy [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/).

#### Powiadomienia o postępie zapisywania dokumentu <sup>23.3</sup>

Zaimplementowano zapisywanie powiadomień o postępie dla formatów MOBI i AZW3.

#### Regulacja odstępów między zdaniami i wyrazami <sup>23.3</sup>

Dodano możliwość określenia, czy odstępy między zdaniami i wyrazami mają być automatycznie dostosowywane podczas importu dokumentu poprzez wprowadzenie właściwości [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/).

### Inny

- Możliwość określenia odstępów między znakami w dokumencie została dodana poprzez implementację właściwości [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) <sup>23.2</sup>
- Sposób instruowania Aspose.Words, czy uwzględniać pola tekstowe, przypisy dolne i końcowe w statystykach liczby słów, został zapewniony poprzez dodanie właściwości [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) <sup>23.2</sup>
- We właściwości [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) <sup>23.2</sup> wprowadzono nową opcję stylu dokumentu, która umożliwia określenie, czy styl ma być automatycznie przedefiniowywany na podstawie odpowiedniej wartości
- Dodano możliwość określenia, czy [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) jest przebiegiem przewodnika fonetycznego przy użyciu właściwości [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) <sup>23.4</sup>
- Zaimplementowano prosty sposób pracy z seriami i osiami wykresów kombi poprzez wprowadzenie klasy [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) i dodanie właściwości [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
- Do klasy [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) <sup>23.4</sup> dodano nowe właściwości publiczne związane z pozycjonowaniem względnym kształtu i rozmiarem
- Dokładność i wydajność obliczania jasności kolorów dla automatycznej rozdzielczości kolorów tekstu została poprawiona zgodnie z najnowszymi wersjami Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla Python via .NET 23.1 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 23.2 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 23.3 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 23.4 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words dla Python via .NET 22,9, 22,10, 22,11, 22,12

Aspose.Words 22.9 rozszerza opcje ładowania i zapisywania dokumentów oraz poprawia interakcję z niektórymi innymi opcjami.

Aspose.Words 22.10 poprawia opcje wyszukiwania i zamiany, ulepsza obiekty OLE i rozszerza funkcjonalność list.

Aspose.Words 22.11 rozszerza swoją funkcjonalność o nowe opcje umożliwiające wygodniejszą pracę ze znanymi już obiektami: OLE i znaczniki dokumentów strukturalnych.

Aspose.Words 22.12 zwiększa możliwości renderowania i wprowadza opcje pracy z marginesami podczas ładowania/zapisywania dokumentu.

### Ulepszenia wydajności <sup>22.12</sup>

Wprowadzono optymalizację, która znacznie zmniejsza głębokość zagnieżdżenia stanu grafiki podczas renderowania do formatu PDF, aby zachować zgodność ze specyfikacją.

### Renderowanie i drukowanie

#### Nowe właściwości renderowania obramowania <sup>22.12</sup>

Wprowadzono nowe właściwości publiczne [theme_color](https://reference.aspose.com/words/python-net/aspose.words/border/theme_color/) i [tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words/border/tint_and_shade/).

#### Liniowa formuła trendu dla renderowania DrawingML <sup>22.12</sup>

Zaimplementowano liniowe renderowanie formuły linii trendu dla wykresów DrawingML.

#### Ustawienia zastępcze czcionek dla czcionek Google Noto <sup>22.12</sup>

Zaktualizowano predefiniowane ustawienia zastępczych czcionek Google Noto.

### Ładowanie i zapisywanie dokumentów

#### Buforuj kształty nagłówka lub stopki, aby zmniejszyć rozmiar pliku PDF <sup>22.9</sup>

Możliwość buforowania kształtów nagłówka/stopki w celu zmniejszenia rozmiaru wyjściowego pliku PDF została zaimplementowana poprzez dodanie nowej właściwości **CacheHeaderFooterShapes**.

#### Automatyczne wykrywanie numerowania podczas ładowania dokumentu <sup>22.9</sup>

Możliwość określenia właściwości [auto_numbering_detection](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/auto_numbering_detection/) podczas ładowania tekstu została zaimplementowana poprzez rozszerzenie klasy [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/).

#### Określanie konkretnego typu marginesu <sup>22.12</sup>

Zaimplementowano możliwość określenia konkretnego typu **Margin** dla danej sekcji.

### Wyszukaj i porównaj <sup>22.10</sup>

Możliwość ignorowania [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) przy opcjach wyszukiwania i zamiany została zaimplementowana poprzez dodanie nowej właściwości [ignore_structured_document_tags](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_structured_document_tags/) do klasy [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### Inny

- Dodano nową funkcję pozwalającą uzyskać FieldEQ jako OfficeMath. <sup>22.9</sup>
- Zezwolono na tworzenie strukturalnych znaczników dokumentów typu Group na poziomie Row. <sup>22.9</sup>
- Obiekty i kontrolki OLE są teraz traktowane jako obrazy metaplików podczas konwersji dokumentu do formatu HTML. <sup>22.10</sup>
- Dodano nową funkcję sprawdzającą, czy dana lista została utworzona na podstawie tego samego szablonu, co lista porównywana, poprzez wprowadzenie nowej metody **HasSameTemplate** do klasy [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/). <sup>22.10</sup>
- Dodano możliwość tworzenia nowych znaczników dokumentów strukturalnych typu [Citation](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/). <sup>22.11</sup>
- Wprowadzono nową właściwość **EmbedAttachments**, która umożliwia użytkownikom osadzanie załączników OLE z dokumentu źródłowego w wyjściowym dokumencie PDF. <sup>22.11</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla Python via .NET 22.9 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-22-9-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 22.10 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-22-10-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 22.11 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-22-11-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 22.12 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words dla Python via .NET 22,5, 22,6, 22,7, 22,8

Aspose.Words 22.5 wprowadza obsługę nowych formatów ładowania i nowy rozmiar strony wydruku, a także poprawia niektóre opcje renderowania.

Aspose.Words 22.6 rozszerza możliwości konwersji plików PDF na inne formaty, a także usprawnia pracę z systemem DrawingML i efektem wypełnienia pełnym tekstem.

Aspose.Words 22.7 zwiększa możliwości pracy z funkcjami renderowania, a także dodaje nowe funkcje do pracy z importem HTML i eksportem do formatu PDF.

Aspose.Words 22.8 wprowadza nowy format eksportu i ulepsza różne algorytmy renderowania.

API został ulepszony w celu zapewnienia bardziej elastycznego i wygodnego programowania.

### Obsługiwane formaty

* Wprowadzono obsługę ładowania dokumentów EPUB i XML poprzez dodanie nowych wartości do wyliczenia **LoadFormat**. Począwszy od wersji 22.5 możliwe jest ładowanie dokumentów EPUB i XML do modelu dokumentu Aspose.Words i konwertowanie ich do dowolnego formatu [Obsługiwane formaty dokumentów](/words/pl/python-net/supported-document-formats/). <sup>22,5</sup>
* Począwszy od wersji 22.8 możliwe jest zapisanie dokumentu w formacie AZW3 – zastrzeżonym formacie plików e-booków firmy Amazon Kindle (KF8 to inna nazwa tego formatu). Teraz możesz nie tylko ładować dokumenty AZW3, ale także eksportować swoje pliki do formatu AZW3, który w zasadzie jest skompilowanym EPUB. <sup>22.8</sup>

### Renderowanie i drukowanie

#### Nowy rozmiar druku <sup>22,5</sup>

Dodano obsługę rozmiaru strony wydruku "Koperta nr 10" poprzez wprowadzenie nowej wartości do wyliczenia [PaperSize](https://reference.aspose.com/words/python-net/aspose.words/papersize/).

#### Renderowanie formuł MathML <sup>22.5</sup>

Poprawiono renderowanie ramki wokół formuł MathML i wykrywanie czcionek podczas renderowania znaków dla takich formuł.

#### Ulepszenia wykresu DML <sup>22.6</sup>

Publiczny format API wykresów DrawingML został rozszerzony o obsługę wypełnień gradientem, teksturą i wzorkiem.

#### Glyph przedstawia analizę składniową dla OpenType <sup>22.7</sup>

Zaimplementowano analizę składniową własnych zarysów glyph Aspose.Words dla czcionek OpenType (CFF).

Wcześniej parsowanie glyph dla czcionek OpenType (CFF) odbywało się za pośrednictwem GDI+. Zatem teraz działa w przypadkach, gdy GDI+ nie jest dostępne – platformy Java, .NET Standard, Linux, macOS itp. Glyph opisuje, że analizowanie jest wymagane w określonych przypadkach, takich jak WordArt, efekty tekstowe, niektóre funkcje pakietu Office Math i inne.

#### Ustaw formatowanie cienia kształtu <sup>22.7</sup>

Dodano możliwość ustawienia formatowania cienia obiektu kształtu poprzez dodanie nowej właściwości [shadow_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shadow_format/).

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

Wprowadzono nowy tryb importu HTML dla elementów blokowych poprzez dodanie nowej wartości do wyliczenia [HtmlInsertOptions](https://reference.aspose.com/words/python-net/aspose.words/htmlinsertoptions/).

#### Konwertuj do formatu PDF/UA-1 Zgodny z WCAG 2.0 <sup>22.7</sup>

Dodano obsługę konwersji dokumentu do formatu PDF/UA-1 zgodnego z WCAG 2.0.

Tak więc, jeśli klient ma dostępny dokument Word i konwertuje go do formatu PDF/UA-1 za pośrednictwem Aspose.Words, podając szczegóły konwersji, wówczas wynik będzie zgodny z WCAG 2.0.

WCAG, czyli Wytyczne dotyczące dostępności treści internetowych, to zestaw wytycznych opracowanych przez W3C we współpracy z osobami i organizacjami na całym świecie. Teraz dzięki Aspose.Words możesz przekonwertować swój dokument do wyjściowego formatu PDF/UA-1, który jest odpowiedni do tworzenia dokumentów PDF zgodnych z WCAG 2.0.

Warto zauważyć, że WCAG 2.0 ma dwa dodatkowe wymagania, które nie są określone w specyfikacji PDF/UA-1:

- wymagania kontrastowe
- wymagania dotyczące tagowania treści multimedialnych

Jednak oba wymagania nie mają zastosowania w naszym przypadku konwersji z programu Word do formatu PDF.

### Inny

Zaimplementowano wyjątek dziedziczenia efektu wypełnienia pełnym tekstem, który naśladuje zachowanie MS Word. <sup>22.6</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla Python via .NET 22.5 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-22-5-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 22.6 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-22-6-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 22.7 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-22-7-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 22.8 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-22-8-release-notes/).

{{% /alert %}}

## Aspose.Words dla Python via .NET 22.3, 22.4

Aspose.Words 22.3 rozszerza możliwości pracy z formatami PDF i TXT oraz usprawnia pracę niektórych istniejących algorytmów i silników.

Aspose.Words 22.4 zwiększa możliwości formatu PDF – teraz możesz zapisać plik w formacie PDF/A-4 i uzyskać szereg innych ulepszeń w zakresie wyjściowego pliku PDF. Jednocześnie Aspose.Words 22.4 zapewnia dodatkowe możliwości pracy z wykresami DML, odczytu metadanych Photoshopa i importowania elementów HTML na poziomie bloków.

API został ulepszony w celu zapewnienia bardziej elastycznego i wygodnego programowania.

### Obsługiwane funkcje

Począwszy od Aspose.Words 22.4, dodano obsługę Python 3.10.

### Ulepszenia w wydajności

Zaimplementowano ładowanie zapisanej wcześniej pamięci podręcznej wyszukiwania czcionek, aby przyspieszyć proces inicjalizacji pamięci podręcznej czcionek podczas renderowania. Teraz Twoje rozwiązania będą działać jeszcze szybciej.

### Obsługiwane formaty

Dodano ładowanie dokumentu w formacie AZW3 (KF8 to inna nazwa formatu). Teraz możesz załadować dokument AZW3 i przekonwertować go na inne obsługiwane formaty.

### Wykonanie

#### Renderowanie formuł MathML

Poprawiono renderowanie operatorów w formułach MathML.

#### Ulepszenia wykresów DML

W wykresach DML wprowadzono następujące ulepszenia:

* Algorytm skalowania osi wykresu DML został ulepszony, aby był taki sam jak w MS Word

* Dodano możliwość manipulowania wpisami legendy wykresów DrawingML, dzięki czemu nasz wykres API jest coraz bardziej wszechstronny
* Zaimplementowano możliwość określenia nazwy pliku xls/xlsx, z którym powiązany jest wykres DrawingML

#### Renderowanie do formatu PDF zgodnie ze standardem PDF/A-4

Dodano renderowanie do formatu PDF zgodnego z PDF/A-4 poprzez dodanie nowych wartości do wyliczenia [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) – [PDF_A4](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a4). Ta opcja zakłada zmienione poziomy zgodności: zwykła zgodność z formatem PDF/A-4 jest równoważna poziomowi zgodności U poprzednich wersji, a poziom zgodności A jest usunięty.

#### Odczyt rozdzielczości metadanych programu Photoshop w formacie JPEG

Zaimplementowano odczytywanie rozdzielczości metadanych programu Photoshop w obrazach JPEG, aby rozwiązać interesujący problem związany z nieprawidłowym skalowaniem obrazów podczas renderowania.

#### Zezwalaj na zawijanie tekstu łacińskiego w środku wyrazu

Wprowadzono obsługę funkcji "Zezwalaj na zawijanie tekstu w języku łacińskim w środku wyrazu", aby jeszcze bardziej usprawnić obsługę języka łacińskiego podczas renderowania.

### Ładowanie i zapisywanie dokumentów

#### Kontrolowanie zachowania stylu podczas ładowania dokumentu

Wprowadzono nową opcję [force_copy_styles](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/force_copy_styles/), która pozwala kontrolować zachowanie sprzecznych stylów podczas importu dokumentu.

#### Konwertuj kształty na SVG podczas eksportowania

Możliwość konwersji kształtów na obrazy SVG podczas eksportu do formatu HTML, MHTML lub EPUB została zapewniona poprzez dodanie właściwości [export_shapes_as_svg](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_shapes_as_svg/).

#### Zapisywanie w formacie PDF 2.0 i ulepszenia w wyjściu PDF

Wprowadzono możliwość zapisania dokumentu w formacie PDF 2.0 poprzez dodanie nowej wartości do wyliczenia [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/), a także kilka innych żądanych ulepszeń w wyjściowym formacie PDF.

#### Nowy tryb importu HTML

Zaimplementowano nowy tryb importowania elementów HTML na poziomie bloków, aby naśladować zachowanie Microsoft Word.

### Inny

* Wprowadzono możliwość pobrania OOXML kontroli treści i zapisania jej w łańcuchu znaków.
* Dodano rozpoznawanie niestandardowych przypisów w dokumentach PDF podczas importu.
* Dodano możliwość uzyskania niestandardowych danych pola powiązanych z polem.
* Poprawiono algorytm porównywania tabel bazujący na głębokiej analizie mechanizmu porównawczego Microsoft Word.
* Dodano składnię komentarzy w silniku raportowania LINQ.

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla Python via .NET 22.3 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-22-3-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 22.4 Informacje o wydaniu](/words/python-net/aspose-words-for-python-via-dotnet-22-4-release-notes/).

{{% /alert %}}

## Zobacz też

{{% alert color="primary" %}}

Na tej stronie znajdują się najnowsze informacje o wydaniach z ostatnich 2 lat. Szczegółowe informacje na temat wcześniejszych wydań można znaleźć na stronach [Informacje o wydaniu'](/words/python-net/release-notes/) w odpowiednich sekcjach.

{{% /alert %}}