---
title: Creați sau încărcați un Document în Python
second_title: Aspose.Words pentru Python via .NET
articleTitle: Crearea sau încărcarea unui Document
linktitle: Crearea sau încărcarea unui Document
type: docs
url: /ro/python-net/create-or-load-a-document/
description: "Creați un document gol sau pentru a-l încărca dintr-un fișier sau flux folosind Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
---

Aproape orice sarcină pe care doriți să o efectuați cu Aspose.Words implică încărcarea unui document. Clasa [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) reprezintă un document încărcat în memorie. Documentul are mai mulți constructori supraîncărcați, permițându-vă să creați un document gol sau să îl încărcați dintr-un fișier sau flux. Documentul poate fi încărcat în orice format de încărcare acceptat de Aspose.Words. Pentru lista tuturor formatelor de încărcare acceptate, consultați enumerarea [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/).

## Creați un Document nou

Vom apela constructorul [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) fără parametri pentru a crea un nou document gol. Dacă doriți să generați un document programatic, cel mai simplu mod este să utilizați clasa [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) pentru a adăuga conținutul documentului.

Următorul exemplu de cod arată cum să creați un document utilizând constructorul de documente:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Notați valorile implicite:

- Un document gol conține o secțiune cu parametrii impliciți, un paragraf gol, câteva stiluri de documente. De fapt, acest document este același cu rezultatul creării "documentului nou" în Microsoft Word.
- Dimensiunea hârtiei documentului este [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Încărcați un Document

Pentru a încărca un document existent în oricare dintre formatele [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/), treceți numele fișierului sau fluxul într-unul dintre constructorii [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Formatul documentului încărcat este determinat automat de extensia acestuia.

### Încărcați dintr-un fișier

Treceți un nume de fișier ca șir la constructorul [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) pentru a deschide un document existent dintr-un fișier.

Următorul exemplu de cod arată cum să deschideți un document dintr-un fișier:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Încărcați dintr-un flux

Pentru a deschide un document dintr-un flux, pur și simplu treceți un obiect de flux care conține documentul în constructorul [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Următorul exemplu de cod arată cum să deschideți un document dintr-un flux:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon al acestui exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
