---
title: Skep Of Laai'n Dokument in C#
second_title: Aspose.Words vir .NET
articleTitle: Skep Of Laai'n Dokument
linktitle: Skep Of Laai'n Dokument
type: docs
url: /af/net/create-or-load-a-document/
description: "Skep'n leë dokument of om dit te laai vanaf'n lêer of stroom gebruik C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Byna enige taak wat jy wil uit te voer met Aspose.Words behels die laai van'n dokument. Die `Document` klas verteenwoordig'n dokument gelaai in die geheue. Die dokument het verskeie oorlaai constructors sodat jy om te skep'n leë dokument of om dit te laai vanaf'n lêer of stroom. Die dokument gelaai kan word in enige vrag formaat ondersteun deur Aspose.Words. Vir die lys van al ondersteun lading formate, sien die [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) opsomming.

## Skep'n Nuwe Dokument {#create-a-new-document}

Ons sal die [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) konstruktor sonder parameters noem om'n nuwe leë dokument te skep. As jy'n dokument programmaties wil genereer, is die eenvoudigste manier om die [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) klas te gebruik om dokumentinhoud by te voeg.

Die volgende kode voorbeeld toon hoe om'n dokument te skep met behulp van die dokument bouer:

{{< gist "aspose-words-gists" "1d626c7186a318d22d022dc96dd91d55" "create-new-document.cs" >}}

{{% alert color="primary" %}}

Let op die verstekwaardes:

- 'n leë dokument bevat een afdeling met standaardparameters, een leë paragraaf, 'n paar dokumentstyle. Eintlik is hierdie dokument dieselfde as die resultaat van die skep van die "nuwe dokument" in Microsoft Word.
- Die dokument papier grootte is [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Laai'n Dokument {#load-a-document}

Om'n bestaande dokument in enige van die [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) formate te laai, gee die lêernaam of die stroom in een van die Dokumentkonstrukteurs. Die formaat van die gelaaide dokument word outomaties bepaal deur die uitbreiding daarvan.

### Vrag van'n Lêer {#load-from-a-file}

Slaag'n lêer naam as die string na die Dokument constructor oop te maak'n bestaande dokument van'n lêer.

Die volgende kode voorbeeld toon hoe om'n dokument oop te maak van'n lêer:

{{< gist "aspose-words-gists" "1d626c7186a318d22d022dc96dd91d55" "open-document.cs" >}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Laai vanaf'n Stroom {#load-from-a-stream}

Om'n dokument van'n stroom oop te maak, eenvoudig'n stroom voorwerp wat die dokument bevat in die Dokument konstruktor.

Die volgende kode voorbeeld toon hoe om'n dokument oop te maak van'n stroom:

{{< gist "aspose-words-gists" "1d626c7186a318d22d022dc96dd91d55" "open-from-stream.cs" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
