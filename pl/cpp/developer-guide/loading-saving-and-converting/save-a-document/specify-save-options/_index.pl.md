---
title: Określ opcje zapisu w C++
second_title: Aspose.Words dla C++
articleTitle: Określ Opcje Zapisu
linktitle: Określ Opcje Zapisu
description: "Dokładniej kontroluj proces zapisywania."
type: docs
weight: 10
url: /pl/cpp/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Podczas zapisywania dokumentu możesz ustawić niektóre zaawansowane właściwości. Aspose.Words zapewnia klasę [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), która umożliwia bardziej precyzyjną kontrolę procesu zapisywania. Istnieją przeciążenia metody **Save**, które akceptują obiekt **SaveOptions** – powinien to być obiekt klasy wywodzący się z klasy **SaveOptions**. Każdy format zapisu ma odpowiednią klasę, która przechowuje opcje zapisu dla tego formatu zapisu, na przykład istnieje [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) do zapisywania w formacie PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) do zapisywania w formacie Markdown lub [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) do zapisywania na obrazie. Ten artykuł zawiera przykłady pracy z niektórymi klasami opcji wywodzącymi się z **SaveOptions**.

Poniższy przykład kodu pokazuje, jak ustawić opcje zapisywania przed zapisaniem dokumentu w HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

W artykule opisano kilka właściwości, które można kontrolować podczas zapisywania dokumentu.

## Zaszyfruj dokument hasłem

Użyj właściwości **Password**, aby uzyskać lub ustawić hasło do zaszyfrowanego dokumentu. Użyj właściwości **Password** odpowiedniej klasy, aby pracować z wybranym formatem dokumentu.

Na przykład podczas zapisywania dokumentu w formacie DOC lub DOT Użyj właściwości [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) klasy [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

Poniższy przykład kodu pokazuje, jak ustawić hasło do szyfrowania dokumentu przy użyciu metody szyfrowania RC4:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

Podczas zapisywania dokumentu w formacie ODT Użyj właściwości [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) klasy [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

Poniższy przykład kodu pokazuje, jak załadować i zapisać OpenDocument zaszyfrowane hasłem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

Nie wszystkie formaty obsługują szyfrowanie i użycie właściwości **Password**.

## Pokaż Powiadomienia O Postępach Zapisywania Dokumentów

Aspose.Words zapewnia możliwość korzystania z właściwości [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) w celu otrzymywania powiadomień o postępie zapisywania dokumentów.

Jest teraz dostępny podczas zapisywania w DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, lub TXT formatów.

## Zaktualizuj czas tworzenia dokumentu

Aspose.Words umożliwia użycie właściwości [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) do pobrania lub ustawienia daty utworzenia dokumentu w UTC. Możesz również zaktualizować tę wartość przed zapisaniem za pomocą opcji [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/).

Poniższy przykład kodu pokazuje, jak zaktualizować czas tworzenia dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## Zaktualizuj Ostatnio Zapisaną Właściwość

Aspose.Words umożliwia użycie właściwości [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) do pobrania lub ustawienia wartości określającej, czy właściwość [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) jest aktualizowana przed zapisaniem.

Poniższy przykład kodu pokazuje, jak ustawić tę właściwość i zapisać dokument:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## Zapisz Czarno-biały obraz w formacie jednego bitu na piksel

Aby kontrolować opcje zapisywania obrazu, używana jest klasa **ImageSaveOptions**. Na przykład możesz użyć właściwości [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/), aby ustawić format pikseli dla generowanych obrazów. Należy pamiętać, że format pikseli obrazu wyjściowego może różnić się od ustawionej wartości z powodu pracy GDI+.

Poniższy przykład kodu pokazuje, jak zapisać czarno-biały obraz w formacie jednego bitu na piksel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
