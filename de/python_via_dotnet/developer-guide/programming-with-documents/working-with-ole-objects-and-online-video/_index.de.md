---
title: OLE-Objekte und Online Video
second_title: Aspose.Words für Python via .NET
articleTitle: Arbeiten mit OLE-Objekten und Online Videos
linktitle: Arbeiten mit OLE-Objekten und Online Videos
description: "Fügen Sie Ole-Objekte oder Online Vodeo mithilfe von Python in ein Dokument ein."
type: docs
weight: 360
url: /de/python-net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) ist eine Technologie, mit der Benutzer mit Dokumenten arbeiten können, die "Objekte" enthalten, die von Anwendungen Dritter erstellt oder bearbeitet wurden. Das heißt, OLE ermöglicht einer Bearbeitungsanwendung, diese "Objekte" in eine andere Bearbeitungsanwendung zu exportieren und sie dann mit zusätzlichem Inhalt zu importieren.

In diesem Artikel besprechen wir das Einfügen eines OLE-Objekts und das Festlegen seiner Eigenschaften sowie das Einfügen eines Online Videos in ein Dokument.

## OLE-Objekt einfügen

Wenn Sie ein OLE-Objekt wünschen, rufen Sie die [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/)-Methode auf und übergeben Sie ihr explizit **ProgId** mit anderen Parametern.

Das folgende Codebeispiel zeigt, wie man ein OLE-Objekt in ein Dokument einfügt:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Legen Sie beim Einfügen eines OLE-Objekts den Dateinamen und die Erweiterung fest

OLE-Paket ist eine veraltete und "undokumentierte" Methode zum Speichern eingebetteter Objekte, wenn ein OLE-Handler unbekannt ist.

Frühe Windows-Versionen wie Windows 3.1, 95 und 98 verfügten über eine Packager.exe-Anwendung, mit der beliebige Datentypen in das Dokument eingebettet werden konnten. Diese Anwendung ist jetzt von Windows ausgeschlossen, Microsoft Word und andere Anwendungen verwenden sie jedoch weiterhin zum Einbetten von Daten, wenn der OLE-Handler fehlt oder unbekannt ist. Die `OlePackage`-Klasse ermöglicht Benutzern den Zugriff auf die OLE-Paketeigenschaften.

Das folgende Codebeispiel zeigt, wie der Dateiname, die Erweiterung und der Anzeigename für das OLE-Paket festgelegt werden:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Erhalten Sie Zugriff auf OLE-Objekt-Rohdaten

Benutzer können mithilfe verschiedener Eigenschaften und Methoden der `OleFormat`-Klasse auf OLE-Objektdaten zugreifen. Beispielsweise ist es möglich, die Rohdaten des `OLE`-Objekts oder den Pfad und Namen einer Quelldatei für das verknüpfte OLE-Objekt abzurufen.

Das folgende Codebeispiel zeigt, wie man OLE-Objekt-Rohdaten mithilfe der [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/)-Methode erhält:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### OLE-Objekt als Symbol einfügen

OLE-Objekte können auch als Bilder in Dokumente eingefügt werden.

Das folgende Codebeispiel zeigt, wie man ein OLE-Objekt als Symbol einfügt. Zu diesem Zweck stellt die [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)-Klasse die [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/)-Methode bereit:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

Das folgende Codebeispiel zeigt, wie ein eingebettetes OLE-Objekt als Symbol aus einem Stream in das Dokument eingefügt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Online Video einfügen

Online Videos können über die Registerkarte *"Einfügen" &gt; "Online Video"* in ein Word-Dokument eingefügt werden. Sie können ein Online Video an der aktuellen Position in ein Dokument einfügen, indem Sie die [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/)-Methode aufrufen.

Die [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)-Klasse führt vier Überladungen dieser Methode ein. Der erste funktioniert mit den gängigsten Videoressourcen und verwendet den `URL` des Videos als Parameter. Die erste Überladung unterstützt beispielsweise das einfache Einfügen von Online Videos aus [Youtube](https://www.youtube.com/)- und [Vimeo](https://vimeo.com/)-Ressourcen.

Das folgende Codebeispiel zeigt, wie man ein Online Video aus *Vimeo* in ein Dokument einfügt:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Pass direct url from youtu.be.
url = "https://www.youtube.com/watch?v=t_1LYZ102RA"

width = 360
height = 270

shape = builder.insert_online_video(url, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video.docx")
{{< /highlight >}}

Die zweite Überladung funktioniert mit allen anderen Videoressourcen und verwendet eingebetteten HTML-Code als Parameter. Der HTML-Code zum Einbetten eines Videos kann je nach Anbieter variieren, wenden Sie sich daher für Details an den jeweiligen Anbieter.

{{% alert color="primary" %}}

Bitte beachten Sie, dass das Dokument automatisch für MS Word 2013 optimiert wird, um Videos anzuzeigen.

{{% /alert %}}

Das folgende Codebeispiel zeigt, wie man mit einem solchen HTML-Code ein Online Video in ein Dokument einfügt:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Shape width/height.
width = 360
height = 270

# Poster frame image.
f = open(docs_base.images_dir + "Logo.jpg", "rb")
imageBytes = f.read()
f.close()

# Visible url
vimeoVideoUrl = "https://vimeo.com/52477838"

# Embed Html code.
vimeoEmbedCode = ""

builder.insert_online_video(vimeoVideoUrl, vimeoEmbedCode, imageBytes, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video_with_embed_html.docx")
{{< /highlight >}}