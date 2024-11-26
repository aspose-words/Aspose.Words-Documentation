---
title: Een document opslaan in C#
second_title: Aspose.Words voor .NET
articleTitle: Een document opslaan
linktitle: Een document opslaan
type: docs
description: "Een document opslaan in elk ondersteund formaat C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /nl/net/save-a-document/
timestamp: 2024-07-09-19-00-42
---

De meeste taken die u moet uitvoeren met Aspose.Words een document opslaan. Een document opslaan Aspose.Words levert de [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) methode van de [Document](https://reference.aspose.com/words/net/aspose.words/document/) Klasse. Er zijn overbelastingen die het opslaan van een document in een bestand, stream, of ASP.NET HttpResrespons object voor het verzenden naar een client browser. Het document kan worden opgeslagen in elk formaat dat wordt ondersteund door Aspose.Words. Voor de lijst van alle ondersteunde opslagformaten, zie de [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) Lijst.

## Opslaan in een bestand {#save-a-document-to-a-file}

Gebruik gewoon de [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) methode met een bestandsnaam. Aspose.Words zal bepalen het opslaan formaat van de bestandsextensie die u specificeert.

Het volgende voorbeeld van code laat zien hoe je een document in een bestand kunt laden en opslaan:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Opslaan in een stroom {#save-a-document-to-a-stream}

Geef een stream object door aan de [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) methode. Het is noodzakelijk om het opslagformaat expliciet op te geven bij het opslaan naar een stroom.

Het volgende voorbeeld van code laat zien hoe je een document in een stroom kunt laden en opslaan:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Een document naar een client-browser sturen {#sending-a-document-to-a-client-browser}

Om een document naar een client browser te sturen, gebruik een speciale overbelasting die vier parameters vereist: bestandsnaam, opslaan formaat, opslaan type, en een ASP.NET HttpRespons object. De wijze waarop het document aan de gebruiker wordt gepresenteerd wordt vertegenwoordigd door de [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/) Opsomming, die bepaalt of het document dat naar de browser wordt verzonden een optie zal bieden om zich direct te openen in de browser of in de toepassing die geassocieerd is met de bestandsextensie.

Het volgende code voorbeeld toont hoe u een document naar de client browser vanuit een ASP.NET code:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

U kunt het sjabloonbestand van dit voorbeeld downloaden van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

Deze overbelasting van de `Save` methode is niet beschikbaar bij het gebruik van de .NET Client Profile DLL. Deze DLL is gelegen in de **net3.5_ClientProfile** map. De .NET Cliëntprofiel sluit assemblages zoals **System.Web**, Derhalve, **HttpResponse** is niet beschikbaar. Dit is volledig ontworpen.

Dit kan zich voordoen als een fout:

**"Geen overbelasting voor methode 'Opslaan' neemt '4' parameters."**

Als u Aspose.Words in ASP.NET toepassing, Het wordt aanbevolen de .NET 2.0 DLL waar de juiste overbelasting beschikbaar is, zoals beschreven in dit artikel.

## Opslaan in PCL {#save-a-document-to-pcl}

Aspose.Words ondersteunt het opslaan van een document in PCL (Printer Command Language). Aspose.Words kan documenten opslaan in PCL 6 (PCL 6 Enhanced of PCL XL) formaat. De `PclSaveOptions` klasse kan worden gebruikt om extra opties op te geven bij het opslaan van een document in het PCL-formaat.

Het volgende codevoorbeeld laat zien hoe een document naar PCL kan worden opgeslagen met behulp van opslagopties:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Zie ook

- Informatie over ASP.NET [Antwoord](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8) object
