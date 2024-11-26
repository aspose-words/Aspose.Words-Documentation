---
title: Печать документа
second_title: Aspose.Words для Java
articleTitle: Печать документа программным способом или с помощью диалоговых окон
linktitle: Печать документа программным способом или с помощью диалоговых окон
description: "Распечатайте документ с помощью Java в диалоговых окнах Настройки, предварительного просмотра и выполнения печати."
type: docs
weight: 55
url: /ru/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

В этой статье описывается, как напечатать документ в текстовом редакторе с помощью Aspose.Words API. Также демонстрируются методы печати документа с диалоговыми окнами настроек, предварительного просмотра и выполнения печати.

## Печать документа с диалоговыми окнами настроек и предварительного просмотра

При работе с документами часто требуется распечатать их на выбранном принтере. Полезно использовать диалог предварительного просмотра, чтобы визуально оценить, как будет выглядеть напечатанный документ, и выбрать соответствующие параметры печати.

Класс Aspose.Words не имеет встроенных диалоговых окон или форм, но реализует класс [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/), который переопределяет как java.awt.print.Доступный для печати, так и java.awt.print.Доступный для просмотра страницами.

В следующем примере показано, как использовать эти классы для печати документа из Aspose.Words с помощью диалоговых окон предварительного просмотра и настроек:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Печать нескольких страниц на одном листе

Aspose.Words реализует класс **MultipagePrintDocument**, позволяющий точно настроить операцию печати для реализации пользовательской логики путем определения способа отображения документа на печатаемой странице. Класс **MultipagePrintDocument** предоставляет возможность печатать несколько страниц на одном листе бумаги.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Вы можете скачать пример использования класса **MultipagePrintDocument** с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

Результат выполнения этого примера кода показан ниже:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
