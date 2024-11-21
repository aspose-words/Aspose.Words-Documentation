---
title: Stoor'n Dokument in C#
second_title: Aspose.Words vir .NET
articleTitle: Stoor'n Dokument
linktitle: Stoor'n Dokument
type: docs
description: "Stoor'n dokument in enige ondersteun formaat met behulp van C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /af/net/save-a-document/
timestamp: 2024-07-09-19-00-42
---

Die meeste van die take wat jy nodig het om uit te voer met Aspose.Words behels die redding van'n dokument. Om te red van'n dokument Aspose.Words bied die [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) metode van die [Document](https://reference.aspose.com/words/net/aspose.words/document/) klas. Daar is oorlaai wat toelaat dat die redding van'n dokument na'n lêer, stroom, of ASP.NET HttpResponse voorwerp vir die stuur van'n kliënt leser. Die dokument kan gestoor word in enige stoor formaat ondersteun deur Aspose.Words. Vir die lys van al ondersteun red formate, sien die [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) opsomming.

## Stoor na'n Lêer {#save-a-document-to-a-file}

Gebruik eenvoudig die [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) metode met'n lêernaam. Aspose.Words sal die stoorformaat bepaal uit die lêeruitbreiding wat u spesifiseer.

Die volgende kode voorbeeld toon hoe om te laai en stoor'n dokument na'n lêer:

{{< gist "aspose-words-gists" "7ee438947078cf070c5bc36a4e45a18c" "load-and-save.cs" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Stoor na'n Stroom {#save-a-document-to-a-stream}

Gee'n stroom voorwerp na die [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) metode. Dit is nodig om die stoor formaat uitdruklik spesifiseer wanneer die stoor na'n stroom.

Die volgende kode voorbeeld toon hoe om te laai en stoor'n dokument na'n stroom:

{{< gist "aspose-words-gists" "7ee438947078cf070c5bc36a4e45a18c" "load-and-save-to-stream.cs" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Stuur'n Dokument na'n Kliëntblaaier {#sending-a-document-to-a-client-browser}

Om'n dokument na'n kliëntblaaier te stuur, gebruik'n spesiale oorlading wat vier parameters neem: lêernaam, stoor formaat, stoor tipe, en'n ASP.NET HttpResponse voorwerp. Die manier waarop die dokument aan die gebruiker aangebied sal word, word voorgestel deur die [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/) opsomming, wat bepaal of die dokument wat aan die blaaier gestuur word, 'n opsie sal bied om homself direk in die blaaier of in die toepassing wat met die lêeruitbreiding geassosieer word, oop te maak.

Die volgende kode voorbeeld toon hoe om'n dokument te stuur na die kliënt leser van'n ASP.NET kode:

{{< gist "aspose-words-gists" "7ee438947078cf070c5bc36a4e45a18c" "load-and-save.cs" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

Hierdie oorlading van die `Save` metode is nie beskikbaar wanneer die .NET Kliënt Profiel DLL gebruik word nie. Hierdie DLL is geleë in die **net3.5_ClientProfile** gids. Die .NET Kliënt Profiel sluit samestellings soos **System.Web**, dus, **HttpResponse** is nie beskikbaar nie. Dit is geheel en al ontwerp.

Dit kan as'n fout manifesteer:

**"Geen oorlading vir metode 'Stoor' neem '4' parameters nie."**

As jy Aspose.Words in ASP.NET aansoek moet gebruik, word dit aanbeveel om die .NET 2.0 DLL te gebruik waar die korrekte oorlading beskikbaar is, soos beskryf in hierdie artikel.

## Stoor na PCL {#save-a-document-to-pcl}

Aspose.Words ondersteun die stoor van'n dokument in PCL (Printer Command Language). Aspose.Words kan dokumente stoor in PCL 6 (PCL 6 Verbeterde of PCL XL) formaat. Die `PclSaveOptions` klas kan gebruik word om addisionele opsies te spesifiseer wanneer'n dokument in die PCL formaat gestoor word.

Die volgende kode voorbeeld toon hoe om'n dokument te stoor om PCL met behulp van stoor opsies:

{{< gist "aspose-words-gists" "7ee438947078cf070c5bc36a4e45a18c" "rasterize-transformed-elements.cs" >}}

## Sien Ook

- Inligting oor ASP.NET [HttpResponse](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8) voorwerp
