---
title: Określ opcje renderowania podczas konwersji na PDF
second_title: Aspose.Words dla C++
articleTitle: Określ opcje renderowania podczas konwersji na PDF
linktitle: Określ opcje renderowania podczas konwersji na PDF
description: "Konwertuj dokument na PDF za pomocą zaawansowanych opcji przy użyciu C++. Użyj PdfSaveOptions, aby zmienić wynik zapisania dokumentu do formatu PDF."
type: docs
weight: 30
url: /pl/cpp/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Format PDF to format o stałej stronie, który jest bardzo popularny wśród użytkowników i szeroko obsługiwany przez różne aplikacje, ponieważ dokument PDF wygląda tak samo na każdym urządzeniu. Z tego powodu konwersja do PDF jest ważną cechą Aspose.Words.

PDF to złożony format. W procesie konwersji dokumentu na PDF wymagane jest kilka etapów obliczeń, w tym obliczenie układu. Ponieważ te etapy obejmują złożone obliczenia, są czasochłonne. Ponadto format PDF jest sam w sobie dość złożony. Ma określoną strukturę plików, model graficzny i osadzanie czcionek. Ponadto oferuje pewne złożone funkcje wyjściowe, takie jak znaczniki struktury dokumentu, szyfrowanie, podpisy cyfrowe i edytowalne formularze.

Aspose.Words silnik układu imituje sposób działania silnika układu strony Microsoft Word. Dlatego Aspose.Words sprawia, że PDF dokumenty wyjściowe wyglądają jak najbliżej tego, co widać w Microsoft Word. Czasami konieczne jest określenie dodatkowych opcji, które mogą wpłynąć na wynik zapisania dokumentu w formacie PDF. Opcje te można określić za pomocą klasy [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members), zawierającej Właściwości określające sposób wyświetlania danych wyjściowych PDF.

Poniżej przedstawiono kilka przykładów użycia **PdfSaveOptions**.

{{% alert color="primary" %}}

Obecnie możesz zapisać do PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, i PDF/UA-1 formatów. Użyj wyliczenia [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/), aby ustawić poziom zgodności z normami PDF. Zauważ, że w formacie PDF/A Rozmiar pliku wyjściowego jest większy niż zwykły rozmiar pliku PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) i [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) są oznaczone jako przestarzałe.

Aby uzyskać więcej informacji na temat PDF/A, Zobacz następny artykuł " poznaj funkcje konwersji na PDF/A".

{{% /alert %}}

## Tworzenie dokumentu PDF z formularzami do wypełnienia

Możliwe jest również eksportowanie formularzy do wypełnienia z dokumentu Microsoft Word do pliku wyjściowego PDF, który ma formularze do wypełnienia zamiast zwykłego tekstu. Użyj właściwości [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/), aby zapisać dokument jako PDF z formularzami do wypełnienia.

Zauważ, że w przeciwieństwie do Microsoft Word format PDF ma ograniczoną liczbę opcji edytowalnych formularzy, takich jak textbox, combobox i checkbox. Microsoft Word ma więcej typów formularzy, na przykład selektor dat kalendarza. Ogólnie rzecz biorąc, nie jest możliwe pełne naśladowanie zachowania Microsoft Word w PDF. Dlatego w niektórych złożonych przypadkach Wyjście PDF może różnić się od tego, co widzisz w Microsoft Word.

Poniższy przykład kodu pokazuje, jak zapisać dokument jako PDF z formularzami do wypełnienia z określoną kompresją i jakością Jpeg:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## Eksportowanie struktury dokumentu i właściwości niestandardowych

Właściwość [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) umożliwia eksportowanie struktury dokumentu do PDF Danych Wyjściowych.

PDF obiekty struktury logicznej zapewniają mechanizm włączania informacji dotyczących struktury zawartości dokumentu do pliku PDF. Aspose.Words zachowuje informacje o strukturze z dokumentu Microsoft Word, takie jak akapity, listy, tabele, Przypisy/przypisy końcowe itp.

Poniższy przykład pokazuje, jak zapisać dokument w formacie PDF, zachowując strukturę dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Words umożliwia również eksportowanie niestandardowych właściwości dokumentu do PDF, co pokazano w poniższym przykładzie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## Eksportowanie konturów z zakładek i nagłówków na wyjściu PDF

Jeśli chcesz wyeksportować zakładki jako kontury w output PDF, możesz użyć właściwości [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/). Ta właściwość określa domyślny poziom w konturze dokumentu, na którym wyświetlane są zakładki Microsoft Word. Jeśli dokument zawiera zakładki w nagłówku / stopce dokumentu, możesz ustawić właściwość [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) na [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) lub [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/), Aby określić, w jaki sposób są eksportowane na wyjściu PDF. Zakładki w nagłówkach / stopkach nie są eksportowane, gdy wartość **HeaderFooterBookmarksExportMode** wynosi [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/).

Poniższy przykład kodu pokazuje, jak wyeksportować zakładki z pierwszego nagłówka / stopki sekcji:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

Wynik PDF tego przykładu pokazano poniżej:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

Gdy **HeaderFooterBookmarksExportMode** jest ustawiony na pierwszy, a dokument ma parzyste i nieparzyste nagłówki/stopki lub inny nagłówek/stopkę pierwszej strony, Zakładki są eksportowane dla pierwszych unikalnych nagłówków/stopek w sekcji.

Możesz także eksportować nagłówki w danych wyjściowych PDF, używając właściwości [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/). Ta właściwość określa, ile poziomów nagłówków jest zawartych w konturze dokumentu.

Poniższy przykład kodu pokazuje, jak eksportować nagłówki z trzema poziomami:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

Dane wyjściowe PDF tego przykładu przedstawiono poniżej:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Nawigacja po zakładkach lub nagłówkach może mieć różny wygląd w różnych przeglądarkach PDF. Ponadto w niektórych aplikacjach zakładki i nawigacja nagłówków nie są dostępne w UI.

{{% /alert %}}

## Zmniejszanie próbkowania obrazów w celu zmniejszenia rozmiaru dokumentu

Aspose.Words zapewnia możliwość próbkowania obrazów w dół w celu zmniejszenia rozmiaru wyjściowego PDF przy użyciu właściwości [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/). Próbkowanie w dół jest domyślnie włączone we właściwości [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/).

Zauważ, że możliwe jest również ustawienie określonej rozdzielczości we właściwości [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/) lub progu rozdzielczości we właściwości [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/). W drugim przypadku, jeśli rozdzielczość obrazu jest mniejsza niż wartość progowa, próbkowanie w dół nie będzie miało zastosowania.

Poniższy przykład kodu pokazuje, jak zmienić rozdzielczość obrazów w dokumencie wyjściowym PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

Rozdzielczość jest obliczana zgodnie z rzeczywistym rozmiarem obrazu na stronie.

## Osadzanie czcionek w formacie Adobe PDF

Aspose.Words umożliwia również kontrolowanie sposobu osadzania czcionek w wynikowych dokumentach PDF. Czcionki muszą być osadzone w dowolnym dokumencie Adobe PDF, aby upewnić się, że dokument może być poprawnie renderowany na dowolnym komputerze (więcej szczegółów na temat renderowania czcionek można znaleźć w sekcji [Używanie Czcionek TrueType ](/words/cpp/using-truetype-fonts/)). Domyślnie Aspose.Words osadza podzbiór czcionek używanych w dokumencie w wygenerowanym PDF. W takim przypadku tylko glify (znaki) użyte w dokumencie są zapisywane w PDF.

### Kiedy używać pełnych czcionek, a kiedy podzbiór

Istnieje sposób na określenie opcji dla Aspose.Words osadzania pełnych czcionek. Dalsze szczegóły, wraz z pewnymi zaletami i wadami każdego ustawienia opisano w poniższej tabeli.

| Tryb Osadzania Czcionek | Zalety | Wady |
| :- | :- | :- |
| `Full` | Przydatne, gdy chcesz edytować wynikowy PDF później, dodając lub modyfikując tekst. Wszystkie czcionki są włączone, stąd wszystkie glify są obecne. | Ponieważ niektóre czcionki są duże (kilka megabajtów), osadzenie ich bez podzbioru może skutkować dużymi plikami wyjściowymi. |
| `Subset` | Podsetowanie jest przydatne, jeśli chcesz, aby Rozmiar pliku wyjściowego był mniejszy. | <p>Użytkownik nie może w pełni dodać ani edytować tekstu za pomocą podzbioru czcionki w dokumencie wyjściowym PDF. Dzieje się tak, ponieważ nie wszystkie glify czcionki są obecne.</p><p>Jeśli wiele PDFs zostanie zapisanych za pomocą podzbiorów czcionek i zmontowanych razem, połączony dokument PDF może mieć czcionkę zawierającą wiele niepotrzebnych podzbiorów.</p> |

### Osadzanie pełnych czcionek w PDF

Właściwość [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) umożliwia określenie sposobu, w jaki Aspose.Words osadza czcionki w dokumencie wyjściowym PDF.

- Aby osadzić pełne czcionki w dokumencie wyjściowym PDF, Ustaw **EmbedFullFonts** Na true
- Aby podzbiór czcionek podczas zapisywania do PDF, Ustaw **EmbedFullFonts** Na false

Poniższy przykład pokazuje, jak osadzić pełne czcionki w dokumencie wyjściowym PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

Poniższy przykład pokazuje, jak ustawić Aspose.Words Na podzbiór czcionek na wyjściu PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu dla tych przykładów z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Jak kontrolować osadzanie podstawowych czcionek i czcionek standardowych Windows

Czcionki podstawowe i czcionki standardowe Windows to "standardowe" zestawy czcionek, które zwykle znajdują się na komputerze docelowym lub są dostarczane przez czytnik dokumentów, dlatego nie muszą być osadzane w danych wyjściowych PDF. Nie osadzając tych czcionek, można zmniejszyć rozmiar renderowanych dokumentów PDF, a jednocześnie zachować przenośność.

Aspose.Words udostępnia opcje wyboru sposobu eksportowania czcionek do PDF. Można wybrać opcję osadzenia podstawowych i standardowych czcionek na wyjściu PDF lub pominąć ich osadzanie i zamiast tego użyć standardowych czcionek podstawowych PDF lub czcionek systemowych na komputerze docelowym. Użycie jednej z tych opcji zwykle powoduje znaczne zmniejszenie rozmiaru pliku dla PDF dokumentów generowanych przez Aspose.Words.

- Ponieważ te opcje wykluczają się wzajemnie, powinieneś wybierać tylko jedną na raz.
- Podczas zapisywania z PDF/A-1 zgodność, wszystkie używane czcionki muszą być osadzone w dokumencie PDF. Podczas zapisywania z tą zgodnością właściwość [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) musi być ustawiona na false, a Właściwość [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) musi być ustawiona na [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Osadzanie Podstawowych Czcionek

Opcja osadzania podstawowych czcionek może być włączona lub wyłączona za pomocą właściwości `UseCoreFonts`. Gdy jest ustawiony na true, następujące najpopularniejsze czcionki "True Type" (podstawowe czcionki 14) nie są osadzane w dokumencie wyjściowym PDF:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Czcionki te są zastępowane odpowiednimi czcionkami typu core 1, które są dostarczane przez czytnik po otwarciu PDF.

Poniższy przykład pokazuje, jak ustawić Aspose.Words, aby uniknąć osadzania podstawowych czcionek i pozwolić czytelnikowi zastąpić je czcionkami PDF typu 1:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu dla tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Ponieważ przeglądarki PDF udostępniają podstawowe czcionki na dowolnej obsługiwanej platformie, ta opcja jest również przydatna, gdy wymagana jest większa przenośność dokumentów. Jednak czcionki podstawowe mogą wyglądać inaczej niż czcionki systemowe.

{{% alert color="primary" %}}

To ustawienie działa tylko dlaANSI (Windows-1252) kodowania tekstu. Pisanie tekstu innego niżANSI do PDF zawsze będzie wymagało osadzenia odpowiednich czcionek.

{{% /alert %}}

### Osadzanie Czcionek Systemowych

Tę opcję można włączyć lub wyłączyć za pomocą właściwości [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/). Gdy ta właściwość jest ustawiona na [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), czcionki true type "Arial" i "Times New Roman" nie są osadzane w dokumencie PDF. W takim przypadku przeglądarka klienta opiera się na czcionkach zainstalowanych w systemie operacyjnym klienta. Gdy właściwość **FontEmbeddingMode** jest ustawiona na [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), Aspose.Words nie osadzaj żadnych czcionek.

Poniższy przykład pokazuje, jak ustawić Aspose.Words, aby pominąć osadzanie czcionek Arial i Times New Roman w dokumencie PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

Ten tryb jest najbardziej przydatny, gdy chcesz przeglądać dokumenty na tej samej platformie, zachowując dokładny wygląd czcionek na wyjściu PDF.

{{% alert color="primary" %}}

To ustawienie działa tylko dlaANSI (Windows-1252) kodowania tekstu. Pisanie tekstu innego niżANSI do PDF wymaga osadzenia odpowiedniej czcionki.

{{% /alert %}}
