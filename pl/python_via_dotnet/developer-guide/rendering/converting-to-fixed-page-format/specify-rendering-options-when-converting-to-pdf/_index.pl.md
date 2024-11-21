---
title: Opcje podczas konwersji do formatu PDF
second_title: Aspose.Words dla Python via .NET
articleTitle: Określ opcje renderowania podczas konwersji do formatu PDF
linktitle: Określ opcje renderowania podczas konwersji do formatu PDF
description: "Konwertuj dokument do formatu PDF za pomocą zaawansowanych opcji za pomocą Python. Użyj opcji PdfSaveOptions, aby zmienić wynik zapisu dokumentu do formatu PDF."
type: docs
weight: 20
url: /pl/python-net/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Format PDF to format o stałej stronie, który jest bardzo popularny wśród użytkowników i szeroko obsługiwany przez różne aplikacje, ponieważ dokument PDF wygląda tak samo na każdym urządzeniu. Z tego powodu konwersja do formatu PDF jest ważną funkcją Aspose.Words.

PDF to złożony format. W procesie konwersji dokumentu do formatu PDF wymaganych jest kilka etapów obliczeń, w tym obliczenie układu. Ponieważ etapy te obejmują złożone obliczenia, są one czasochłonne. Ponadto format PDF sam w sobie jest dość skomplikowany. Ma specyficzną strukturę plików, model graficzny i osadzanie czcionek. Ponadto oferuje złożone funkcje wyjściowe, takie jak znaczniki struktury dokumentu, szyfrowanie, podpisy cyfrowe i formularze edytowalne.

Silnik układu Aspose.Words imituje sposób działania silnika układu strony Microsoft Word. Dlatego Aspose.Words sprawia, że dokumenty wyjściowe PDF wyglądają jak najbliżej tego, co można zobaczyć w formacie Microsoft Word. Czasami konieczne jest określenie dodatkowych opcji, które mogą mieć wpływ na wynik zapisu dokumentu w formacie PDF. Opcje te można określić za pomocą klasy [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) zawierającej właściwości określające sposób wyświetlania pliku wyjściowego PDF.

Poniżej podano kilka przykładów użycia [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/).

{{% alert color="primary" %}}

Obecnie można także zapisywać w formatach PDF/A-1 i PDF/A-2. Należy pamiętać, że w przypadku formatu PDF/A rozmiar pliku wyjściowego jest większy niż rozmiar zwykłego pliku PDF.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) i [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) są oznaczone jako przestarzałe.

Więcej informacji na temat formatu PDF/A można znaleźć w następnym artykule "Poznaj funkcje konwersji do formatu PDF/A".

{{% /alert %}}

## Tworzenie dokumentu PDF z formularzami do wypełnienia

Możliwe jest również eksportowanie formularzy do wypełnienia z dokumentu Microsoft Word do wyjściowego pliku PDF, który zamiast zwykłego tekstu zawiera formularze do wypełnienia. Użyj właściwości [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/), aby zapisać dokument w formacie PDF z formularzami do wypełnienia.

Należy pamiętać, że w przeciwieństwie do Microsoft Word, format PDF ma ograniczoną liczbę opcji edytowalnych formularzy, takich jak pole tekstowe, pole kombi i pole wyboru. Microsoft Word zawiera więcej typów formularzy, na przykład selektor dat kalendarza. Ogólnie rzecz biorąc, nie jest możliwe pełne imitowanie zachowania Microsoft Word w formacie PDF. Dlatego w niektórych skomplikowanych przypadkach wynik w formacie PDF może różnić się od tego, co widzisz w Microsoft Word.

Poniższy przykład kodu pokazuje, jak zapisać dokument w formacie PDF z formularzami do wypełnienia z określoną kompresją i jakością Jpeg:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## Eksportowanie struktury dokumentu i właściwości niestandardowych

Właściwość [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) umożliwia eksport struktury dokumentu do formatu PDF.

Funkcje struktury logicznej PDF zapewniają mechanizm włączania informacji dotyczących struktury zawartości dokumentu do pliku PDF. Aspose.Words zachowuje informacje o strukturze z dokumentu Microsoft Word, takie jak akapity, listy, tabele, przypisy/przypisy końcowe itp.

Poniższy przykład pokazuje, jak zapisać dokument w formacie PDF, zachowując strukturę dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words umożliwia także eksport niestandardowych właściwości dokumentu do formatu PDF, co ilustruje poniższy przykład:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## Eksportowanie konturów z zakładek i nagłówków w wyjściowym pliku PDF

Jeśli chcesz wyeksportować zakładki jako kontury w wyjściowym pliku PDF, możesz użyć właściwości [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/). Właściwość ta określa domyślny poziom w konspekcie dokumentu, na którym wyświetlane są zakładki Microsoft Word. Jeśli dokument zawiera zakładki w nagłówku/stopce dokumentu, możesz ustawić właściwość [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) na [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) lub [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all), aby określić sposób ich eksportowania do wyjściowego pliku PDF. Zakładki w nagłówkach/stopkach nie są eksportowane, jeśli wartość [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) to [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none).

Poniższy przykład kodu pokazuje, jak wyeksportować zakładki z pierwszego nagłówka/stopki sekcji:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

Wyjściowy plik PDF tego przykładu pokazano poniżej:

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Jeśli [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) jest ustawiony na [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) i dokument ma parzyste i nieparzyste nagłówki/stopki lub inny nagłówek/stopkę pierwszej strony, zakładki są eksportowane dla pierwszych unikalnych nagłówków/stopek w sekcji.

Możesz także eksportować nagłówki do wyjściowego pliku PDF, korzystając z właściwości [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/). Ta właściwość określa, ile poziomów nagłówków znajduje się w konspekcie dokumentu.

Poniższy przykład kodu pokazuje, jak eksportować nagłówki z trzema poziomami:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

Wyjściowy plik PDF tego przykładu przedstawiono poniżej:

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Nawigacja po zakładkach lub nagłówkach może mieć różny wygląd w różnych przeglądarkach plików PDF. Co więcej, w niektórych aplikacjach zakładki i nawigacja po nagłówkach nie są dostępne w interfejsie użytkownika.

{{% /alert %}}

## Próbkowanie obrazów w dół w celu zmniejszenia rozmiaru dokumentu

Aspose.Words zapewnia możliwość próbkowania obrazów w dół w celu zmniejszenia rozmiaru wyjściowego pliku PDF przy użyciu właściwości [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/). Próbkowanie w dół jest domyślnie włączone we właściwości [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/).

Należy pamiętać, że możliwe jest również ustawienie określonej rozdzielczości we właściwości [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/) lub progu rozdzielczości we właściwości [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/). W drugim przypadku, jeśli rozdzielczość obrazu będzie mniejsza od wartości progowej, wówczas downsampling nie zostanie zastosowany.

Poniższy przykład kodu pokazuje, jak zmienić rozdzielczość obrazów w wyjściowym dokumencie PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

Rozdzielczość jest obliczana na podstawie rzeczywistego rozmiaru obrazu na stronie.

## Osadzanie czcionek w formacie Adobe PDF

Aspose.Words umożliwia także kontrolowanie sposobu osadzania czcionek w wynikowych dokumentach PDF. Czcionki muszą być osadzone w dowolnym dokumencie Adobe PDF, aby zapewnić prawidłowe renderowanie dokumentu na dowolnym komputerze (więcej szczegółów na temat renderowania czcionek można znaleźć w sekcji [Korzystanie z czcionek TrueType](/words/pl/python-net/using-truetype-fonts/)). Domyślnie Aspose.Words osadza podzbiór czcionek używanych w dokumencie w wygenerowanym pliku PDF. W takim przypadku w formacie PDF zapisywane są wyłącznie pliki glyph (znaki) użyte w dokumencie.

### Kiedy używać pełnych czcionek i kiedy podzbiór

Istnieje sposób, aby określić opcję osadzania pełnych czcionek w Aspose.Words. Dalsze szczegóły oraz niektóre zalety i wady każdego ustawienia opisano w poniższej tabeli.

| Tryb osadzania czcionek |  Zalety | Niedogodności |
|  :-  |  :-  |  :-  |
|  `Full`  | Przydatne, gdy chcesz później edytować wynikowy plik PDF, dodając lub modyfikując tekst. Wszystkie czcionki są uwzględnione, dlatego obecne są wszystkie pliki glyph. | Ponieważ niektóre czcionki są duże (kilka megabajtów), osadzanie ich bez podziału na podzbiory może skutkować powstaniem dużych plików wyjściowych. |
|  `Subset`  | Podzbiór jest przydatny, jeśli chcesz zachować mniejszy rozmiar pliku wyjściowego. | <p>Użytkownik nie może w pełni dodawać ani edytować tekstu przy użyciu czcionki podustawionej w wyjściowym dokumencie PDF. Dzieje się tak, ponieważ nie wszystkie pliki glyph czcionki są obecne.</p>

<p>Jeśli zapisano wiele plików PDF z podzestawami czcionek i złożono je razem, wówczas połączony dokument PDF może zawierać czcionkę zawierającą wiele niepotrzebnych podzbiorów.</p> |

### Osadzanie pełnych czcionek w formacie PDF

Właściwość [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) umożliwia określenie sposobu, w jaki Aspose.Words osadza czcionki w wyjściowym dokumencie PDF.

- Aby osadzić pełne czcionki w wyjściowym dokumencie PDF, ustaw [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) na *True*
- Aby ustawić podzbiór czcionek podczas zapisywania w formacie PDF, ustaw [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) na *False*

Poniższy przykład ilustruje sposób osadzania pełnych czcionek w wyjściowym dokumencie PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

Poniższy przykład ilustruje sposób ustawienia Aspose.Words w celu podzbioru czcionek w wyjściowym pliku PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

Plik szablonu tych przykładów można pobrać z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Jak kontrolować osadzanie czcionek podstawowych i standardowych czcionek Windows

Czcionki podstawowe i czcionki Windows Standard to "standardowe" zestawy czcionek, które zwykle znajdują się na komputerze docelowym lub są dostarczane przez czytnik dokumentów, dlatego nie muszą być osadzane w wyjściowym pliku PDF. Nie osadzając tych czcionek, można zmniejszyć rozmiar renderowanych dokumentów PDF, zachowując jednocześnie przenośność.

Aspose.Words udostępnia opcje wyboru sposobu eksportowania czcionek do formatu PDF. Możesz osadzić podstawowe i standardowe czcionki w wyjściowym pliku PDF lub pominąć ich osadzanie i zamiast tego użyć standardowych podstawowych czcionek PDF lub czcionek systemowych na komputerze docelowym. Użycie którejkolwiek z tych opcji zwykle powoduje znaczne zmniejszenie rozmiaru pliku dokumentów PDF generowanych przez Aspose.Words.

- Ponieważ te opcje wzajemnie się wykluczają, należy wybierać tylko jedną na raz.
- Podczas zapisywania zgodnie ze standardem PDF/A-1 wszystkie użyte czcionki muszą być osadzone w dokumencie PDF. Podczas zapisywania z tą zgodnością właściwość [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) musi być ustawiona na *False*, a właściwość [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) musi być ustawiona na [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all).

### Osadzanie podstawowych czcionek

Opcję osadzania czcionek Core można włączyć lub wyłączyć za pomocą właściwości [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/). Jeśli jest ustawiona na true, następujące najpopularniejsze czcionki "True Type" (czcionki Base 14) nie są osadzane w wyjściowym dokumencie PDF:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Czcionki te są zastępowane odpowiednimi czcionkami podstawowymi typu 1, które są dostarczane przez czytnik po otwarciu pliku PDF.

Poniższy przykład pokazuje, jak ustawić Aspose.Words, aby uniknąć osadzania podstawowych czcionek i pozwolić czytelnikowi zastąpić je czcionkami PDF Type 1:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu dla tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Ponieważ przeglądarki plików PDF udostępniają podstawowe czcionki na dowolnej obsługiwanej platformie, opcja ta jest również przydatna, gdy wymagana jest większa przenośność dokumentów. Jednak podstawowe czcionki mogą wyglądać inaczej niż czcionki systemowe.

{{% alert color="primary" %}}

To ustawienie działa tylko w przypadku tekstu kodowanego w standardzie ANSI (Windows-1252). Zapisanie tekstu innego niż ANSI w formacie PDF zawsze będzie wymagało osadzenia odpowiednich czcionek.

{{% /alert %}}

### Osadzanie czcionek systemowych

Tę opcję można włączyć lub wyłączyć za pomocą [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/). Jeśli ta właściwość jest ustawiona na [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard), czcionki typu true "Arial" i "Times New Roman" nie są osadzane w dokumencie PDF. W tym przypadku przeglądarka kliencka korzysta z czcionek zainstalowanych w systemie operacyjnym klienta. Gdy właściwość [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) jest ustawiona na [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none), Aspose.Words nie osadza żadnych czcionek.

Poniższy przykład pokazuje, jak ustawić Aspose.Words tak, aby pomijał osadzanie czcionek Arial i Times New Roman w dokumencie PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

Ten tryb jest najbardziej przydatny, gdy chcesz przeglądać dokumenty na tej samej platformie, zachowując dokładny wygląd czcionek w wyjściowym pliku PDF.

{{% alert color="primary" %}}

To ustawienie działa tylko w przypadku tekstu kodowanego w standardzie ANSI (Windows-1252). Zapisanie tekstu innego niż ANSI w formacie PDF wymaga osadzenia odpowiedniej czcionki.

{{% /alert %}}
