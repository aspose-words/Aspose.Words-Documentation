---
title: Een document opslaan in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Een document opslaan
linktitle: Een document opslaan
type: docs
description: "Een document opslaan in elk ondersteund formaat Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /nl/python-net/save-a-document/
timestamp: 2024-01-27-14-07-04
---

De meeste taken die u moet uitvoeren met Aspose.Words een document opslaan. Een document opslaan Aspose.Words levert de [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) methode van de [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Klasse. Er zijn overbelastingen die het opslaan van een document in een bestand of stream mogelijk maken. Het document kan worden opgeslagen in elk formaat dat wordt ondersteund door Aspose.Words. Voor de lijst van alle ondersteunde opslagformaten, zie de [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) Lijst.

## Een document opslaan in een bestand {#save-a-document-to-a-file}

Gebruik gewoon de [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) methode met een bestandsnaam. Aspose.Words zal bepalen het opslaan formaat van de bestandsextensie die u specificeert.

Het volgende voorbeeld van code laat zien hoe je een document in een bestand kunt laden en opslaan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Een document opslaan in een stroom {#save-a-document-to-a-stream}

Geef een stream object door aan de [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) methode. Het is noodzakelijk om het opslagformaat expliciet op te geven bij het opslaan naar een stroom.

Het volgende voorbeeld van code laat zien hoe je een document in een stroom kunt laden en opslaan:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Een document opslaan in PCL {#save-a-document-to-pcl}

Aspose.Words ondersteunt het opslaan van een document in PCL (Printer Command Language). Aspose.Words kan documenten opslaan in PCL 6 (PCL 6 Enhanced of PCL XL) formaat. De [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) klasse kan worden gebruikt om extra opties op te geven bij het opslaan van een document in het PCL-formaat.

Het volgende codevoorbeeld laat zien hoe een document naar PCL kan worden opgeslagen met behulp van opslagopties:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

