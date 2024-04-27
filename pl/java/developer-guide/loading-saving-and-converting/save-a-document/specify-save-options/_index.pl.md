---
title: Podaj opcje zapisu w Java
second_title: Aspose.Words zamiast Java
articleTitle: Określ opcje zapisu
linktitle: Określ opcje zapisu
description: "Ustaw zaawansowane właściwości podczas zapisywania dokumentu Java zapewnienie dokładniejszej kontroli nad procesem."
type: docs
weight: 20
url: /pl/java/specify-save-options/
---

Podczas zapisywania dokumentu można ustawić pewne zaawansowane właściwości. Aspose.Words zapewnia Państwu [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) klasa, która umożliwia bardziej precyzyjne sterowanie procesem zapisu. Są przeciążenia **Save** metoda akceptująca **SaveOptions** obiekt - powinien być obiektem klasy pochodzącej z **SaveOptions** Klasa. Każdy format zapisu posiada odpowiednią klasę, która posiada opcje zapisu dla tego formatu zapisu, na przykład, istnieje [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) do zapisu do formatu PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) dla zapisu do Markdown format, lub [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) do zapisu obrazu. Ten artykuł zawiera przykłady pracy z niektórych opcji klasy uzyskane z **SaveOptions**.

Poniższy przykład kodu pokazuje jak ustawić opcje zapisu przed zapisaniem dokumentu do HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Artykuł opisuje kilka właściwości, które można kontrolować podczas zapisywania dokumentu.

## Szyfruj dokument Hasło

Użyj **Password** właściwość do uzyskania lub ustawienia hasła dla zaszyfrowanego dokumentu. Użyj **Password** właściwość odpowiedniej klasy do pracy z wybranym formatem dokumentu.

Na przykład, podczas zapisywania dokumentu do DOC lub DOT format, wykorzystanie [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) Własność [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) Klasa.

Poniższy przykład kodu pokazuje jak ustawić hasło do szyfrowania dokumentu przy użyciu metody szyfrowania RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Podczas zapisywania dokumentu do formatu ODT, użyj [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) Własność [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) Klasa.

Poniższy przykład kodu pokazuje jak wczytać i zapisać OpenDocument zaszyfrowany hasłem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Nie wszystkie formaty obsługują szyfrowanie i wykorzystanie **Password** nieruchomości.

## Pokaż zapisywanie dokumentów

Aspose.Words zapewnia możliwość korzystania z [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) właściwość do otrzymywania powiadomień o postępach w zapisywaniu dokumentów.

Jest teraz dostępny przy zapisywaniu do DOCX, FlatOpc, DOCM, DOTM, DOTFormaty X, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack lub TXT.

## Aktualizacja czasu tworzenia dokumentów

Aspose.Words zapewnia możliwość korzystania z [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) właściwość do uzyskania lub ustalenia daty utworzenia dokumentu w UTC. Możesz również zaktualizować tę wartość przed zapisaniem przy użyciu [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) opcja.

Poniższy przykład kodu pokazuje jak zaktualizować czas tworzenia dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Aktualizuj ostatnio zapisaną właściwość

Aspose.Words zapewnia możliwość korzystania z [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) właściwość do uzyskania lub ustawienia wartości określającej, czy [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) właściwość jest aktualizowana przed zapisaniem.

Poniższy przykład kodu pokazuje jak ustawić tę właściwość i zapisać dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Zapisz czarny i biały obrazek z jednym bitem na piksel Format

Aby kontrolować opcje oszczędzania obrazu, **ImageSaveOptions** Klasy są używane. Na przykład, można użyć [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) właściwość do ustawienia formatu pikseli dla generowanych obrazów. Należy pamiętać, że format pikseli obrazu wyjściowego może różnić się od ustalonej wartości ze względu na pracę GDI +.

Poniższy przykład kodu pokazuje, jak zapisać czarno-biały obraz z jednym bitem na format piksela:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
