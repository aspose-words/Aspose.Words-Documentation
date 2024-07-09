---
title: Печат на документ
second_title: Aspose.Words вместо Java
articleTitle: Печат на документ Програмиране или използване на диалогови файлове
linktitle: Печат на документ Програмиране или използване на диалогови файлове
description: "Печат на документ, като се използва Java чрез Настройки, Print Preview и Print progress диалогови диалози."
type: docs
weight: 55
url: /bg/java/print-a-document-programmatically-or-using-dialogs/
---

Тази статия описва как да отпечатате документ за обработка на думи, използвайки Aspose.Words API. Той също така демонстрира методите за отпечатване на документ със Настройки, Print Preview и Print progress диалози.

## Отпечатване на документ със настройки и печат Диалози за преглед

При работа с документи често се изисква да бъдат отпечатани на избран принтер. Полезно е да използвате прозорец за преглед на печат, за да проверите визуално как ще се появи отпечатаният документ и да изберете съответните опции за печат.

На Aspose.Words няма вградени диалози или форми, но прилага [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) Класът отменя и двата Java.awt.print. Печатаем и разпечатан. Изумително.

Следният пример показва как да използвате тези класове, за да отпечатате документ от Aspose.Words чрез прозореца за печат и настройки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Печат на множество страници на един лист

Aspose.Words прилага **MultipagePrintDocument** клас, за да настроите печатната операция, за да приложите Вашата обичайна логика чрез определяне на начина, по който документът ще се появи на печатната страница. На **MultipagePrintDocument** Класът осигурява възможност за отпечатване на няколко страници на един лист хартия.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Можете да изтеглите пример за използване на **MultipagePrintDocument** клас от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)

Резултатът от този пример с код е показан по-долу:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
