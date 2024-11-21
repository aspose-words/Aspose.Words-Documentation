---
title: Skep Of Laai'n Dokument in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Skep Of Laai'n Dokument
linktitle: Skep Of Laai'n Dokument
type: docs
url: /af/python-net/create-or-load-a-document/
description: "Skep'n leë dokument of laai dit vanaf'n lêer of stroom met Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
timestamp: 2024-01-27-14-07-04
---

Byna enige taak wat u met Aspose.Words wil uitvoer, behels die laai van'n dokument. Die [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) klas verteenwoordig'n dokument gelaai in die geheue. Die dokument het verskeie oorlaai konstruktors sodat jy'n leë dokument te skep of om dit te laai van'n lêer of stroom. Die dokument kan gelaai word in enige laai formaat ondersteun deur Aspose.Words. Vir die lys van alle ondersteun vrag formate, sien die [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) opsomming.

## Skep'n Nuwe Dokument

Ons sal die [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) konstruktor sonder parameters noem om'n nuwe leë dokument te skep. As jy'n dokument programmaties wil genereer, is die eenvoudigste manier om die [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) klas te gebruik om dokumentinhoud by te voeg.

Die volgende kode voorbeeld toon hoe om'n dokument te skep met behulp van die dokument bouer:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Let op die verstekwaardes:

- 'n leë dokument bevat een afdeling met standaardparameters, een leë paragraaf, 'n paar dokumentstyle. Eintlik is hierdie dokument dieselfde as die resultaat van die skep van die "nuwe dokument" in Microsoft Word.
- Die dokument papier grootte is [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Laai'n Dokument

Om'n bestaande dokument in enige van die [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) formate te laai, gee die lêernaam of die stroom in een van die [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) konstruktors. Die formaat van die gelaaide dokument word outomaties bepaal deur die uitbreiding daarvan.

### Laai vanaf'n Lêer

Gee'n lêernaam as string aan die [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) konstruktor om'n bestaande dokument van'n lêer oop te maak.

Die volgende kode voorbeeld toon hoe om'n dokument oop te maak van'n lêer:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Laai van'n Stroom af

Om'n dokument van'n stroom oop te maak, eenvoudig'n stroom voorwerp wat die dokument bevat in die [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) konstruktor.

Die volgende kode voorbeeld toon hoe om'n dokument oop te maak van'n stroom:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
