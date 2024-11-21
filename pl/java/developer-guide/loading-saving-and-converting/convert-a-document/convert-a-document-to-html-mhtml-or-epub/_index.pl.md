---
title: Konwertuj dokument do HTML, MHTML lub EPUB
second_title: Aspose.Words zamiast Java
articleTitle: Konwertuj dokument do HTML, MHTML lub EPUB
linktitle: Konwertuj dokument do HTML, MHTML lub EPUB
description: "Stosowanie Aspose.Words zamiast Java do konwersji dokumentów z Word lub innych obsługiwanych formatów do HTML, MHTML lub EPUB."
type: docs
weight: 20
url: /pl/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Dokumenty w formatach HTML i MHTML flow- układ są również bardzo popularne i mogą być używane na każdej platformie internetowej. Z tego powodu konwersji dokumentów do HTML i MHTML jest ważną cechą Aspose.Words.

EPUB (skrót od "Publikacja elektroniczna") to format oparty na HTML- powszechnie stosowany do elektronicznej dystrybucji książek. Ten format jest w pełni obsługiwany w Aspose.Words do eksportu elektronicznych książek kompatybilnych z większością urządzeń do odczytu.

## Przelicz dokument

Dla prostej konwersji na HTML, MHTML lub EPUB, jeden z [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) stosuje się metody przeciążenia. Możesz zapisać dokument do pliku lub strumienia i wyraźnie ustawić format zapisu dokumentu wyjściowego lub zdefiniować go z rozszerzenia nazwy pliku.

Poniższy przykład pokazuje jak przekonwertować DOCX do HTML z podaniem formatu zapisu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Aby przekonwertować dokument do MHTML lub EPUB, użyj `SaveFormat.MHTML` lub `SaveFormat.EPUB` odpowiednio.

## Konwertuj dokument z informacjami o podróży

Format HTML nie obsługuje wielu Microsoft Word funkcje, a jeśli musimy przywrócić model dokumentu jak najbliżej oryginału, musimy zapisać kilka dodatkowych informacji w pliku HTML. Informacje takie nazywane są również "informacjami o podróży". W tym celu, Aspose.Words zapewnia możliwość eksportu informacji o podróży podczas zapisywania do HTML, MHTML lub EPUB za pomocą [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) nieruchomości. Zapisywanie informacji ronda-trip pozwala przywrócić właściwości dokumentu, takie jak zakładki, komentarze, nagłówki i stopki podczas ładowania dokumentów wymienionych formatów z powrotem do **Document** obiekt.

Domyślną wartością jest **true** dla HTML i **false** dla MHTML i EPUB:

- Kiedy **true**, informacja o podróży jest eksportowana jako - aw - * Właściwości CSS odpowiednich elementów HTML
- Kiedy **false**, nie ma informacji o runda-trip do wyjścia do wyprodukowanych plików

Poniższy przykład kodu pokazuje, w jaki sposób eksportować informacje o podróży w trakcie konwersji dokumentu z DOCX na HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertDocumentToHtmlWithRoundtrip/Test%20File%20\(doc\)Doc).

{{% /alert %}}

## Określ opcję Zapisz podczas konwersji na HTML

Aspose.Words pozwala na konwersję dokumentu Word na HTML przy użyciu domyślnych lub niestandardowych opcji zapisu. Poniżej opisano kilka przykładów niestandardowych opcji zapisu.

### Określ folder do zapisywania zasobów

Stosowanie Aspose.Words możemy określić folder fizyczny, w którym wszystkie zasoby, takie jak obrazy, czcionki i zewnętrzne CSS, są zapisywane, gdy dokument jest konwertowany na HTML. Domyślnie jest to pusty ciąg znaków.

Określanie [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) właściwość jest najprostszym sposobem ustawienia folderu, w którym wszystkie zasoby powinny być zapisane. Możemy korzystać z indywidualnych właściwości, takich jak [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) który zapisuje czcionki do określonego folderu i [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) który zapisuje obrazy do określonego folderu. Kiedy podana jest ścieżka względna, **FontsFolder** oraz **ImagesFolder** odnoszą się do folderu, w którym znajduje się montaż kodu, **ResourceFolder** oraz [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) odnoszą się do folderu wyjściowego, w którym znajduje się dokument HTML.

W tym przykładzie: **ResourceFolder** Określa ścieżkę względną. Ta ścieżka odnosi się do folderu wyjściowego, w którym zapisany jest dokument HTML. Wartość **ResourceFolderAlias** właściwość jest używana do tworzenia adresów URL dla wszystkich zasobów.

Poniższy przykład kodu pokazuje jak pracować z tymi właściwościami:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Korzystanie z [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) właściwość, możemy również podać nazwę folderu używanego do tworzenia URI wszystkich zasobów zapisanych do dokumentu HTML. Jest to najprostszy sposób na określenie, w jaki sposób należy generować URI dla wszystkich plików zasobów. Te same informacje mogą być podane dla obrazów i czcionek oddzielnie poprzez [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) oraz [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) właściwości, odpowiednio.

Nie ma jednak indywidualnej własności dla CSS. Zachowanie **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** oraz **CssStyleSheetFileName** właściwości nie ulegają zmianie. Należy pamiętać, że **CssStyleSheetFileName** właściwość jest używana zarówno do określania nazwy folderów jak i nazwy plików.

- **ResourceFolder** ma niższy priorytet niż foldery określone przez **FontsFolder**, **ImagesFolder**, oraz **CssStyleSheetFileName**. Jeśli folder podany w **ResourceFolder** nie istnieje, zostanie utworzony automatycznie.
- **ResourceFolderAlias** ma niższy priorytet niż **FontsFolderAlias** oraz **ImagesFolderAlias**. Jeśli **ResourceFolderAlias** jest pusty, wartość **ResourceFolder** właściwość będzie używana do tworzenia URI zasobów. Jeśli **ResourceFolderAlias** jest ustawiony na "." (dot), zasób URI będzie zawierał tylko nazwy plików bez podania ścieżki.

### Eksport Base64 Zasoby kodowania czcionek

Aspose.Words umożliwia określenie, czy zasoby czcionki powinny być wbudowane w HTML w kodowaniu Base64. Aby to wykonać, należy użyć [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) nieruchomości - jest to rozszerzenie [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) nieruchomości. Domyślnie jego wartością jest **false**, i czcionki są zapisywane do oddzielnych plików. Ale jeśli ta opcja jest ustawiona na **true**, czcionki będą wbudowane do CSS dokumentu w kodowaniu Base64. W **ExportFontsAsBase64** właściwość wpływa tylko na format HTML i nie wpływa na EPUB i MHTML.

Poniższy przykład kodu pokazuje, jak eksportować zakodowane czcionki Base64- do HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Określ opcje zapisu podczas konwersji na EPUB

Aspose.Words pozwala na konwersję dokumentu Word do formatu EPUB przy użyciu domyślnych lub niestandardowych opcji zapisu. Możesz określić liczbę opcji, przekazując instancję [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) do [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) Metoda.

Poniższy przykład kodu pokazuje, jak konwertować dokument Word do EPUB z podaniem niestandardowych opcji zapisu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Zobacz również

- [Jak eksportować informacje o podroży pod ustawą do HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
