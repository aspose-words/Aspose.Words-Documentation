---
title: Arbeiten mit OLE Objekten in C++
second_title: Aspose.Words für C++
articleTitle: Arbeiten mit OLE-Objekten
linktitle: Arbeiten mit OLE-Objekten
description: "Erstellen und ändern Sie die OLE -Einbettung in Ihr Dokument mit C++."
type: docs
weight: 360
url: /de/cpp/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Objektverknüpfung und -einbettung) ist eine Technologie, mit der Benutzer mit Dokumenten arbeiten können, die "Objekte" enthalten, die von Anwendungen von Drittanbietern erstellt oder bearbeitet wurden. Das heißt, OLE ermöglicht einer Bearbeitungsanwendung, diese "Objekte" in eine andere Bearbeitungsanwendung zu exportieren und sie dann mit zusätzlichem Inhalt zu importieren.

In diesem Artikel werden wir über das Einfügen eines OLE -Objekts und das Festlegen seiner Eigenschaften in ein Dokument sprechen.

## OLE Objekt einfügen

Wenn Sie ein OLE -Objekt wünschen, rufen Sie die [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) -Methode auf und übergeben Sie die **ProgId** explizit mit anderen Parametern.

Das folgende Codebeispiel zeigt, wie Sie ein OLE -Objekt in ein Dokument einfügen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### Dateiname und Erweiterung beim Einfügen von OLE -Objekten festlegen

Das OLE -Paket ist eine alte und "undokumentierte" Methode zum Speichern eingebetteter Objekte, wenn ein OLE -Handler unbekannt ist.

Frühe Windows-Versionen wie Windows 3.1, 95 und 98 hatten einen Packager.exe-Anwendung, mit der beliebige Datentypen in das Dokument eingebettet werden können. Diese Anwendung ist jetzt von Windows ausgeschlossen, aber Microsoft Word und andere Anwendungen verwenden sie weiterhin zum Einbetten von Daten, wenn der OLE-Handler fehlt oder unbekannt ist. Die `OlePackage`-Klasse ermöglicht Benutzern den Zugriff auf die OLE-Paketeigenschaften.

Das folgende Codebeispiel zeigt, wie Sie den Dateinamen, die Erweiterung und den Anzeigenamen für das OLE-Paket festlegen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### Erhalten Sie Zugriff auf OLE Objekt-Rohdaten

Benutzer können mit verschiedenen Eigenschaften und Methoden der Klasse `OleFormat` auf OLE Objektdaten zugreifen. Beispielsweise ist es möglich, die Rohdaten des `OLE` -Objekts oder den Pfad und den Namen einer Quelldatei für das verknüpfte OLE -Objekt abzurufen.

Das folgende Codebeispiel zeigt, wie OLE Objektrohdaten mit der [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/) -Methode abgerufen werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Ole-Objekt als Symbol einfügen

OLE-Objekte können auch als Bilder in Dokumente eingefügt werden.

Das folgende Codebeispiel zeigt, wie Sie ein OLE -Objekt als Symbol einfügen. Zu diesem Zweck macht die Klasse [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) die Methode [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/) verfügbar:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

Das folgende Codebeispiel zeigt, wie ein eingebettetes OLE -Objekt als Symbol aus einem Stream in das Dokument eingefügt wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Online Video einfügen

Online Videos können über die Registerkarte *"Insert" > "Online Video"* in ein Word-Dokument eingefügt werden. Sie können ein Online Video an der aktuellen Position in ein Dokument einfügen, indem Sie die Methode [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/) aufrufen.

Die [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) -Klasse führt vier Überladungen dieser Methode ein. Der erste arbeitet mit den beliebtesten Videoressourcen und verwendet die `URL` des Videos als Parameter. Die erste Überladung unterstützt beispielsweise das einfache Einfügen von Online Videos von [YouTube](https://www.youtube.com/) und [Vimeo](https://vimeo.com/) Ressourcen.

Das folgende Codebeispiel zeigt, wie Sie ein Online Video von *Vimeo* in ein Dokument einfügen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

Die zweite Überladung funktioniert mit allen anderen Videoressourcen und verwendet eingebetteten HTML -Code als Parameter. Der HTML-Code zum Einbetten eines Videos kann je nach Anbieter variieren. Wenden Sie sich daher an den jeweiligen Anbieter, um Einzelheiten zu erfahren.

{{% alert color="primary" %}}

Bitte beachten Sie, dass das Dokument automatisch für MS Word 2013 optimiert wird, um Videos anzuzeigen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie Sie ein Online Video mit einem solchen HTML -Code in ein Dokument einfügen:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}
