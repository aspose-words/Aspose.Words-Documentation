---
title: Печать документа
second_title: Aspose.Words для Java
articleTitle: Печать документа Программно или с помощью диалогов
linktitle: Печать документа Программно или с помощью диалогов
description: "Печать документа с использованием Java С помощью диалогов Settings, Print Preview и Print Progress."
type: docs
weight: 55
url: /ru/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

В этой статье описано, как распечатать документ для обработки текстов с помощью Aspose.Words API. Он также демонстрирует методы печати документа с настройками, предварительным просмотром печати и диалогами прогресса печати.

## Печать документа с настройками и диалоги предварительного просмотра печати

При работе с документами часто требуется распечатать их на выбранный принтер. Полезно использовать диалог предварительного просмотра печати, чтобы визуально проверить, как будет отображаться печатный документ, и выбрать соответствующие варианты печати.

The Aspose.Words не имеет встроенных диалогов или форм, но реализует [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) Класс перекрывает оба java.awt.print. Печатный и java.awt.print. Пейджбл.

Следующий пример показывает, как использовать эти классы для печати документа из Aspose.Words С помощью диалогов Print Preview и Settings:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Печать нескольких страниц на одном листе

Aspose.Words осуществляет **MultipagePrintDocument** класс, чтобы точно настроить операцию печати для реализации вашей пользовательской логики, определяя, как документ будет отображаться на печатной странице. The **MultipagePrintDocument** Класс обеспечивает возможность печати нескольких страниц на одном листе бумаги.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Вы можете скачать пример использования **MultipagePrintDocument** класс из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)

Результат этого примера кода показан ниже:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
