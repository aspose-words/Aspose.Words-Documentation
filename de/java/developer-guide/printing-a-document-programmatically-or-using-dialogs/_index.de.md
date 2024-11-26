---
title: Drucken eines Dokuments
second_title: Aspose.Words für Java
articleTitle: Drucken eines Dokuments programmgesteuert oder mithilfe von Dialogen
linktitle: Drucken eines Dokuments programmgesteuert oder mithilfe von Dialogen
description: "Drucken Sie ein Dokument mit Java über die Dialogfelder Einstellungen, Druckvorschau und Druckfortschritt."
type: docs
weight: 55
url: /de/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

In diesem Artikel wird beschrieben, wie Sie ein Textverarbeitungsdokument mit Aspose.Words API drucken. Es zeigt auch die Methoden zum Drucken eines Dokuments mit Einstellungen, Druckvorschau und Druckfortschrittsdialogen.

## Drucken eines Dokuments mit Einstellungen und Druckvorschaudialogen

Bei der Arbeit mit Dokumenten ist es häufig erforderlich, diese auf einem ausgewählten Drucker zu drucken. Es ist hilfreich, einen Druckvorschaudialog zu verwenden, um visuell zu überprüfen, wie das gedruckte Dokument angezeigt wird, und relevante Druckoptionen auszuwählen.

Die Aspose.Words hat keine eingebauten Dialoge oder Formulare, sondern implementiert die [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) Klasse überschreibt beide Java.ahhh.Druck.Druckbar und Java.ahhh.Druck.Seitenfähig.

Das folgende Beispiel zeigt, wie Sie diese Klassen verwenden, um ein Dokument aus Aspose.Words über die Druckvorschau- und Einstellungsdialoge zu drucken:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Drucken mehrerer Seiten auf einem Blatt

Aspose.Words implementiert die Klasse **MultipagePrintDocument**, um den Druckvorgang so zu optimieren, dass Ihre benutzerdefinierte Logik implementiert wird, indem definiert wird, wie das Dokument auf der gedruckten Seite angezeigt wird. Die Klasse **MultipagePrintDocument** bietet die Möglichkeit, mehrere Seiten auf ein Blatt Papier zu drucken.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Sie können ein Beispiel für die Verwendung der Klasse **MultipagePrintDocument** von herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

Das Ergebnis dieses Codebeispiels ist unten dargestellt:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
