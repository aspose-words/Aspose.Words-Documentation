---
title: Arbeiten mit Ole Objects
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Ole Objects
linktitle: Arbeiten mit Ole Objects
description: "Erstellen und Ändern der OLE-Einbettung in Ihrem Dokument mithilfe Java."
type: docs
weight: 360
url: /de/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE steht für "Object Linking and Embedding". Dies ist die Technologie, mit der Benutzer mit Dokumenten arbeiten können, die "Objekte" enthalten, die von Drittanbieter-Anwendungen erstellt oder bearbeitet werden. Das heißt, OLE erlaubt eine Anwendung, diese "Objekte" in eine andere Anwendung für die Bearbeitung zu exportieren und dann wieder mit einigen zusätzlichen Inhalten zu importieren.

In diesem Artikel werden wir darüber sprechen, ein OLE-Objekt einzufügen und seine Eigenschaften in ein Dokument einzufügen.

## Ole-Objekt einfügen

Wenn Sie OLE Object wollen, rufen Sie die [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) Methode und geben Sie es **ProgId** explizit mit anderen Parametern.

Das folgende Codebeispiel zeigt, wie man OLE einfügen kann Objekt in ein Dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Setzen Sie den Dateinamen und die Erweiterung beim Einfügen von OLE-Objekt

OLE-Paket ist ein Vermächtnis und "unbesetzt" Weg, um eingebettete Objekte zu speichern, wenn ein OLE-Handler unbekannt ist.

Früh Windows Versionen wie Windows 3.1, 95 und 98 hatten einen Packager. exe Anwendung, die verwendet werden könnte, um jede Art von Daten in das Dokument einzubetten. Diese Anmeldung ist jetzt von Windows, aber Microsoft Word und andere Anwendungen verwenden es noch, um Daten einzubetten, wenn der OLE-Handler fehlt oder unbekannt. Die `OlePackage` class ermöglicht es Benutzern, auf die OLE Package-Eigenschaften zuzugreifen.

Das folgende Codebeispiel zeigt, wie man den Dateinamen, die Erweiterung und den Anzeigenamen für OLE Package einstellt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Zugriff auf OLE Object Raw Data

Benutzer können auf OLE-Objektdaten über verschiedene Eigenschaften und Methoden der `OleFormat` Klasse. Zum Beispiel ist es möglich, die `OLE` Objektrohdaten oder Pfad und Name einer Quelldatei für das verknüpfte OLE-Objekt.

Das folgende Codebeispiel zeigt, wie man OLE erhält Objektrohdaten mit Hilfe von [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) Methode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### OLE Objekt als Icon

OLE-Objekte können auch als Bilder in Dokumente eingefügt werden.

Das folgende Codebeispiel zeigt, wie OLE Object als Icon eingefügt werden kann. Zu diesem Zweck **DocumentBuilder** klasse entlarvt die [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) Methode.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

Das folgende Codebeispiel zeigt, wie ein eingebettetes OLE-Objekt als Icon aus einem Stream in das Dokument eingefügt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Online Video einfügen

Online Video kann in Word-Dokument von der *"Insert" > "Online Video"* Registerkarte eingefügt werden. Sie können ein Online Video in ein Dokument am aktuellen Standort einfügen, indem Sie die [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) Methode:

Die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Klasse führt vier Überlastungen dieses Verfahrens ein. Der erste arbeitet mit den beliebtesten Videoressourcen und nimmt die `URL` des Videos als Parameter. Beispielsweise unterstützt die erste Überlastung ein einfaches Einfügen von Online Videos von [YouTube](https://www.youtube.com/) und [Vimeo](https://vimeo.com/) Ressourcen.

Das folgende Codebeispiel zeigt, wie ein Online Video von *Vimeo* in ein Dokument:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

Die zweite Überlastung funktioniert mit allen anderen Videoressourcen und nimmt eingebetteten HTML-Code als Parameter. Der HTML-Code zum Einbetten eines Videos kann je nach Anbieter variieren, so kontaktieren Sie den jeweiligen Anbieter für Details.

{{% alert color="primary" %}}

Bitte beachten Sie, dass das Dokument automatisch für MS Word 2013 optimiert wird, um Videos anzuzeigen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie ein Online Video in ein Dokument mit einem solchen HTML-Code eingefügt werden kann:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
