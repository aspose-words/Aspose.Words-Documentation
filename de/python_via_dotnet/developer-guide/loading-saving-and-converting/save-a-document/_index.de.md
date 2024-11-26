---
title: Speichern Sie ein Dokument in Python
second_title: Aspose.Words für Python via .NET
articleTitle: Speichern Sie ein Dokument
linktitle: Speichern Sie ein Dokument
type: docs
description: "Speichern Sie ein Dokument in einem beliebigen unterstützten Format mit Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /de/python-net/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Die meisten Aufgaben, die Sie mit Aspose.Words ausführen müssen, umfassen das Speichern eines Dokuments. Zum Speichern eines Dokuments stellt Aspose.Words die [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)-Methode der [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)-Klasse zur Verfügung. Es gibt Überladungen, die das Speichern eines Dokuments in einer Datei oder einem Stream ermöglichen. Das Dokument kann in jedem von Aspose.Words unterstützten Speicherformat gespeichert werden. Die Liste aller unterstützten Speicherformate finden Sie in der [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)-Aufzählung.

## Speichern Sie ein Dokument in einer {#save-a-document-to-a-file}-Datei

Verwenden Sie einfach die [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)-Methode mit einem Dateinamen. Aspose.Words ermittelt das Speicherformat anhand der von Ihnen angegebenen Dateierweiterung.

Das folgende Codebeispiel zeigt, wie ein Dokument geladen und in einer Datei gespeichert wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

{{% /alert %}}

## Speichern Sie ein Dokument in einem Stream {#save-a-document-to-a-stream}

Übergeben Sie ein Stream-Objekt an die [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)-Methode. Beim Speichern in einem Stream muss das Speicherformat explizit angegeben werden.

Das folgende Codebeispiel zeigt, wie ein Dokument geladen und in einem Stream gespeichert wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

Sie können die Vorlagendatei dieses Beispiels von [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) herunterladen.

## Speichern Sie ein Dokument in PCL {#save-a-document-to-pcl}

Aspose.Words unterstützt das Speichern eines Dokuments in PCL (Printer Command Language). Aspose.Words kann Dokumente im PCL 6-Format (PCL 6 Enhanced oder PCL XL) speichern. Mit der [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/)-Klasse können beim Speichern eines Dokuments im PCL-Format zusätzliche Optionen angegeben werden.

Das folgende Codebeispiel zeigt, wie Sie ein Dokument mithilfe der Speicheroptionen in PCL speichern:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

