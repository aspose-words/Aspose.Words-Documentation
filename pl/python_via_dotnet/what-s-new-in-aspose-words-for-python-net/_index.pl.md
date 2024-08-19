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

## Aspose.Words dla Python via .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 rozszerza opcje złożeń, poprawia możliwości renderowania i rozszerza niektóre inne opcje.

Aspose.Words 24.6 poprawia opcje renderowania, ulepsza funkcjonalność wyszukiwania i porównywania oraz rozszerza kilka innych funkcji.

Aspose.Words 24.7 zmienia sposób pracy z ActiveX, rozszerza możliwości renderowania, a także eksportu do formatów Markdown i XLSX.

Aspose.Words 24.8 rozszerza dostosowywanie wykresów o precyzyjną kontrolę nad etykietami osi, rozszerza zarządzanie czcionkami, usprawnia obsługę struktury dokumentu i dodaje nowe możliwości eksportu HTML/XAML, funkcjonalności PDF, konwersji dokumentów i podpisów cyfrowych.

### Obsługiwane formaty

Począwszy od wersji 24.7 obsługiwany jest eksport do formatu PDF/UA-2, aby zapewnić dostępność dla użytkowników niepełnosprawnych.

### Renderowanie i drukowanie

#### Zmiany w Charts, Shapes i DrawingML <sup>24.5</sup>

* Zaimplementowano renderowanie efektów DrawingML dla grafiki SVG, rozszerzając poprzednią funkcjonalność ograniczoną do obrazów.
* Wprowadzono obsługę tworzenia wykresów kombi i dostosowywania właściwości, takich jak szerokość przerwy, nakładanie się i skala bąbelków w grupach serii poprzez dodanie [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) i [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) oraz [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/) właściwość.
* Funkcjonalność manipulowania efektem SoftEdge kształtów została zaimplementowana poprzez dodanie klasy [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/).
* Możliwość modyfikowania wartości kształtów została zaimplementowana poprzez dodanie **AdjustmentCollection** i **Adjustment** klas publicznych i [adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) nieruchomość.

#### Zmiany w wykresach, kształtach i rysunkach <sup>24.6</sup>

* Możliwości tworzenia wykresów zostały ulepszone. Możesz teraz tworzyć szerszą gamę wykresów, w tym *Mapy drzew*, *Sunbursts*, *Histogramy*, *Pareto*, *Box & Whisker*, *Waterfalls* i *Funnels*. Dzięki temu możesz wizualizować swoje dane w bardziej zróżnicowany i informacyjny sposób.
* Poprawiono kontrolę kolorów przy formatowaniu cieni. Możesz uzyskać bardziej precyzyjną kontrolę nad wyglądem swoich dokumentów, korzystając z kolorów cieni.
* Poprawiono wydajność renderowania tła. Dzięki natywnej technologii kafelkowania możesz znacznie przyspieszyć renderowanie tła zawierającego małe elementy.
* Dodano realistyczne gradienty kształtów. Możesz teraz tworzyć kształty DML z nieliniowymi gradientami, naśladując styl wizualny programu Microsoft Word, aby uzyskać bardziej dopracowany wygląd.

#### Dostosowywanie etykiet danych wykresu <sup>24.7</sup>

Dodano możliwość dostosowania etykiet danych wykresu, takich jak **Orientation** i **Rotation**.

#### Niestandardowa stylizacja numerów dla poziomów list <sup>24,7</sup>

Dodano moduł ustawiający właściwość publiczną [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/). Można teraz zdefiniować niestandardową stylizację numerów dla poziomów list.

#### Zmiany w pracy z ActiveX <sup>24.7</sup>

* Można teraz modyfikować właściwości obiektów ActiveX, co daje większą kontrolę nad ich zachowaniem.
* Dodano możliwość modyfikacji wartości przycisku opcji ActiveX w celu umożliwienia dynamicznej interakcji.
* Dodano możliwość przełączania pola wyboru ActiveX na „zaznaczone” lub „niezaznaczone”.

#### Kontrola nad orientacją i obrotem etykiet znaczników osi wykresu <sup>24.8</sup>

Dodano precyzyjną kontrolę nad orientacją i obrotem etykiet znaczników osi wykresu w celu wygodniejszej personalizacji wykresu – klasa [AxisTickLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/) została rozszerzona o nowe właściwości [orientation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/orientation/) i [rotation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Zastępowanie ukośnika odwrotnego znakiem Yen <sup>24.8</sup>

Ulepszono wstecznie kompatybilny eksport HTML i XAML w celu zastąpienia znaku ukośnika odwrotnego znakiem Yen. Aby to osiągnąć, właściwość **replace_backslash_with_yen_sign** została dodana do klas [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) i [XamlFlowSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xamlflowsaveoptions/).

#### Używanie tagów SDT jako nazw pól formularza podczas eksportowania do PDF <sup>24.8</sup>

Eksport PDF z obsługą używania tagów SDT jako nazw pól formularza został ulepszony przez dodanie nowej właściwości [use_sdt_tag_as_form_field_name](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_sdt_tag_as_form_field_name/) do klasy [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/).

### Konwertowanie, ładowanie i zapisywanie dokumentów

#### Eksportowanie linków do formatu Markdown <sup>24.7</sup>

Dodano możliwość kontroli eksportu linków w formacie Markdown poprzez implementację właściwości [link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/).

#### LowCode <sup>24.8</sup>

Wprowadzono nową klasę [LowCode.Converter](https://reference.aspose.com/words/python-net/aspose.words.lowcode/converter/), zaprojektowaną w celu zapewnienia zestawu metod do konwersji różnych typów dokumentów za pomocą jednej linii kodu.

### Wyszukaj i porównaj

#### Zaawansowane opcje porównania <sup>24.6</sup>
Dodano możliwość usprawnienia procesów analizy danych dzięki ulepszonej funkcjonalności porównawczej. Obejmuje to nową opcję [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) i przeprojektowany interfejs do zaawansowanych porównań.

### Inny

* Zaimplementowano funkcję usuwania pustych stron z dokumentu poprzez dodanie metody [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/). <sup>24.5</sup>
* Możliwość sprawdzenia obecności makr VBA bez ładowania dokumentu została zapewniona poprzez dodanie właściwości [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/). <sup>24.5</sup>
* Obsługiwane jest teraz zachowywanie numeracji źródłowej podczas wstawiania dokumentu przy użyciu silnika raportowania LINQ. <sup>24.5</sup>
* Dodano nową właściwość [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) – zapewnia ona dokładniejszy znacznik czasu dla komentarzy, poprawiając organizację i identyfikowalność. <sup>24.6</sup>
* Ulepszono silnik raportowania LINQ. Dokonano selektywnego usunięcia pustych akapitów i zdefiniowania niestandardowych komunikatów dla brakujących elementów obiektów, co doprowadziło do czystszych i bardziej informacyjnych raportów. <sup>24.6</sup>
* Format daty i godziny jest teraz automatycznie wykrywany w celu bezproblemowego eksportu do formatu XLSX. <sup>24.7</sup>
* Dodano właściwość publiczną [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/), która pozwala sprawdzić, czy projekt VBA jest chroniony. <sup>24.7</sup>
* Informacje o czcionkach zostały rozszerzone o właściwość **embedding_licensing_rights** dodaną do klas [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) i [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Dodano sposób na wydajne czyszczenie nagłówków i stopek sekcji przy jednoczesnym zachowaniu znaków wodnych, aby dokładniej pracować ze strukturą dokumentu. Aby wyczyścić nagłówki i stopki sekcji, użyj nowej publicznej metody [clear_headers_footers](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). <sup>24.8</sup>
* Włączono cyfrowe podpisywanie dokumentów XPS przy użyciu [XpsSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/) – w tym celu dodano nową właściwość [digital_signature_details](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/digital_signature_details/). <sup>24.8</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla Python via .NET 24.5 Informacje o wydaniu](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 24.6 Informacje o wydaniu](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 24.7 Informacje o wydaniu](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 24.8 Informacje o wydaniu](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words dla Python via .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 poprawia zarządzanie kolorami obrysów, ulepsza obiekty OLE, a także wprowadza nowy publiczny API źródeł bibliograficznych.

Aspose.Words 24.2 rozszerzyło API wykresów, zarządzanie stylem i opcje LINQ. W tej wersji Aspose.Words wprowadzono również możliwość określania SvgSaveOptions podczas renderowania, bardziej elastyczne ładowanie plików Markdown oraz pracę z tekstem odwołania dla przypisów dolnych i przypisów końcowych.

Aspose.Words 24.3 wprowadza nowy czytnik/zapisywacz TIFF oraz emulację operacji binarnych na rastrach dla meta plików WMF. Aspose.Words 24.3 nadal rozbudowuje API wykresów.

Aspose.Words 24.4 ulepsza zapisywanie formatów, niektóre opcje renderowania, a także poprawia pracę z podpisami cyfrowymi.

### Obsługiwane formaty <sup>24.4</sup>

Nowoczesny format obrazu **WebP** jest teraz obsługiwany w Aspose.Words dla .NET Framework 4.6.2 i nowszych. Możesz teraz odczytywać i wstawiać obrazy WebP do dokumentów, a także zapisywać obrazy w formacie WebP.

Należy pamiętać, że WebP jest obecnie dostępny tylko w .NET Standard i .NET Framework v4.6.2 i nowszych.

### Renderowanie i drukowanie

#### Kontrola koloru obrysu <sup>24.1</sup>

Klasa [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) została rozszerzona o zestaw nowych właściwości publicznych związanych z zarządzaniem kolorami obrysu: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) i [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) i [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### Rozszerzenie DrawingML Charts API <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** jest nadal rozwijane.

#### Osadzanie czcionek zdefiniowanych w regułach @font-face <sup>24.4</sup>

Dodano możliwość osadzania czcionek zdefiniowanych w regułach @font-face w definicjach czcionek wynikowego dokumentu poprzez dodanie nowej właściwości o nazwie [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/).

#### Praca z formatowaniem efektu połysku i odbicia <sup>24.4</sup>

Zaimplementowano możliwość pracy z formatowaniem efektu połysku i odbicia dla obiektu rysunkowego.

### Ładowanie i zapisywanie dokumentów

#### Określanie SvgSaveOptions podczas renderowania <sup>24.2</sup>

Dodano możliwość określania [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) podczas renderowania za pomocą [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) i [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions).

#### Zachowanie pustych wierszy podczas ładowania plików Markdown <sup>24.2</sup>

Dodano możliwość zachowania pustych wierszy podczas ładowania plików Markdown.

#### Nowy czytnik/zapisywacz TIFF <sup>24.3</sup>

Dla Aspose.Words opracowano nowy czytnik/zapis TIFF. Aspose.Words dla .NET 24.3 dodaje obsługę odczytu obrazów TIFF z typami kompresji JPEG i Old JPEG, a także znacznie poprawia jakość operacji odczytu i zapisu.

### Inny

* Wprowadzono możliwość modyfikacji tekstu kontrolki `TextBox` OLE poprzez dodanie nowej właściwości **Text** do nowej klasy **TextBoxControl**. <sup>24.1</sup>
* Publiczny API źródeł bibliograficznych został zaimplementowany poprzez dodanie nowej przestrzeni nazw [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) z jej nowymi klasami i wyliczeniami oraz poprzez dodanie nowej właściwości [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) do klasy [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). <sup>24.1</sup>
* Do klasy [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) dodano nowe publiczne właściwości [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/) i [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) w celu ulepszenia zarządzania stylem. <sup>24.2</sup>
* Funkcjonalność pobierania rzeczywistego tekstu znacznika odwołania dla przypisów dolnych i przypisów końcowych została ulepszona dzięki właściwości [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) i metodzie [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default) . <sup>24.2</sup>
* Zaimplementowano emulację operacji binarnych na rastrach dla meta plików WMF. <sup>24.3</sup>
* Włączono możliwość definiowania opcji podpisu dla dokumentów w ramach **SaveOptions** poprzez dodanie nowej klasy o nazwie [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) z nowymi publicznymi składnikami, a także dodanie nowych właściwości do klas [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) i [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Dowiedz się więcej o [Aspose.Words dla Python via .NET 24.1 Informacje o wydaniu](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 24.2 Informacje o wydaniu](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 24.3 Informacje o wydaniu](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

Dowiedz się więcej o [Aspose.Words dla Python via .NET 24.4 Informacje o wydaniu](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words dla Python via .NET 23.9, 23.10, 23.11, 23.12

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

## Aspose.Words dla Python via .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 zwiększa możliwości pracy z danymi serii wykresów i możliwość pracy z dokumentami ODT, a także poprawia nagłówki/stopki i zawijanie ich tekstu.

Aspose.Words 23.6 rozszerza opcje renderowania, dodaje nowy format eksportu, ulepsza raportowanie LINQ i narzędzia LowCode.

Aspose.Words 23.7 zwiększa możliwości raportowania, dodaje nowy format eksportu i wprowadza zmiany w pracy z tabelami i podpisami cyfrowymi.

Aspose.Words 23.8 rozszerza możliwości różnych formatów, poprawia renderowanie i dodaje nowe opcje pracy z polami

### Obsługiwane formaty

* Począwszy od wersji 23.6 możliwe jest zapisanie dokumentu w formacie XLSX. Teraz możesz konwertować swoje dokumenty do formatu Excel. <sup>23.6</sup>

* Począwszy od wersji 23.7 możliwe jest zapisanie strony dokumentu lub kształtu w formacie EPS. <sup>23.7</sup>

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

- Wprowadzono obsługę zawijania tekstu w nagłówkach/stopkach. <sup>23.5</sup>
- Dodano możliwość usuwania podpisów cyfrowych z dokumentów ODT za pomocą metody [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str). <sup>23.5</sup>
- Dodano publiczną właściwość [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) umożliwiającą uzyskanie tekstu podstawowego i rubinowego przewodnika fonetycznego [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). <sup>23.5</sup>
- Dodano możliwość pobrania wartości podpisu cyfrowego z dokumentu podpisanego cyfrowo w postaci tablicy bajtów poprzez wprowadzenie nowej właściwości [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/). <sup>23.7</sup>
- Klasy [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) i [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) zostały rozszerzone o nowych członków publicznych – [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/) i [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23.7</sup>

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

Dodano możliwość generowania `TOC` (spisu treści) dla dokumentów AZW3 poprzez wykorzystanie właściwości **epub_navigation_map_level**.

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

## Aspose.Words dla Python via .NET 22.9, 22.10, 22.11, 22.12

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

## Zobacz też

{{% alert color="primary" %}}

Na tej stronie znajdują się najnowsze informacje o wydaniach z ostatnich 2 lat. Szczegółowe informacje na temat wcześniejszych wydań można znaleźć na stronach [Informacje o wydaniu'](/words/python-net/release-notes/) w odpowiednich sekcjach.

{{% /alert %}}