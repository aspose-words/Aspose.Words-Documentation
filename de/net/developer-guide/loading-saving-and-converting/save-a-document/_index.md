---
title: Speichern Sie ein Dokument in C#
second_title: Aspose.Words für .NET
articleTitle: Speichern Sie ein Dokument
linktitle: Speichern Sie ein Dokument
type: docs
description: "Speichern Sie ein Dokument in einem beliebigen unterstützten Format mit C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /de/net/save-a-document/
---

Die meisten Aufgaben, die Sie mit Aspose.Words ausführen müssen, umfassen das Speichern eines Dokuments. Zum Speichern eines Dokuments stellt Aspose.Words die [Save](https://reference.aspose.com/words/net/aspose.words/document/save/)-Methode der [Document](https://reference.aspose.com/words/net/aspose.words/document/)-Klasse zur Verfügung. Es gibt Überladungen, die das Speichern eines Dokuments in einer Datei, einem Stream oder einem ASP.NET-HttpResponse-Objekt ermöglichen, um es an einen Client-Browser zu senden. Das Dokument kann in jedem von Aspose.Words unterstützten Speicherformat gespeichert werden. Die Liste aller unterstützten Speicherformate finden Sie in der [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/)-Enumeration.

## In einer {#save-a-document-to-a-file}-Datei speichern

Verwenden Sie einfach die [Save](https://reference.aspose.com/words/net/aspose.words/document/save/)-Methode mit einem Dateinamen. Aspose.Words ermittelt das Speicherformat anhand der von Ihnen angegebenen Dateierweiterung.

Das folgende Codebeispiel zeigt, wie ein Dokument geladen und in einer Datei gespeichert wird:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc) herunterladen.

{{% /alert %}}

## In einem {#save-a-document-to-a-stream}-Stream speichern

Übergeben Sie ein Stream-Objekt an die [Save](https://reference.aspose.com/words/net/aspose.words/document/save/)-Methode. Beim Speichern in einem Stream muss das Speicherformat explizit angegeben werden.

Das folgende Codebeispiel zeigt, wie ein Dokument geladen und in einem Stream gespeichert wird:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

{{% /alert %}}

## Senden Sie ein Dokument an einen Client-Browser {#sending-a-document-to-a-client-browser}

Um ein Dokument an einen Client-Browser zu senden, verwenden Sie eine spezielle Überladung, die vier Parameter benötigt: Dateiname, Speicherformat, Speichertyp und ein ASP.NET-HttpResponse-Objekt. Die Art und Weise, wie das Dokument dem Benutzer präsentiert wird, wird durch die [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/)-Enumeration dargestellt, die bestimmt, ob das an den Browser gesendete Dokument eine Option zum direkten Öffnen im Browser oder in der mit der Dateierweiterung verknüpften Anwendung bietet.

Das folgende Codebeispiel zeigt, wie ein Dokument aus einem ASP.NET-Code an den Client-Browser gesendet wird:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

{{% /alert %}}

Diese Überladung der `Save`-Methode ist bei Verwendung der .NET-Clientprofil-DLL nicht verfügbar. Diese DLL befindet sich im **net3.5_ClientProfile**-Ordner. Das .NET-Client-Profil schließt Assemblys wie **System.Web** aus, daher ist **HttpResponse** nicht verfügbar. Dies ist völlig beabsichtigt.

Dies kann sich als Fehler manifestieren:

**"Keine Überladung für die Methode ‚Speichern‘ benötigt ‚4‘ Parameter."**

Wenn Sie Aspose.Words in einer ASP.NET-Anwendung verwenden müssen, wird empfohlen, die .NET 2.0-DLL zu verwenden, in der die richtige Überladung verfügbar ist, wie in diesem Artikel beschrieben.

## Als PCL {#save-a-document-to-pcl} speichern

Aspose.Words unterstützt das Speichern eines Dokuments in PCL (Printer Command Language). Aspose.Words kann Dokumente im PCL 6-Format (PCL 6 Enhanced oder PCL XL) speichern. Mit der `PclSaveOptions`-Klasse können beim Speichern eines Dokuments im PCL-Format zusätzliche Optionen angegeben werden.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mithilfe der Speicheroptionen in PCL speichern:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Siehe auch

- Informationen zum ASP.NET [HttpResponse](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8)-Objekt
