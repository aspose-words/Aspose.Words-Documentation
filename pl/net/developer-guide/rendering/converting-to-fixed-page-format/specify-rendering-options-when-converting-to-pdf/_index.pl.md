---
title: Opcje podczas konwersji do formatu PDF
second_title: Aspose.Words dla .NET
articleTitle: Określ opcje renderowania podczas konwersji do formatu PDF
linktitle: Określ opcje renderowania podczas konwersji do formatu PDF
description: "Konwertuj dokument na format PDF za pomocą zaawansowanych opcji za pomocą C#. Konwertuj formularze DOCX na format PDF C#. Użyj opcji PdfSaveOptions, aby zmienić wynik zapisania dokumentu w formacie PDF."
type: docs
weight: 20
url: /pl/net/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Format PDF to format o stałej stronie, który jest bardzo popularny wśród użytkowników i szeroko obsługiwany przez różne aplikacje, ponieważ dokument PDF wygląda tak samo na każdym urządzeniu. Z tego powodu konwersja do formatu PDF jest ważną funkcją Aspose.Words.

PDF to złożony format. W procesie konwersji dokumentu do formatu PDF wymaganych jest kilka etapów obliczeń, w tym obliczenie układu. Ponieważ etapy te obejmują złożone obliczenia, są one czasochłonne. Ponadto format PDF sam w sobie jest dość skomplikowany. Ma specyficzną strukturę plików, model graficzny i osadzanie czcionek. Ponadto oferuje złożone funkcje wyjściowe, takie jak znaczniki struktury dokumentu, szyfrowanie, podpisy cyfrowe i formularze edytowalne.

Silnik układu Aspose.Words imituje sposób działania silnika układu strony Microsoft Word. Dlatego Aspose.Words sprawia, że dokumenty wyjściowe PDF wyglądają jak najbliżej tego, co można zobaczyć w formacie Microsoft Word. Czasami konieczne jest określenie dodatkowych opcji, które mogą mieć wpływ na wynik zapisu dokumentu w formacie PDF. Opcje te można określić za pomocą klasy [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) zawierającej właściwości określające sposób wyświetlania pliku wyjściowego PDF.

Poniżej podano kilka przykładów użycia **PdfSaveOptions**.

{{% alert color="primary" %}}

Obecnie można zapisywać w formatach PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u i PDF/UA-1. Użyj wyliczenia [PdfCompliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/), aby ustawić poziom zgodności ze standardami PDF. Należy pamiętać, że w przypadku formatu PDF/A rozmiar pliku wyjściowego jest większy niż rozmiar zwykłego pliku PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) i [PdfCompliance.PdfA1b](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) są oznaczone jako przestarzałe.

Więcej informacji na temat formatu PDF/A można znaleźć w następnym artykule "Poznaj funkcje konwersji do formatu PDF/A".

{{% /alert %}}

## Tworzenie dokumentu PDF z formularzami do wypełnienia

Możliwe jest również eksportowanie formularzy do wypełnienia z dokumentu Microsoft Word do wyjściowego pliku PDF, który zamiast zwykłego tekstu zawiera formularze do wypełnienia. Użyj właściwości [PreserveFormFields](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/preserveformfields/), aby zapisać dokument w formacie PDF z formularzami do wypełnienia.

Należy pamiętać, że w przeciwieństwie do Microsoft Word, format PDF ma ograniczoną liczbę opcji edytowalnych formularzy, takich jak pole tekstowe, pole kombi i pole wyboru. Microsoft Word zawiera więcej typów formularzy, na przykład selektor dat kalendarza. Ogólnie rzecz biorąc, nie jest możliwe pełne imitowanie zachowania Microsoft Word w formacie PDF. Dlatego w niektórych skomplikowanych przypadkach wynik w formacie PDF może różnić się od tego, co widzisz w Microsoft Word.

Poniższy przykład kodu pokazuje, jak zapisać dokument w formacie PDF z formularzami do wypełnienia z określoną kompresją i jakością Jpeg:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageCompression.cs" >}}

## Eksportowanie struktury dokumentu i właściwości niestandardowych

Właściwość [https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/properties/exportdocumentstructure) umożliwia eksport struktury dokumentu do pliku PDF.

Funkcje struktury logicznej PDF zapewniają mechanizm włączania informacji dotyczących struktury zawartości dokumentu do pliku PDF. Aspose.Words zachowuje informacje o strukturze z dokumentu Microsoft Word, takie jak akapity, listy, tabele, przypisy/przypisy końcowe itp.

Poniższy przykład pokazuje, jak zapisać dokument w formacie PDF, zachowując strukturę dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cs" >}}

Aspose.Words umożliwia także eksport niestandardowych właściwości dokumentu do formatu PDF, co ilustruje poniższy przykład:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cs" >}}

## Eksportowanie konturów z zakładek i nagłówków w wyjściowym pliku PDF

Jeśli chcesz wyeksportować zakładki jako kontury w wyjściowym pliku PDF, możesz użyć właściwości [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/). Właściwość ta określa domyślny poziom w konspekcie dokumentu, na którym wyświetlane są zakładki Microsoft Word. Jeśli dokument zawiera zakładki w nagłówku/stopce dokumentu, możesz ustawić właściwość [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) na [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) lub [All](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/), aby określić sposób ich eksportowania do wyjściowego pliku PDF. Zakładki w nagłówkach/stopkach nie są eksportowane, gdy wartość **HeaderFooterBookmarksExportMode** to [None](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/).

Poniższy przykład kodu pokazuje, jak wyeksportować zakładki z pierwszego nagłówka/stopki sekcji:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cs" >}}

Wyjściowy plik PDF tego przykładu pokazano poniżej:

![specify-rendering-options-when-converting-to-pdf_1](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Jeśli **HeaderFooterBookmarksExportMode** jest ustawiony na [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) i dokument ma parzyste i nieparzyste nagłówki/stopki lub inny nagłówek/stopkę pierwszej strony, zakładki są eksportowane dla pierwszych unikalnych nagłówków/stopek w sekcji.

Możesz także eksportować nagłówki do wyjściowego pliku PDF, korzystając z właściwości [HeadingsOutlineLevels](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/). Ta właściwość określa, ile poziomów nagłówków znajduje się w konspekcie dokumentu.

Poniższy przykład kodu pokazuje, jak eksportować nagłówki z trzema poziomami:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cs" >}}

Wyjściowy plik PDF tego przykładu przedstawiono poniżej:

![specify-rendering-options-when-converting-to-pdf_2](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Nawigacja po zakładkach lub nagłówkach może mieć różny wygląd w różnych przeglądarkach plików PDF. Co więcej, w niektórych aplikacjach zakładki i nawigacja po nagłówkach nie są dostępne w interfejsie użytkownika.

{{% /alert %}}

## Próbkowanie obrazów w dół w celu zmniejszenia rozmiaru dokumentu

Aspose.Words zapewnia możliwość próbkowania obrazów w dół w celu zmniejszenia rozmiaru wyjściowego pliku PDF przy użyciu właściwości [DownsampleOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/). Próbkowanie w dół jest domyślnie włączone we właściwości [DownsampleImages](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/downsampleimages/).

Należy pamiętać, że możliwe jest również ustawienie określonej rozdzielczości we właściwości [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/) lub progu rozdzielczości we właściwości [ResolutionThreshold](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/threshold). W drugim przypadku, jeśli rozdzielczość obrazu będzie mniejsza od wartości progowej, wówczas downsampling nie zostanie zastosowany.

Poniższy przykład kodu pokazuje, jak zmienić rozdzielczość obrazów w wyjściowym dokumencie PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cs" >}}

Rozdzielczość jest obliczana na podstawie rzeczywistego rozmiaru obrazu na stronie.

## Osadzanie czcionek w formacie Adobe PDF

Aspose.Words umożliwia także kontrolowanie sposobu osadzania czcionek w wynikowych dokumentach PDF. Czcionki muszą być osadzone w dowolnym dokumencie Adobe PDF, aby zapewnić prawidłowe renderowanie dokumentu na dowolnym komputerze (więcej szczegółów na temat renderowania czcionek można znaleźć w sekcji [Korzystanie z czcionek TrueType](/words/pl/net/using-truetype-fonts/)). Domyślnie Aspose.Words osadza podzbiór czcionek używanych w dokumencie w wygenerowanym pliku PDF. W takim przypadku w formacie PDF zapisywane są wyłącznie pliki glyph (znaki) użyte w dokumencie.

### Kiedy używać pełnych czcionek i kiedy podzbiór

Istnieje sposób, aby określić opcję osadzania pełnych czcionek w Aspose.Words. Dalsze szczegóły oraz niektóre zalety i wady każdego ustawienia opisano w poniższej tabeli.

| Tryb osadzania czcionek |  Zalety | Niedogodności |
|  :-  |  :-  |  :-  |
|  `Full`  | Przydatne, gdy chcesz później edytować wynikowy plik PDF, dodając lub modyfikując tekst. Wszystkie czcionki są uwzględnione, dlatego obecne są wszystkie pliki glyph. | Ponieważ niektóre czcionki są duże (kilka megabajtów), osadzanie ich bez podziału na podzbiory może skutkować powstaniem dużych plików wyjściowych. |
|  `Subset`  | Podzbiór jest przydatny, jeśli chcesz zachować mniejszy rozmiar pliku wyjściowego. | <p>Użytkownik nie może w pełni dodawać ani edytować tekstu przy użyciu czcionki podustawionej w wyjściowym dokumencie PDF. Dzieje się tak, ponieważ nie wszystkie pliki glyph czcionki są obecne.</p>

<p>Jeśli zapisano wiele plików PDF z podzestawami czcionek i złożono je razem, wówczas połączony dokument PDF może zawierać czcionkę zawierającą wiele niepotrzebnych podzbiorów.</p> |

### Osadzanie pełnych czcionek w formacie PDF

Właściwość [EmbedFullFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/) umożliwia określenie sposobu, w jaki Aspose.Words osadza czcionki w wyjściowym dokumencie PDF.

- Aby osadzić pełne czcionki w wyjściowym dokumencie PDF, ustaw **EmbedFullFonts** na true
- Aby ustawić podzbiór czcionek podczas zapisywania w formacie PDF, ustaw **EmbedFullFonts** na false

Poniższy przykład ilustruje sposób osadzania pełnych czcionek w wyjściowym dokumencie PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cs" >}}

Poniższy przykład ilustruje sposób ustawienia Aspose.Words w celu podzbioru czcionek w wyjściowym pliku PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cs" >}}

{{% alert color="primary" %}}

Plik szablonu tych przykładów można pobrać z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Jak kontrolować osadzanie czcionek podstawowych i standardowych czcionek Windows

Czcionki podstawowe i czcionki Windows Standard to "standardowe" zestawy czcionek, które zwykle znajdują się na komputerze docelowym lub są dostarczane przez czytnik dokumentów, dlatego nie muszą być osadzane w wyjściowym pliku PDF. Nie osadzając tych czcionek, można zmniejszyć rozmiar renderowanych dokumentów PDF, zachowując jednocześnie przenośność.

Aspose.Words udostępnia opcje wyboru sposobu eksportowania czcionek do formatu PDF. Możesz osadzić podstawowe i standardowe czcionki w wyjściowym pliku PDF lub pominąć ich osadzanie i zamiast tego użyć standardowych podstawowych czcionek PDF lub czcionek systemowych na komputerze docelowym. Użycie którejkolwiek z tych opcji zwykle powoduje znaczne zmniejszenie rozmiaru pliku dokumentów PDF generowanych przez Aspose.Words.

- Ponieważ te opcje wzajemnie się wykluczają, należy wybierać tylko jedną na raz.
- Podczas zapisywania zgodnie ze standardem PDF/A-1 wszystkie użyte czcionki muszą być osadzone w dokumencie PDF. Podczas zapisywania z tą zgodnością właściwość [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) musi być ustawiona na false, a właściwość [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) musi być ustawiona na [EmbedAll](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/).

### Osadzanie podstawowych czcionek

Opcję osadzania czcionek Core można włączyć lub wyłączyć za pomocą właściwości [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/). Jeśli jest ustawiona na true, następujące najpopularniejsze czcionki "True Type" (czcionki Base 14) nie są osadzane w wyjściowym dokumencie PDF:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Czcionki te są zastępowane odpowiednimi czcionkami podstawowymi typu 1, które są dostarczane przez czytnik po otwarciu pliku PDF.

Poniższy przykład pokazuje, jak ustawić Aspose.Words, aby uniknąć osadzania podstawowych czcionek i pozwolić czytelnikowi zastąpić je czcionkami PDF Type 1:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu dla tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Ponieważ przeglądarki plików PDF udostępniają podstawowe czcionki na dowolnej obsługiwanej platformie, opcja ta jest również przydatna, gdy wymagana jest większa przenośność dokumentów. Jednak podstawowe czcionki mogą wyglądać inaczej niż czcionki systemowe.

{{% alert color="primary" %}}

To ustawienie działa tylko w przypadku tekstu kodowanego w standardzie ANSI (Windows-1252). Zapisanie tekstu innego niż ANSI w formacie PDF zawsze będzie wymagało osadzenia odpowiednich czcionek.

{{% /alert %}}

### Osadzanie czcionek systemowych

Tę opcję można włączyć lub wyłączyć za pomocą właściwości [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/). Jeśli ta właściwość jest ustawiona na [EmbedNonstandard](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), czcionki typu true "Arial" i "Times New Roman" nie są osadzane w dokumencie PDF. W tym przypadku przeglądarka kliencka korzysta z czcionek zainstalowanych w systemie operacyjnym klienta. Gdy właściwość **FontEmbeddingMode** jest ustawiona na [EmbedNone](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), Aspose.Words nie osadza żadnych czcionek.

Poniższy przykład pokazuje, jak ustawić Aspose.Words tak, aby pomijał osadzanie czcionek Arial i Times New Roman w dokumencie PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cs" >}}

Ten tryb jest najbardziej przydatny, gdy chcesz przeglądać dokumenty na tej samej platformie, zachowując dokładny wygląd czcionek w wyjściowym pliku PDF.

{{% alert color="primary" %}}

To ustawienie działa tylko w przypadku tekstu kodowanego w standardzie ANSI (Windows-1252). Zapisanie tekstu innego niż ANSI w formacie PDF wymaga osadzenia odpowiedniej czcionki.

{{% /alert %}}
