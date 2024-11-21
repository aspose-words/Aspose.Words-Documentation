---
title: Konwertuj dokument na HTML
second_title: Aspose.Words dla Python via .NET
articleTitle: Konwertuj dokument na HTML, MHTML lub EPUB
linktitle: Konwertuj dokument na HTML, MHTML lub EPUB
description: "Konwertuj dokument z niemal dowolnego formatu na HTML lub MHTML, a także do formatu EPUB za pomocą Python. Możesz także określić opcje zapisywania w celu zarządzania dokumentem wyjściowym."
type: docs
weight: 20
url: /pl/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

Dokumenty w formatach HTML i MHTML są również bardzo popularne i można ich używać na dowolnej platformie internetowej. Z tego powodu konwersja dokumentów do formatu HTML i MHTML jest ważną funkcją Aspose.Words.

EPUB (skrót od "Electronic Publication") to format oparty na HTML, powszechnie używany do dystrybucji książek elektronicznych. Ten format jest w pełni obsługiwany w Aspose.Words w celu eksportowania książek elektronicznych, które są kompatybilne z większością urządzeń do czytania.

## Konwertuj dokument

W przypadku prostej konwersji do formatu HTML, MHTML lub EPUB używane jest jedno z przeciążeń metody [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Możesz zapisać dokument w pliku lub strumieniu i jawnie ustawić format zapisu dokumentu wyjściowego lub zdefiniować go na podstawie rozszerzenia nazwy pliku.

Poniższy przykład pokazuje, jak przekonwertować DOCX na HTML z określeniem formatu zapisu:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Aby przekonwertować dokument na MHTML lub EPUB, użyj odpowiednio [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) lub [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub).

## Konwertuj dokument zawierający informacje o podróży w obie strony

Format HTML nie obsługuje wielu funkcji Microsoft Word i jeśli chcemy przywrócić model dokumentu możliwie najbliższy oryginałowi, musimy zapisać dodatkowe informacje w pliku HTML. Informacje takie nazywane są także "informacjami o podróży w obie strony". W tym celu Aspose.Words zapewnia możliwość eksportowania informacji w obie strony podczas zapisywania w formacie HTML, MHTML lub EPUB przy użyciu właściwości **informacje_eksportowe_w obie strony**. Zapisanie informacji w obie strony umożliwia przywrócenie właściwości dokumentu, takich jak karty, komentarze, nagłówki i stopki, podczas ładowania dokumentów w wymienionych formatach z powrotem do obiektu [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Wartość domyślna to *True* dla HTML i *False* dla MHTML i EPUB:

- W przypadku *True* informacje w obie strony są eksportowane jako - aw - * właściwości CSS odpowiednich elementów HTML
- W przypadku formatu *False* nie ma żadnych informacji przesyłanych w obie strony do utworzonych plików

Poniższy przykład kodu pokazuje, jak wyeksportować informacje w obie strony podczas konwertowania dokumentu z DOCX na HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Określ opcje zapisu podczas konwersji do formatu HTML

Aspose.Words umożliwia konwersję dokumentu Word do formatu HTML przy użyciu domyślnych lub niestandardowych opcji zapisywania. Poniżej opisano kilka przykładów niestandardowych opcji zapisywania.

### Określ folder do zapisywania zasobów

Za pomocą Aspose.Words możemy określić fizyczny folder, w którym wszystkie zasoby, takie jak obrazy, czcionki i zewnętrzne CSS, są zapisywane, gdy dokument jest konwertowany do formatu HTML. Domyślnie jest to pusty ciąg.

Określenie właściwości [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) to najprostszy sposób ustawienia folderu, w którym mają być zapisywane wszystkie zasoby. Możemy skorzystać z indywidualnych właściwości, takich jak [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), który zapisuje czcionki do określonego folderu i [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), który zapisuje obrazy do określonego folderu. Jeśli określono ścieżkę względną, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) i [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) odnoszą się do folderu, w którym znajduje się zestaw kodu, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) i [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) odnoszą się do folderu wyjściowego, w którym znajduje się dokument HTML.

W tym przykładzie [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) określa ścieżkę względną. Ta ścieżka odnosi się do folderu wyjściowego, w którym zapisywany jest dokument HTML. Wartość właściwości [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) służy do tworzenia adresów URL dla wszystkich zasobów.

Poniższy przykład kodu pokazuje, jak pracować z tymi właściwościami:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Korzystając z właściwości [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/), możemy również określić nazwę folderu, w którym będą konstruowane URI wszystkich zasobów zapisanych w dokumencie HTML. Jest to najprostszy sposób określenia sposobu generowania identyfikatorów URI dla wszystkich plików zasobów. Te same informacje można określić oddzielnie dla obrazów i czcionek, odpowiednio za pomocą właściwości [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) i [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/).

Jednakże CSS nie ma indywidualnej właściwości. Zachowanie właściwości [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) i [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) nie ulega zmianie. Należy pamiętać, że właściwość [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) służy zarówno do określania nazwy folderu, jak i nazwy pliku.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) ma niższy priorytet niż foldery określone za pomocą [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) i [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). Jeśli folder określony w [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) nie istnieje, zostanie utworzony automatycznie.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) ma niższy priorytet niż [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) i [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Jeśli [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) jest pusty, wartość właściwości [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) zostanie użyta do utworzenia identyfikatorów URI zasobów. Jeśli [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) jest ustawiony na "." (kropka), identyfikatory URI zasobów będą zawierać tylko nazwy plików bez określenia ścieżki.

### Eksportuj zasoby czcionek kodowanych w formacie Base64

Aspose.Words umożliwia określenie, czy zasoby czcionek powinny być osadzone w HTML w kodowaniu Base64. Aby to zrobić, użyj właściwości [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) – jest to rozszerzenie właściwości [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/). Domyślnie jego wartością jest *False*, a czcionki są zapisywane w oddzielnych plikach. Jeśli jednak ta opcja jest ustawiona na *True*, czcionki zostaną osadzone w CSS dokumentu w kodowaniu Base64. Właściwość [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) wpływa tylko na format HTML i nie ma wpływu na EPUB i MHTML.

Poniższy przykład kodu pokazuje, jak eksportować czcionki zakodowane w Base64 do HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Określ opcje zapisu podczas konwersji do formatu EPUB

Aspose.Words umożliwia konwersję dokumentu Word do formatu EPUB przy użyciu domyślnych lub niestandardowych opcji zapisywania. Można określić wiele opcji, przekazując instancję [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) do metody [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/).

Poniższy przykład kodu pokazuje, jak przekonwertować dokument programu Word na format EPUB, określając niestandardowe opcje zapisywania:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

