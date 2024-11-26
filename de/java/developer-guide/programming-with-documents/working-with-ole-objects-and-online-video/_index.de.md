---
title: Arbeiten mit Ole-Objekten
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Ole-Objekten
linktitle: Arbeiten mit Ole-Objekten
description: "Erstellen und ändern Sie die OLE -Einbettung in Ihr Dokument mit Java."
type: docs
weight: 360
url: /de/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE steht für "Objektverknüpfung und -Einbettung". Dies ist die Technologie, mit der Benutzer mit Dokumenten arbeiten können, die "Objekte" enthalten, die von Anwendungen von Drittanbietern erstellt oder bearbeitet wurden. Das heißt, OLE ermöglicht einer Anwendung, diese "Objekte" zur Bearbeitung in eine andere Anwendung zu exportieren und sie dann mit zusätzlichem Inhalt wieder zu importieren.

In diesem Artikel werden wir über das Einfügen eines OLE -Objekts und das Festlegen seiner Eigenschaften in ein Dokument sprechen.

## Ole Objekt einfügen

Wenn Sie ein OLE -Objekt wünschen, rufen Sie die [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) -Methode auf und übergeben Sie die **ProgId** explizit mit anderen Parametern.

Das folgende Codebeispiel zeigt, wie Sie ein OLE -Objekt in ein Dokument einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Dateiname und Erweiterung beim Einfügen von OLE -Objekten festlegen

Das OLE -Paket ist eine alte und "undokumentierte" Methode zum Speichern eingebetteter Objekte, wenn ein OLE -Handler unbekannt ist.

Frühe Windows -Versionen wie Windows 3.1, 95 und 98 hatten eine Packager.exe -Anwendung, mit der jede Art von Daten in das Dokument eingebettet werden konnte. Diese Anwendung ist jetzt von Windows ausgeschlossen, aber Microsoft Word und andere Anwendungen verwenden sie weiterhin zum Einbetten von Daten, wenn der OLE-Handler fehlt oder unbekannt ist. Die Klasse `OlePackage` ermöglicht Benutzern den Zugriff auf die Eigenschaften OLE Package.

Das folgende Codebeispiel zeigt, wie Sie den Dateinamen, die Erweiterung und den Anzeigenamen für OLE Package festlegen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Erhalten Sie Zugriff auf OLE Objekt-Rohdaten

Benutzer können mit verschiedenen Eigenschaften und Methoden der Klasse `OleFormat` auf OLE Objektdaten zugreifen. Beispielsweise ist es möglich, die Rohdaten des `OLE` -Objekts oder den Pfad und den Namen einer Quelldatei für das verknüpfte OLE -Objekt abzurufen.

Das folgende Codebeispiel zeigt, wie OLE Objektrohdaten mit der [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) -Methode abgerufen werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### OLE-Objekt als Symbol einfügen

OLE-Objekte können auch als Bilder in Dokumente eingefügt werden.

Das folgende Codebeispiel zeigt, wie Sie ein OLE -Objekt als Symbol einfügen. Zu diesem Zweck macht die Klasse **DocumentBuilder** die Methode [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) verfügbar.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

Das folgende Codebeispiel zeigt, wie ein eingebettetes OLE -Objekt als Symbol aus einem Stream in das Dokument eingefügt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Online Video einfügen

Online Videos können über die Registerkarte *"Insert" > "Online Video"* in ein Word-Dokument eingefügt werden. Sie können ein Online Video an der aktuellen Position in ein Dokument einfügen, indem Sie die Methode [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) aufrufen:

Die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) -Klasse führt vier Überladungen dieser Methode ein. Der erste arbeitet mit den beliebtesten Videoressourcen und verwendet die `URL` des Videos als Parameter. Die erste Überladung unterstützt beispielsweise das einfache Einfügen von Online Videos von [YouTube](https://www.youtube.com/) und [Vimeo](https://vimeo.com/) Ressourcen.

Das folgende Codebeispiel zeigt, wie Sie ein Online Video von *Vimeo* in ein Dokument einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

Die zweite Überladung funktioniert mit allen anderen Videoressourcen und verwendet eingebetteten HTML -Code als Parameter. Der HTML-Code zum Einbetten eines Videos kann je nach Anbieter variieren. Wenden Sie sich daher an den jeweiligen Anbieter, um Einzelheiten zu erfahren.

{{% alert color="primary" %}}

Bitte beachten Sie, dass das Dokument automatisch für MS Word 2013 optimiert wird, um Videos anzuzeigen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie ein Online Video mit einem solchen HTML -Code in ein Dokument einfügen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
