---
title: Określ opcje zapisu w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Określ opcje zapisywania
linktitle: Określ opcje zapisywania
description: "Dokładniej kontroluj proces zapisywania za pomocą Python."
type: docs
weight: 10
url: /pl/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Podczas zapisywania dokumentu możesz ustawić pewne zaawansowane właściwości. Aspose.Words udostępnia klasę [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), która pozwala na bardziej precyzyjną kontrolę procesu zapisu. Istnieją przeciążenia metody [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/), które akceptują obiekt [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) – powinien to być obiekt klasy wywodzącej się z klasy [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/). Każdy format zapisu ma odpowiednią klasę, która przechowuje opcje zapisu dla tego formatu zapisu, na przykład istnieje [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) do zapisywania w formacie PDF lub [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) do zapisywania do obrazu. W tym artykule przedstawiono przykłady pracy z niektórymi klasami opcji wywodzącymi się z [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

Poniższy przykład kodu pokazuje, jak ustawić opcje zapisywania przed zapisaniem dokumentu w formacie HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

W artykule opisano kilka właściwości, którymi możesz sterować podczas zapisywania dokumentu.

## Zaszyfruj dokument hasłem

Użyj właściwości **hasło**, aby uzyskać lub ustawić hasło do zaszyfrowanego dokumentu. Użyj właściwości **hasło** odpowiedniej klasy, aby pracować z wybranym formatem dokumentu.

Na przykład, zapisując dokument w formacie DOC lub DOT, użyj właściwości [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) klasy [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/).

Poniższy przykład kodu pokazuje, jak ustawić hasło w celu zaszyfrowania dokumentu przy użyciu metody szyfrowania RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

Zapisując dokument w formacie [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) należy skorzystać z właściwości [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) klasy [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/).

Poniższy przykład kodu pokazuje, jak załadować i zapisać Docx zaszyfrowany hasłem:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Nie wszystkie formaty obsługują szyfrowanie i korzystanie z właściwości **hasło**.

## Zaktualizuj czas utworzenia dokumentu

Aspose.Words zapewnia możliwość wykorzystania właściwości [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) do uzyskania lub ustawienia daty utworzenia dokumentu w formacie UTC. Możesz także zaktualizować tę wartość przed zapisaniem, korzystając z opcji [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/).

Poniższy przykład kodu pokazuje, jak zaktualizować czas utworzenia dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Zaktualizuj ostatnio zapisaną właściwość

Aspose.Words umożliwia wykorzystanie właściwości [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) do pobrania lub ustawienia wartości określającej, czy właściwość [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) ma być aktualizowana przed zapisaniem.

Poniższy przykład kodu pokazuje, jak ustawić tę właściwość i zapisać dokument:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Zapisz czarno-biały obraz w formacie jeden bit na piksel

Do sterowania opcjami zapisywania obrazu wykorzystywana jest klasa [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/). Na przykład możesz użyć właściwości [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), aby ustawić format pikseli dla generowanych obrazów. Należy pamiętać, że format pikseli obrazu wyjściowego może różnić się od ustawionej wartości ze względu na pracę nart.

Poniższy przykład kodu pokazuje, jak zapisać czarno-biały obraz w formacie jeden bit na piksel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
