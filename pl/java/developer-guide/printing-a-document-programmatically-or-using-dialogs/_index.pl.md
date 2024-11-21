---
title: Drukowanie dokumentu
second_title: Aspose.Words zamiast Java
articleTitle: Drukowanie dokumentu Programmatycznie lub przy użyciu dialogów
linktitle: Drukowanie dokumentu Programmatycznie lub przy użyciu dialogów
description: "Drukuj dokument używając Java przez Ustawienia, Podgląd wydruku i Dialogi postępu drukowania."
type: docs
weight: 55
url: /pl/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

Ten artykuł opisuje sposób drukowania dokumentu przetwarzającego słowo Aspose.Words API. Pokazuje również metody drukowania dokumentu z ustawieniami, podglądem wydruku i dialogami postępu drukowania.

## Drukowanie dokumentu z ustawieniami i podgląd dialogów

Podczas pracy z dokumentami jest często wymagane, aby wydrukować je do wybranej drukarki. Pomocne jest wykorzystanie okna podglądu wydruku do wizualnego sprawdzenia, jak pojawi się wydrukowany dokument i wyboru odpowiednich opcji drukowania.

W Aspose.Words nie ma built- w dialogach lub formach, ale implementuje [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) klasa wyprzedza zarówno java.awt.print. Wydrukowane i java.awt.print. Do przejścia.

Poniższy przykład pokazuje jak używać tych klas do wydrukowania dokumentu z Aspose.Words poprzez podgląd wydruku i dialogi ustawień:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Drukowanie wielu stron na jednej arkuszu

Aspose.Words wdraża **MultipagePrintDocument** class, to fine- tune the printing operation to implementation your custom logics by defined the way the document will appear on the printed page. W **MultipagePrintDocument** klasa zapewnia możliwość drukowania kilku stron na jednym arkuszu papieru.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Możesz pobrać przykład użycia **MultipagePrintDocument** klasa od [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)

Wynik tego przykładu kodu przedstawiono poniżej:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
