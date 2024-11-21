---
title: Посочете настройките за запис в C#
second_title: Aspose.Words вместо .NET
articleTitle: Посочете настройките за запис
linktitle: Посочете настройките за запис
description: "По-точно контролирайте процеса на запис с помощта на C#."
type: docs
weight: 10
url: /bg/net/specify-save-options/
timestamp: 2024-07-09-19-00-42
---

Когато записвате документ, можете да зададете някои напреднали свойства. Aspose.Words Ви осигурява [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/) клас, който позволява по-точен контрол на процеса на спасяване. Има претоварване на **Save** метод, който приема **SaveOptions** обект го трябва да бъде обект на клас, получен от **SaveOptions** Клас. Всеки save формат има съответен клас, който притежава опции за запис за този save формат, например, има [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) за запис във формат PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) за спестяване Markdown формат, или [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) за спасяване на образ. Тази статия дава примери за работа с някои класове опции, получени от **SaveOptions**.

Следният пример за код показва как да зададете опциите за запис преди да запишете документа в HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Статията описва няколко свойства, които можете да контролирате при запазване на документ.

## Шифроване на документ С парола

Използвайте **Password** имот, за да получите или зададете парола за криптиран документ. Използвайте **Password** собственост на съответния клас за работа с избрания формат на документа.

Например при запис на документ в DOC или DOT формат, използвайте [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) собственост на [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) Клас.

Следният пример за код показва как да зададете парола за шифроване на документ чрез метода за криптиране RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

При запис на документ във формат Odt, използвайте [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) собственост на [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) Клас.

Следният пример за код показва как да заредите и запишете криптиран OpenDocument с парола:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Не всички формати поддържат криптиране и използването на **Password** собственост.

## Показване на уведомленията за напредък при запис на документ

Aspose.Words дава възможност за употреба на [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) собственост, за да получите уведомления за напредъка на спасяването на документи.

Вече е на разположение при спестяване на DOCX, FlatOpc, DOCM, DOTМ, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack или TXT формати.

## Обновяване на времето за създаване на документа

Aspose.Words дава възможност за използване на [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) собственост, за да получите или определите датата на създаване на документа по UTC. Можете също така да актуализирате тази стойност, преди да запишете използването на [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/) вариант.

Следният пример с код показва как да се актуализира времето за създаване на документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Обновяване Последна запазена собственост

Aspose.Words дава възможност за използване на [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) имот, за да получите или да зададете стойност, определяща дали [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) Имотът се актуализира преди да се запази.

Следният пример с код показва как да зададете това свойство и да запазите документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Контрол на външни ресурси при запис на документ в HTML или SVG

За да конвертирате HTML или SVG в PDF, просто се позовавате на [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) метод и да се посочи име на файл с разширението на PDF. Ако искате да заредите изображения, CSS и др. от външни източници, можете да използвате [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/).

Следният пример за код показва как да конвертирате HTML в PDF и да зареждате изображения от външни източници:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Запис черно и бяло изображение с един бит на пиксел формат

За да контролирате опциите за запис на изображения, **ImageSaveOptions** Използва се клас. Например, можете да използвате [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) свойство за задаване на формат пиксел за генерираните изображения. Моля, имайте предвид, че форматът пиксел на изходното изображение може да се различава от зададената стойност поради работата на GDI+.

Следният пример за код показва как да се запази черно и бяло изображение с един бит на пиксел формат:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
