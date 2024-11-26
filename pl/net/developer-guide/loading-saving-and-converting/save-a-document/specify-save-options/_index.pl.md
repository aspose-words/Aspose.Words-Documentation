---
title: Określ opcje zapisu w C#
second_title: Aspose.Words dla .NET
articleTitle: Określ opcje zapisywania
linktitle: Określ opcje zapisywania
description: "Dokładniej kontroluj proces zapisywania za pomocą C#."
type: docs
weight: 10
url: /pl/net/specify-save-options/
timestamp: 2024-07-09-19-00-42
---

Podczas zapisywania dokumentu możesz ustawić pewne zaawansowane właściwości. Aspose.Words udostępnia klasę [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), która pozwala na bardziej precyzyjną kontrolę procesu zapisu. Istnieją przeciążenia metody **Save** akceptujące obiekt **SaveOptions** – powinien to być obiekt klasy wywodzącej się z klasy **SaveOptions**. Każdy format zapisu ma odpowiednią klasę, która przechowuje opcje zapisu dla tego formatu zapisu, na przykład istnieje [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) do zapisywania w formacie PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) do zapisywania w formacie Markdown lub [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) do zapisywania do obrazu. W tym artykule przedstawiono przykłady pracy z niektórymi klasami opcji pochodzącymi z formatu **SaveOptions**.

Poniższy przykład kodu pokazuje, jak ustawić opcje zapisywania przed zapisaniem dokumentu w formacie HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

W artykule opisano kilka właściwości, którymi możesz sterować podczas zapisywania dokumentu.

## Zaszyfruj dokument hasłem

Użyj właściwości **Password**, aby uzyskać lub ustawić hasło do zaszyfrowanego dokumentu. Użyj właściwości **Password** odpowiedniej klasy, aby pracować z wybranym formatem dokumentu.

Na przykład, zapisując dokument w formacie DOC lub DOT, użyj właściwości [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) klasy [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/).

Poniższy przykład kodu pokazuje, jak ustawić hasło w celu zaszyfrowania dokumentu przy użyciu metody szyfrowania RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

Podczas zapisywania dokumentu w formacie Odt należy skorzystać z właściwości [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) klasy [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/).

Poniższy przykład kodu pokazuje, jak załadować i zapisać OpenDocument zaszyfrowany hasłem:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Nie wszystkie formaty obsługują szyfrowanie i korzystanie z właściwości **Password**.

## Pokaż powiadomienia o postępie zapisywania dokumentu

Aspose.Words zapewnia możliwość wykorzystania właściwości [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) do otrzymywania powiadomień o postępie zapisywania dokumentu.

Jest teraz dostępny podczas zapisywania w formatach DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack lub TXT.

## Zaktualizuj czas utworzenia dokumentu

Aspose.Words zapewnia możliwość wykorzystania właściwości [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) do uzyskania lub ustawienia daty utworzenia dokumentu w formacie UTC. Możesz także zaktualizować tę wartość przed zapisaniem, korzystając z opcji [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/).

Poniższy przykład kodu pokazuje, jak zaktualizować czas utworzenia dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Zaktualizuj ostatnio zapisaną właściwość

Aspose.Words umożliwia wykorzystanie właściwości [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) do pobrania lub ustawienia wartości określającej, czy właściwość [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) ma być aktualizowana przed zapisaniem.

Poniższy przykład kodu pokazuje, jak ustawić tę właściwość i zapisać dokument:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Kontroluj zasoby zewnętrzne podczas zapisywania dokumentu w formacie HTML lub SVG

Aby przekonwertować HTML lub SVG na format PDF, wystarczy wywołać metodę [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) i podać nazwę pliku z rozszerzeniem ".PDF". Jeśli chcesz załadować obrazy, CSS itp. ze źródeł zewnętrznych, możesz użyć [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/).

Poniższy przykład kodu pokazuje, jak przekonwertować HTML na PDF i wczytać obrazy ze źródeł zewnętrznych:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Zapisz czarno-biały obraz w formacie jeden bit na piksel

Do sterowania opcjami zapisywania obrazu wykorzystywana jest klasa **ImageSaveOptions**. Na przykład możesz użyć właściwości [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/), aby ustawić format pikseli dla generowanych obrazów. Należy pamiętać, że format pikseli obrazu wyjściowego może różnić się od ustawionej wartości ze względu na pracę GDI+.

Poniższy przykład kodu pokazuje, jak zapisać czarno-biały obraz w formacie jeden bit na piksel:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
