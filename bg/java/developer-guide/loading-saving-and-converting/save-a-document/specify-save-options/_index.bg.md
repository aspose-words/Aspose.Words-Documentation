---
title: Посочете настройките за запис в Java
second_title: Aspose.Words вместо Java
articleTitle: Посочете настройките за запис
linktitle: Посочете настройките за запис
description: "Задаване на напреднали свойства при запис на документ чрез използване Java да осигури по-точен контрол върху процеса."
type: docs
weight: 20
url: /bg/java/specify-save-options/
---

Когато записвате документ, можете да зададете някои напреднали свойства. Aspose.Words Ви осигурява [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) клас, който позволява по-точен контрол на процеса на спасяване. Има претоварване на **Save** метод, който приема **SaveOptions** обект го трябва да бъде обект на клас, получен от **SaveOptions** Клас. Всеки save формат има съответен клас, който притежава опции за запис за този save формат, например, има [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) за запис във формат PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) за спестяване Markdown формат, или [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) за запазване на образ. Тази статия дава примери за работа с някои опции класове, получени от **SaveOptions**.

Следният пример с код показва как да зададете опциите за запис преди да запишете документа в HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Статията описва няколко свойства, които можете да контролирате, когато записвате документ.

## Шифроване на документ С парола

Използвайте **Password** имот, за да получите или зададете парола за криптиран документ. Използвайте **Password** собственост на съответния клас за работа с избрания формат на документа.

Например при запис на документ в DOC или DOT формат, използвайте [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) собственост на [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) Клас.

Следният пример за код показва как да зададете парола за шифроване на документ чрез метода за криптиране RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

При запис на документ във формат ODT, използвайте [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) собственост на [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) Клас.

Следният пример с код показва как да заредите и запишете криптирания Open Document с парола:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Не всички формати поддържат криптиране и използването на **Password** собственост.

## Показване на уведомленията за напредък при запис на документ

Aspose.Words дава възможност за употреба на [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) собственост, за да получите уведомления за напредъка на спасяването на документи.

Вече е на разположение при спестяване на DOCX, FlatOpc, DOCM, DOTМ, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack или TXT формати.

## Обновяване на времето за създаване на документа

Aspose.Words дава възможност за използване на [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) собственост, за да получите или определите датата на създаване на документа по UTC. Можете също така да актуализирате тази стойност, преди да запишете използването на [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) вариант.

Следният пример с код показва как да се актуализира времето за създаване на документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Обновяване Последна запазена собственост

Aspose.Words дава възможност за използване на [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) имот, за да получите или зададете стойност, определяща дали [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) Имотът се актуализира преди да се съхрани.

Следният пример за код показва как да зададете това свойство и да запазите документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Запис черно и бяло изображение с един бит на пиксел формат

За да контролирате опциите за запис на изображения, **ImageSaveOptions** Използва се клас. Например, можете да използвате [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) свойство за задаване на формата на пиксел за генерираните изображения. Моля, имайте предвид, че формата на пикселите на изходното изображение може да се различава от зададената стойност поради работата на GDI+.

Следният пример за код показва как да се запази черно-бяло изображение с един бит на пиксел формат:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
