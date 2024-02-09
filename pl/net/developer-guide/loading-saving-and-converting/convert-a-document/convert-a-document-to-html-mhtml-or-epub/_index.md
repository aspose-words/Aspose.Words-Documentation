---
title: Konwertuj dokument na HTML, MHTML lub EPUB w C#
second_title: Aspose.Words dla .NET
articleTitle: Konwertuj dokument na HTML, MHTML lub EPUB
linktitle: Konwertuj dokument na HTML, MHTML lub EPUB
description: "Konwertuj dokument z niemal dowolnego formatu na HTML lub MHTML, a także do formatu EPUB za pomocą C#. Możesz także określić opcje zapisywania w celu zarządzania dokumentem wyjściowym."
type: docs
weight: 20
url: /pl/net/convert-a-document-to-html-mhtml-or-epub/
---

Dokumenty w formatach HTML i MHTML są również bardzo popularne i można ich używać na dowolnej platformie internetowej. Z tego powodu konwersja dokumentów do formatu HTML i MHTML jest ważną funkcją Aspose.Words.

EPUB (skrót od "Electronic Publication") to format oparty na HTML, powszechnie używany do dystrybucji książek elektronicznych. Ten format jest w pełni obsługiwany w Aspose.Words w celu eksportowania książek elektronicznych, które są kompatybilne z większością urządzeń do czytania.

## Konwertuj dokument

W przypadku prostej konwersji do formatu HTML, MHTML lub EPUB używane jest jedno z przeciążeń metody [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/). Możesz zapisać dokument w pliku lub strumieniu i jawnie ustawić format zapisu dokumentu wyjściowego lub zdefiniować go na podstawie rozszerzenia nazwy pliku.

Poniższy przykład pokazuje, jak przekonwertować DOCX na HTML z określeniem formatu zapisu:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

Aby przekonwertować dokument na MHTML lub EPUB, użyj odpowiednio `SaveFormat.Mhtml` lub `SaveFormat.Epub`.

## Konwertuj dokument zawierający informacje o podróży w obie strony

Format HTML nie obsługuje wielu funkcji Microsoft Word i jeśli chcemy przywrócić model dokumentu możliwie najbliższy oryginałowi, musimy zapisać dodatkowe informacje w pliku HTML. Informacje takie nazywane są także "informacjami o podróży w obie strony". W tym celu Aspose.Words zapewnia możliwość eksportowania informacji w obie strony podczas zapisywania w formacie HTML, MHTML lub EPUB przy użyciu właściwości [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/). Zapisanie informacji w obie strony umożliwia przywrócenie właściwości dokumentu, takich jak karty, komentarze, nagłówki i stopki, podczas ładowania dokumentów w wymienionych formatach z powrotem do obiektu **Document**.

Wartość domyślna to **true** dla HTML i **false** dla MHTML i EPUB:

- W przypadku **true** informacje w obie strony są eksportowane jako - aw - * właściwości CSS odpowiednich elementów HTML
- W przypadku formatu **false** nie ma żadnych informacji przesyłanych w obie strony do generowanych plików

Poniższy przykład kodu pokazuje, jak wyeksportować informacje w obie strony podczas konwertowania dokumentu z DOCX na HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Określ opcje zapisu podczas konwersji do formatu HTML

Aspose.Words umożliwia konwersję dokumentu Word do formatu HTML przy użyciu domyślnych lub niestandardowych opcji zapisywania. Poniżej opisano kilka przykładów niestandardowych opcji zapisywania.

### Określ folder do zapisywania zasobów

Za pomocą Aspose.Words możemy określić fizyczny folder, w którym wszystkie zasoby, takie jak obrazy, czcionki i zewnętrzne CSS, są zapisywane, gdy dokument jest konwertowany do formatu HTML. Domyślnie jest to pusty ciąg.

Określenie właściwości [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) to najprostszy sposób ustawienia folderu, w którym mają być zapisywane wszystkie zasoby. Możemy skorzystać z indywidualnych właściwości, takich jak [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/), który zapisuje czcionki do określonego folderu i [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/), który zapisuje obrazy do określonego folderu. Jeśli określono ścieżkę względną, **FontsFolder** i **ImagesFolder** odnoszą się do folderu, w którym znajduje się zestaw kodu, **ResourceFolder** i [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) odnoszą się do folderu wyjściowego, w którym znajduje się dokument HTML.

W tym przykładzie **ResourceFolder** określa ścieżkę względną. Ta ścieżka odnosi się do folderu wyjściowego, w którym zapisywany jest dokument HTML. Wartość właściwości **ResourceFolderAlias** służy do tworzenia adresów URL dla wszystkich zasobów.

Poniższy przykład kodu pokazuje, jak pracować z tymi właściwościami:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

Korzystając z właściwości [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/), możemy również określić nazwę folderu, w którym będą konstruowane URI wszystkich zasobów zapisanych w dokumencie HTML. Jest to najprostszy sposób określenia sposobu generowania identyfikatorów URI dla wszystkich plików zasobów. Te same informacje można określić oddzielnie dla obrazów i czcionek, odpowiednio za pomocą właściwości [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) i [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/).

Jednakże CSS nie ma indywidualnej właściwości. Zachowanie właściwości **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** i **CssStyleSheetFileName** nie ulega zmianie. Należy pamiętać, że właściwość **CssStyleSheetFileName** służy zarówno do określania nazwy folderu, jak i nazwy pliku.

- **ResourceFolder** ma niższy priorytet niż foldery określone za pomocą **FontsFolder**, **ImagesFolder** i **CssStyleSheetFileName**. Jeśli folder określony w **ResourceFolder** nie istnieje, zostanie utworzony automatycznie.
- **ResourceFolderAlias** ma niższy priorytet niż **FontsFolderAlias** i **ImagesFolderAlias**. Jeśli **ResourceFolderAlias** jest pusty, wartość właściwości **ResourceFolder** zostanie użyta do utworzenia identyfikatorów URI zasobów. Jeśli **ResourceFolderAlias** jest ustawiony na "." (kropka), identyfikatory URI zasobów będą zawierać tylko nazwy plików bez określenia ścieżki.

### Eksportuj zasoby czcionek kodowanych w formacie Base64

Aspose.Words umożliwia określenie, czy zasoby czcionek powinny być osadzone w HTML w kodowaniu Base64. Aby to zrobić, użyj właściwości [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) – jest to rozszerzenie właściwości [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/). Domyślnie jego wartością jest **false**, a czcionki są zapisywane w oddzielnych plikach. Jeśli jednak ta opcja jest ustawiona na **true**, czcionki zostaną osadzone w CSS dokumentu w kodowaniu Base64. Właściwość **Eksportuj czcionki jako bazę64** wpływa tylko na format HTML i nie ma wpływu na EPUB i MHTML.

Poniższy przykład kodu pokazuje, jak eksportować czcionki zakodowane w Base64 do HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Określ opcje zapisu podczas konwersji do formatu EPUB

Aspose.Words umożliwia konwersję dokumentu Word do formatu EPUB przy użyciu domyślnych lub niestandardowych opcji zapisywania. Można określić wiele opcji, przekazując instancję [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) do metody [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/).

Poniższy przykład kodu pokazuje, jak przekonwertować dokument programu Word na format EPUB, określając niestandardowe opcje zapisywania:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Zobacz też

- [Jak wyeksportować informacje o podróży w obie strony podczas zapisywania w formacie HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
