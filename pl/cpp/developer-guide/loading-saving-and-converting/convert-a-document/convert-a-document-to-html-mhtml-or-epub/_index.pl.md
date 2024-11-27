---
title: Konwertuj dokument na HTML, MHTML lub EPUB
second_title: Aspose.Words dla C++
articleTitle: Konwertuj dokument na HTML, MHTML lub EPUB
linktitle: Konwertuj dokument na HTML, MHTML lub EPUB
description: "Konwertuj dokument z prawie dowolnego formatu na HTML lub MHTML, a także do formatu EPUB za pomocą C++. Możesz także określić opcje zapisywania zarządzania dokumentem wyjściowym."
type: docs
weight: 20
url: /pl/cpp/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Dokumenty w formatach układu przepływu HTML i MHTML są również bardzo popularne i mogą być używane na dowolnej platformie internetowej. Z tego powodu Konwersja dokumentów do HTML i MHTML jest ważną cechą Aspose.Words.

EPUB (skrót od "publikacja elektroniczna") to format oparty na HTML, powszechnie używany do dystrybucji książek elektronicznych. Ten format jest w pełni obsługiwany w Aspose.Words do eksportowania książek elektronicznych, które są kompatybilne z większością urządzeń do czytania.

## Konwertuj dokument

Do prostej konwersji na HTML, MHTML lub EPUB używany jest jeden z przeciążeń metody [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Możesz zapisać dokument do pliku lub strumienia i jawnie ustawić format zapisu dokumentu wyjściowego lub zdefiniować go z rozszerzenia nazwy pliku.

Poniższy przykład pokazuje, jak przekonwertować DOCX na HTML z określeniem formatu zapisu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

Aby przekonwertować dokument na MHTML lub EPUB, Użyj odpowiednio `SaveFormat.Mhtml` LUB `SaveFormat.Epub`.

## Konwertuj dokument z informacjami w obie strony

Format HTML nie obsługuje wielu funkcji Microsoft Word, a jeśli musimy przywrócić model dokumentu jak najbliżej oryginału, musimy zapisać dodatkowe informacje w pliku HTML. Takie informacje są również nazywane "informacjami w obie strony". W tym celu Aspose.Words zapewnia możliwość eksportowania informacji w obie strony podczas zapisywania do HTML, MHTML lub EPUB przy użyciu właściwości [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/). Zapisywanie informacji w obie strony umożliwia przywrócenie właściwości dokumentu, takich jak zakładki, komentarze, nagłówki i stopki podczas ładowania dokumentów wymienionych formatów z powrotem do obiektu **Document**.

Wartość domyślna to **true** dla HTML i **false** dla MHTML i EPUB:

- Gdy **true**, informacje o podróży w obie strony są eksportowane jako - aw - * CSS właściwości odpowiednich elementów HTML
- Gdy **false**, nie ma informacji w obie strony, które można by wyprowadzić do utworzonych plików

Poniższy przykład kodu pokazuje, jak wyeksportować informacje w obie strony podczas konwersji dokumentu z DOCX na HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Określ opcje zapisu podczas konwersji na HTML

Aspose.Words umożliwia konwersję dokumentu Word na HTML przy użyciu domyślnych lub niestandardowych opcji zapisywania. Poniżej opisano kilka przykładów niestandardowych opcji zapisywania.

### Określ Folder do zapisywania zasobów

Za pomocą Aspose.Words możemy określić folder fizyczny, w którym wszystkie zasoby, takie jak obrazy, czcionki i zewnętrzne CSS, są zapisywane, gdy dokument jest konwertowany na HTML. Domyślnie jest to pusty ciąg.

Określenie właściwości [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) jest najprostszym sposobem ustawienia folderu, w którym powinny być zapisane wszystkie zasoby. Możemy użyć indywidualnych właściwości, takich jak [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/), który zapisuje czcionki w określonym folderze i [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/), który zapisuje obrazy w określonym folderze. Po określeniu ścieżki względnej **FontsFolder** i **ImagesFolder** odnoszą się do folderu, w którym znajduje się zespół kodu, **ResourceFolder** i [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) odnoszą się do folderu wyjściowego, w którym znajduje się dokument HTML.

W tym przykładzie **ResourceFolder** określa ścieżkę względną. Ta ścieżka odnosi się do folderu wyjściowego, w którym zapisany jest dokument HTML. Wartość właściwości **ResourceFolderAlias** jest używana do tworzenia URLs dla wszystkich zasobów.

Poniższy przykład kodu pokazuje, jak pracować z tymi właściwościami:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

Korzystając z właściwości [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/), możemy również określić nazwę folderu używanego do konstruowania URIs wszystkich zasobów zapisanych w dokumencie HTML. Jest to najprostszy sposób określenia sposobu generowania URIs dla wszystkich plików zasobów. Te same informacje można określić osobno dla obrazów i czcionek za pomocą odpowiednio właściwości [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) i [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/).

Jednak nie ma indywidualnej właściwości dla CSS. Zachowanie **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** A właściwości **CssStyleSheetFileName** nie są zmieniane. Zauważ, że właściwość **CssStyleSheetFileName** jest używana zarówno do określania nazwy folderu, jak i nazwy pliku.

- **ResourceFolder** ma niższy priorytet niż foldery określone przez **FontsFolder**, **ImagesFolder** i **CssStyleSheetFileName**. Jeśli folder określony w **ResourceFolder** nie istnieje, zostanie utworzony automatycznie.
- **ResourceFolderAlias** ma niższy priorytet niż **FontsFolderAlias** i **ImagesFolderAlias**. Jeśli **ResourceFolderAlias** jest pusty, wartość właściwości **ResourceFolder** zostanie użyta do utworzenia zasobu URIs. Jeśli **ResourceFolderAlias** jest ustawiona na "." (kropka), zasób URIs będzie zawierał tylko nazwy plików bez określania ścieżki.

### Eksportuj Zasoby Czcionek Kodujących Base64

Aspose.Words umożliwia określenie, czy zasoby czcionek powinny być osadzone w HTML w kodowaniu Base64. Aby to zrobić, użyj właściwości [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) - jest to rozszerzenie właściwości [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/). Domyślnie jego wartość to **false**, A czcionki są zapisywane w osobnych plikach. Ale jeśli ta opcja jest ustawiona na **true**, czcionki zostaną osadzone w dokumencie CSS w kodowaniu Base64. Właściwość **ExportFontsAsBase64** wpływa tylko na format HTML i nie wpływa na EPUB i MHTML.

Poniższy przykład kodu pokazuje, jak wyeksportować czcionki zakodowane w Base64 do HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## Określ opcje zapisu podczas konwersji na EPUB

Aspose.Words umożliwia konwersję dokumentu Word do formatu EPUB przy użyciu domyślnych lub niestandardowych opcji zapisywania. Możesz określić liczbę opcji, przekazując instancję [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) do metody `Save`.

Poniższy przykład kodu pokazuje, jak przekonwertować dokument Word na EPUB z określeniem niektórych niestandardowych opcji zapisywania:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
