---
title: Arbeiten mit Reichweiten in Java
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Reichweiten
linktitle: Arbeiten mit Reichweiten
description: "Einführung in die Range-Funktion in Aspose.Words für Java."
type: docs
weight: 130
url: /de/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

In Aspose.Words, ein Bereich ist ein "Flachfenster" in ein ansonsten baumartiges Modell des Dokuments.

{{% /alert %}}

Wenn Sie mit Microsoft Word Automatisierung, wissen Sie wahrscheinlich, dass eines der Hauptinstrumente, um Dokumentinhalte zu untersuchen und zu modifizieren ist die `Range` Objekt. Range ist wie ein "Fenster" in den Dokumenteninhalt und die Formatierung.

Aspose.Words hat auch [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) Klasse und es ist entworfen, um ähnlich aussehen und handeln **Range** in Microsoft Word. Obwohl **Range** einen beliebigen Teil eines Dokuments nicht abdecken kann und keine **Start** und **End**, Sie können auf den Bereich zugreifen, der von jedem Dokumentknoten einschließlich der [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) selbst. Mit anderen Worten, jeder Knoten hat seinen eigenen Bereich. Die **Range** Mit dem Objekt können Sie auf Text-, Lese- und Formularfelder im Bereich zugreifen und ändern.

## Abrufen von Plain Text

Verwenden Sie die [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) Eigenschaft, den einfachen, unformatierten Text des Bereichs abzurufen.

Das folgende Codebeispiel zeigt, wie man einen einfachen, unformatierten Text eines Bereichs erhält:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Löschen

Die `Range` Klasse erlaubt das Löschen aller Zeichen des Bereichs durch Aufruf [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

Das folgende Codebeispiel zeigt, wie Sie alle Zeichen eines Bereichs löschen können:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Sie können die Beispieldatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 
