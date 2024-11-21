---
title: Określ opcje renderowania podczas konwersji na PDF
second_title: Aspose.Words zamiast Java
articleTitle: Określ opcje renderowania podczas konwersji na PDF
linktitle: Określ opcje renderowania podczas konwersji na PDF
description: "Konwersja dokumentu do PDF z zaawansowanych opcji. Użyj PdfSaveOptions, aby zmienić wynik zapisu dokumentu do formatu PDF za pomocą Java."
type: docs
weight: 20
url: /pl/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Format PDF to format fixed-page, który jest bardzo popularny wśród użytkowników i szeroko wspierany przez różne aplikacje, ponieważ dokument PDF wygląda tak samo na dowolnym urządzeniu. Z tego powodu przekształcenie w PDF jest ważną cechą Aspose.Words.

PDF to skomplikowany format. W procesie konwersji dokumentu na PDF wymagane jest kilka etapów obliczeń, w tym obliczenia układu. Ponieważ etapy te obejmują skomplikowane obliczenia, są czasochłonne. Ponadto format PDF jest raczej złożony sam w sobie. Posiada specyficzną strukturę pliku, model graficzny i wbudowaną czcionkę. Ponadto posiada on pewną skomplikowaną funkcjonalność wyjściową, taką jak znaczniki struktury dokumentów, szyfrowanie, podpisy cyfrowe i edytowalne formularze.

Aspose.Words układ silnika imituje sposób Microsoft Wordukład strony działa. Dlatego też Aspose.Words sprawia, że dokumenty wyjściowe PDF wyglądają jak najbliżej tego, co można zobaczyć w Microsoft Word. Czasami konieczne jest określenie dodatkowych opcji, które mogą mieć wpływ na wynik zapisu dokumentu do formatu PDF. Opcje te można określić za pomocą [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) klasa, zawierająca właściwości określające sposób wyświetlania wyjścia PDF.

Przykłady stosowania **PdfSaveOptions** są przedstawione poniżej.

{{% alert color="primary" %}}

Obecnie można zapisać do formatu PDF 1.7, PDF 2.0, PDF / A- 1a, PDF / A- 1b, PDF / A- 2a, PDF / A- 2u oraz PDF / UA-1. Użyj [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) wyliczenie poziomu zgodności z standardami PDF. Zauważ, że w formacie PDF / A rozmiar pliku wyjściowego jest większy niż zwykły rozmiar pliku PDF.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) oraz [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) są oznaczone jako przestarzałe.

Więcej informacji na temat PDF / A znajduje się w następnym artykule "Ucz się funkcji konwersji na PDF / A".

{{% /alert %}}

## Tworzenie pliku PDF Dokument z formularzami wypełnialnymi

Można również eksportować wypełnialne formularze z Microsoft Word dokument do wyjścia PDF, który ma wypełnialne formy zamiast zwykłego tekstu. Użyj [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) właściwość do zapisu dokumentu w formacie PDF z wypełnialnymi formularzami.

Należy zauważyć, że w przeciwieństwie do <span notrans="<span notrans=" Microsoft Word"=""></span>", > format PDF ma ograniczoną liczbę opcji dla edytowalnych formularzy, takich jak textbox, combo box i opcja. Microsoft Word posiada więcej rodzajów formularzy, na przykład, znacznik daty kalendarza. Ogólnie rzecz biorąc, nie jest możliwe pełne naśladowanie Microsoft Word zachowanie w formacie PDF. Dlatego w niektórych złożonych przypadkach wyjście PDF może różnić się od tego, co widać w Microsoft Word.

Poniższy przykład kodu pokazuje, jak zapisać dokument w formacie PDF z wypełnialnymi formatami z określoną kompresją i jakością Jpeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Eksportowanie struktury i właściwości dokumentu

W [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) właściwość pozwala na eksport struktury dokumentu do wyjścia PDF.

Obiekty struktury logicznej PDF zapewniają mechanizm włączania informacji dotyczących struktury treści dokumentu do pliku PDF. Aspose.Words zachowuje informacje o strukturze z Microsoft Word dokument, taki jak paragrafy, listy, tabele, przypisy / noty końcowe itp.

Poniższy przykład pokazuje, jak zapisać dokument do formatu PDF, zachowując strukturę dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words pozwala również eksportować niestandardowe właściwości dokumentu do PDF, co pokazuje następujący przykład:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Eksportowanie Outlines z zakładek i nagłówków w formacie PDF

Jeśli chcesz eksportować zakładki w formacie PDF, możesz użyć [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) nieruchomości. Ta właściwość określa domyślny poziom w zarysie dokumentu, na którym Microsoft Word są wyświetlane zakładki. Jeśli dokument zawiera zakładki w nagłówku / stopce dokumentu, można ustawić [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) nieruchomości [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) lub [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) w celu określenia sposobu ich eksportu w formacie PDF. Zakładki w nagłówkach / stopkach nie są eksportowane, gdy wartość **HeaderFooterBookmarksExportMode** en [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

Poniższy przykład kodu pokazuje jak eksportować zakładki z pierwszego nagłówka / stopki sekcji:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

Wyjście PDF tego przykładu jest pokazane poniżej:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Kiedy **HeaderFooterBookmarksExportMode** jest ustawiony na [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) i dokument ma parzyste i nieparzyste nagłówki / stopy lub inne nagłówki / stopy pierwszej strony, zakładki są eksportowane dla pierwszych unikalnych nagłówków / stóp w sekcji.

Można również eksportować nagłówki w formacie PDF, używając [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) nieruchomości. Ta właściwość określa, ile poziomów nagłówków znajduje się w zarysie dokumentu.

Poniższy przykład kodu pokazuje jak eksportować pozycje z trzema poziomami:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

Wyjście PDF tego przykładu przedstawia się poniżej:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Zakładka lub nawigacja nagłówek mogą mieć różne występy w różnych widzów PDF. Ponadto w niektórych aplikacjach zakładki i nawigacja nagłówkowa nie są dostępne w UI.

{{% /alert %}}

## Pobieranie próbek Obrazy do zmniejszenia rozmiaru dokumentu

Aspose.Words zapewnia możliwość pobierania próbek obrazów w celu zmniejszenia wielkości wyjścia PDF, za pomocą [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) nieruchomości. Pobieranie próbek jest domyślnie włączone w [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) nieruchomości.

Należy zauważyć, że możliwe jest również ustalenie określonej rozdzielczości w [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) nieruchomości lub progu restrukturyzacji i uporządkowanej likwidacji w [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) nieruchomości. W drugim przypadku, jeżeli rozdzielczość obrazu jest mniejsza niż wartość progowa, to pobieranie próbek w dół nie będzie miało zastosowania.

Poniższy przykład kodu pokazuje jak zmienić rozdzielczość obrazów w dokumencie PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

Rozdzielczość jest obliczana według rzeczywistego rozmiaru obrazu na stronie.

## Wszywanie Czcionki w Adobe PDF Format

Aspose.Words pozwala również kontrolować sposób osadzania czcionek w dokumentach PDF. Czcionki muszą być wbudowane w dowolny dokument Adobe PDF w celu zapewnienia, że dokument może być prawidłowo renderowany na dowolnej maszynie (więcej szczegółów dotyczących renderowania czcionki w sekcji [Korzystanie z True Czcionki typu](/words/pl/java/using-truetype-fonts/)). Domyślnie, Aspose.Words osadza podzbiór czcionek używanych w dokumencie w wygenerowanym formacie PDF. W tym przypadku, tylko glyphs (znaki) używane w dokumencie są zapisywane w formacie PDF.

### Kiedy używać pełnych czcionek i kiedy podłączyć

Istnieje sposób na określenie opcji dla Aspose.Words aby osadzić pełne czcionki. Dalsze szczegóły wraz z pewnymi zaletami i wadami każdego ustawienia opisano w poniższej tabeli.

| Zamieść tryb czcionek |  Korzyści | Uszkodzenia |
|  :-  |  :-  |  :-  |
|  `Full`  | Przydatne, gdy chcesz edytować otrzymany PDF później, dodając lub modyfikując tekst. Wszystkie czcionki są włączone, stąd wszystkie glyphs są obecne. | Ponieważ niektóre czcionki są duże (kilka megabajtów), osadzanie ich bez zastępowania może skutkować dużymi plikami wyjściowymi. |
|  `Subset`  | Subsetting jest przydatny, jeśli chcesz zmniejszyć rozmiar pliku wyjściowego. | <p>Użytkownik nie może w pełni dodać lub edytować tekstu używając poddanej czcionki w dokumencie PDF. To dlatego, że nie wszystkie glyphs czcionki są obecne.</p>

<p>Jeżeli wiele plików PDF jest zapisywanych z podsetowanymi czcionkami i połączonych razem, to łączony dokument PDF może mieć czcionkę zawierającą wiele niepotrzebnych podzbiorów.</p>
 |

### Wkrywanie pełnych fontów w formacie PDF

W [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) właściwość pozwala określić jak Aspose.Words osadza czcionki w formacie PDF.

- Aby umieścić pełne czcionki w dokumencie wyjścia PDF, ustawić **EmbedFullFonts** do true
- Aby podłączyć czcionki podczas zapisywania do PDF, ustaw **EmbedFullFonts** do false

Poniższy przykład pokazuje jak osadzić pełne czcionki w dokumencie wyjścia PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

Poniższy przykład pokazuje jak ustawić Aspose.Words do podzlecania czcionek w formacie PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu dla tych przykładów z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Jak kontrolować osadzanie podstawowych fontów i Windows Czcionki standardowe

Czcionki bazowe oraz Windows Czcionki standardowe to "standardowe" zestawy czcionek, które są zazwyczaj obecne na maszynie docelowej lub dostarczane przez czytnik dokumentów, dlatego nie muszą być wbudowane w wyjście PDF. Nie osadzając tych czcionek, możesz zmniejszyć rozmiar renderowanych dokumentów PDF i utrzymać możliwość przenoszenia.

Aspose.Words oferuje opcje wyboru sposobu eksportu czcionek do PDF. Można wybrać albo umieścić core i standardowe czcionki do wyjścia PDF lub pominąć osadzanie ich i używać standardowych core PDF czcionki lub czcionki systemowe na maszyny docelowej zamiast. Korzystanie z jednej z tych opcji zazwyczaj powoduje znaczne zmniejszenie rozmiaru pliku dla dokumentów PDF generowanych przez Aspose.Words.

- Ponieważ opcje te wzajemnie się wykluczają, należy wybrać tylko jeden na raz.
- Podczas zapisywania przy zgodności PDF / A-1 wszystkie używane czcionki muszą być wbudowane w dokument PDF. Podczas oszczędzania z tej zgodności, [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) nieruchomość musi być ustawiona na false oraz [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) nieruchomość musi być ustawiona na [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Osadzanie fontów podstawowych

Opcja osadzania czcionek core może być włączona lub wyłączona za pomocą [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) nieruchomości. Kiedy jest ustawiony true, następujące najpopularniejsze czcionki "True Type" (Czcionki bazowe 14) nie są osadzone w dokumencie wyjściowym PDF:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Czcionki te zastępuje się odpowiadającymi im podstawowymi czcionkami typu 1, które są dostarczane przez czytelnika po otwarciu PDF.

Przykład podany poniżej pokazuje jak ustawić Aspose.Words aby uniknąć osadzania podstawowych czcionek i pozwolić czytelnikowi zastąpić je PDF Czcionki typu 1:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu dla tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Ponieważ widzowie PDF udostępniają podstawowe czcionki na każdej obsługiwanej platformie, opcja ta jest również przydatna, gdy wymagana jest większa przenośność dokumentów. Czcionki rdzeniowe mogą jednak wyglądać inaczej niż czcionki systemowe.

{{% alert color="primary" %}}

To ustawienie działa tylko dla ANSI (Windows-1252) tekst kodowania. Zapisanie tekstu non-ANSI do PDF zawsze będzie wymagało osadzenia odpowiednich czcionek.

{{% /alert %}}

### System wbudowany Czcionki

Ta opcja może być włączona lub wyłączona za pomocą [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) nieruchomości. Kiedy ta właściwość jest ustawiona na [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), "Arial" i "Times New Roman" true czcionki typu nie są wbudowane w dokument PDF. W tym przypadku przeglądarka klienta opiera się na czcionkach zainstalowanych w systemie operacyjnym klienta. Kiedy **FontEmbeddingMode** właściwość jest ustawiona na [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words nie osadzać żadnych czcionek.

Poniższy przykład pokazuje jak ustawić Aspose.Words aby pominąć umieszczanie czcionek Arial i Times New Roman w dokumencie PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Tryb ten jest najbardziej przydatny, gdy chcesz zobaczyć swoje dokumenty na tej samej platformie, zachowując dokładny wygląd czcionek w wyjściu PDF.

{{% alert color="primary" %}}

To ustawienie działa tylko dla ANSI (Windows-1252) tekst kodowania. Zapisanie tekstu non-ANSI do PDF wymaga osadzenia odpowiedniej czcionki.

{{% /alert %}}
