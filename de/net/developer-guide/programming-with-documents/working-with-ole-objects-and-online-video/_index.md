---
title: Arbeiten mit OLE-Objekten und Online Videos in C#
second_title: Aspose.Words für .NET
articleTitle: Arbeiten mit OLE-Objekten und Online Videos
linktitle: Arbeiten mit OLE-Objekten und Online Videos
description: "Erstellen und ändern Sie die OLE-Einbettung in Ihrem Dokument mit C#."
type: docs
weight: 360
url: /de/net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) ist eine Technologie, mit der Benutzer mit Dokumenten arbeiten können, die "Objekte" enthalten, die von Anwendungen Dritter erstellt oder bearbeitet wurden. Das heißt, OLE ermöglicht einer Bearbeitungsanwendung, diese "Objekte" in eine andere Bearbeitungsanwendung zu exportieren und sie dann mit zusätzlichem Inhalt zu importieren.

In diesem Artikel besprechen wir das Einfügen eines OLE-Objekts und das Festlegen seiner Eigenschaften sowie das Einfügen eines Online Videos in ein Dokument.

## OLE-Objekt einfügen

Wenn Sie ein OLE-Objekt wünschen, rufen Sie die [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/)-Methode auf und übergeben Sie ihr explizit **ProgId** mit anderen Parametern.

Das folgende Codebeispiel zeigt, wie man ein OLE-Objekt in ein Dokument einfügt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Legen Sie beim Einfügen eines OLE-Objekts den Dateinamen und die Erweiterung fest

OLE-Paket ist eine veraltete und "undokumentierte" Methode zum Speichern eingebetteter Objekte, wenn ein OLE-Handler unbekannt ist.

Frühe Windows-Versionen wie Windows 3.1, 95 und 98 verfügten über eine Packager.exe-Anwendung, mit der beliebige Datentypen in das Dokument eingebettet werden konnten. Diese Anwendung ist jetzt von Windows ausgeschlossen, Microsoft Word und andere Anwendungen verwenden sie jedoch weiterhin zum Einbetten von Daten, wenn der OLE-Handler fehlt oder unbekannt ist. Die `OlePackage`-Klasse ermöglicht Benutzern den Zugriff auf die OLE-Paketeigenschaften.

Das folgende Codebeispiel zeigt, wie der Dateiname, die Erweiterung und der Anzeigename für das OLE-Paket festgelegt werden:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Erhalten Sie Zugriff auf OLE-Objekt-Rohdaten

Benutzer können mithilfe verschiedener Eigenschaften und Methoden der `OleFormat`-Klasse auf OLE-Objektdaten zugreifen. Beispielsweise ist es möglich, die Rohdaten des `OLE`-Objekts oder den Pfad und Namen einer Quelldatei für das verknüpfte OLE-Objekt abzurufen.

Das folgende Codebeispiel zeigt, wie man OLE-Objekt-Rohdaten mithilfe der [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/)-Methode erhält:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### OLE-Objekt als Symbol einfügen

OLE-Objekte können auch als Bilder in Dokumente eingefügt werden.

Das folgende Codebeispiel zeigt, wie man ein OLE-Objekt als Symbol einfügt. Zu diesem Zweck stellt die [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)-Klasse die [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/)-Methode bereit:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

Das folgende Codebeispiel zeigt, wie ein eingebettetes OLE-Objekt als Symbol aus einem Stream in das Dokument eingefügt wird:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

Für die korrekte Anzeige muss die maximale Größe des Symbols 32 x 32 betragen.

{{% /alert %}}

## Online Video einfügen

Online Videos können über die Registerkarte *"Einfügen" &gt; "Online Video"* in ein Word-Dokument eingefügt werden. Sie können ein Online Video an der aktuellen Position in ein Dokument einfügen, indem Sie die [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/)-Methode aufrufen.

Die [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)-Klasse führt vier Überladungen dieser Methode ein. Der erste funktioniert mit den gängigsten Videoressourcen und verwendet den `URL` des Videos als Parameter. Die erste Überladung unterstützt beispielsweise das einfache Einfügen von Online Videos aus [Youtube](https://www.youtube.com/)- und [Vimeo](https://vimeo.com/)-Ressourcen.

Das folgende Codebeispiel zeigt, wie man ein Online Video aus *Vimeo* in ein Dokument einfügt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

Die zweite Überladung funktioniert mit allen anderen Videoressourcen und verwendet eingebetteten HTML-Code als Parameter. Der HTML-Code zum Einbetten eines Videos kann je nach Anbieter variieren, wenden Sie sich daher für Details an den jeweiligen Anbieter.

{{% alert color="primary" %}}

Bitte beachten Sie, dass das Dokument automatisch für MS Word 2013 optimiert wird, um Videos anzuzeigen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man mit einem solchen HTML-Code ein Online Video in ein Dokument einfügt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}