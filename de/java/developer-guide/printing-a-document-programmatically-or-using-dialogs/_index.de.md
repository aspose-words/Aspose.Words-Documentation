---
title: Drucken eines Dokumentes
second_title: Aspose.Words für Java
articleTitle: Drucken eines Dokumentes Programmierung oder Verwendung von Dialogen
linktitle: Drucken eines Dokumentes Programmierung oder Verwendung von Dialogen
description: "Drucken Sie ein Dokument mit Java durch Einstellungen, Drucken Vorschau und Drucken Fortschritt Dialoge."
type: docs
weight: 55
url: /de/java/print-a-document-programmatically-or-using-dialogs/
---

Dieser Artikel beschreibt, wie ein Textverarbeitungsdokument mit Aspose.Words API. Es zeigt auch die Methoden des Druckens eines Dokuments mit Einstellungen, Druckvorschau und Drucken Fortschritt Dialoge.

## Drucken eines Dokumentes mit Einstellungen und Drucken Vorschau Dialoge

Bei der Arbeit mit Dokumenten ist es oft erforderlich, diese auf einen ausgewählten Drucker zu drucken. Es ist hilfreich, einen Druckvorschau-Dialog zu verwenden, um visuell zu prüfen, wie das gedruckte Dokument angezeigt wird und entsprechende Druckoptionen auswählen.

Die Aspose.Words hat keine integrierten Dialoge oder Formulare, sondern implementiert die [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) Klasse überträgt beide java.awt.print. Bedruckbar und java.awt.print. Beschäftigt.

Das folgende Beispiel zeigt, wie man diese Klassen verwendet, um ein Dokument von Aspose.Words über die Dialoge Drucken Vorschau und Einstellungen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Drucken mehrerer Seiten auf einem Blatt

Aspose.Words die **MultipagePrintDocument** Klasse, um den Druckvorgang zu optimieren, um Ihre benutzerdefinierte Logik zu implementieren, indem es definiert, wie das Dokument auf der gedruckten Seite erscheint. Die **MultipagePrintDocument** class bietet die Möglichkeit, mehrere Seiten auf einem Blatt Papier zu drucken.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Sie können ein Beispiel für die Verwendung der **MultipagePrintDocument** Klasse aus [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)

Das Ergebnis dieses Codebeispiels ist unten dargestellt:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
