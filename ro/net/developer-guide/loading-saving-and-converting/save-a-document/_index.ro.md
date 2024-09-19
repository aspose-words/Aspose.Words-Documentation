---
title: Salvează un document în C#
second_title: Aspose.Words pentru .NET
articleTitle: Salvează un document
linktitle: Salvează un document
type: docs
description: "Salvaţi un document în orice format suportat folosind C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /ro/net/save-a-document/
---

Cele mai multe sarcini pe care trebuie să le îndeplinești cu Aspose.Words implică salvarea unui document. Pentru a salva un document Aspose.Words oferă metoda [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) de clasa [Document](https://reference.aspose.com/words/net/aspose.words/document/). Există suprascrieri care permit salvarea unui document într-un fișier, un flux sau ASP.NET obiect HttpResponse pentru trimiterea către un browser client. Documentul poate fi salvat în orice format de salvare acceptat de Aspose.Words. Pentru lista tuturor formatelor de salvare acceptate, vezi enumerarea [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Salvează într-un fișier {#save-a-document-to-a-file}

Simplu folosiți metoda [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) cu numele fișierului. Aspose.Words va determina formatul de salvare din extensia fișierului pe care îl specificați.

Exemplul de cod următor arată cum să încărcaţi şi să salvaţi un document într-un fişier:

{{< gist "aspose-words-gists" "7ee438947078cf070c5bc36a4e45a18c" "load-and-save.cs" >}}

{{% alert color="primary" %}}

Puteți descărca fișierul șablon de acest exemplu din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Salvează într-un flux {#save-a-document-to-a-stream}

Pasaţi un obiect de flux la metoda [Save](https://reference.aspose.com/words/net/aspose.words/document/save/). Este necesar să specifici explicit formatul de salvare atunci când salvezi într-un flux.

Exemplul de cod următor arată cum să se încarce și să se salveze un document într-un flux:

{{< gist "aspose-words-gists" "7ee438947078cf070c5bc36a4e45a18c" "load-and-save-to-stream.cs" >}}

{{% alert color="primary" %}}

"Puteți descărca fișierul șablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)."

{{% /alert %}}

## Trimite un document către browserul unui client {#sending-a-document-to-a-client-browser}

Pentru a trimite un document către un browser client, folosiți o suprascriere specială care primește patru parametri: numele fișierului, formatul de salvare, tipul de salvare și un obiect ASP.NET HttpResponse. Modul în care documentul va fi prezentat utilizatorului este reprezentat de enumerarea [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/), care determină dacă documentul trimis către browser oferă o opțiune pentru deschiderea directă în browser sau în aplicația asociată cu extensia fișierului.

Exemplul următor de cod arată cum să trimiți un document la browser-ul client de la un ASP.NET cod:

{{< gist "aspose-words-gists" "7ee438947078cf070c5bc36a4e45a18c" "load-and-save.cs" >}}

{{% alert color="primary" %}}

Poţi descărca fișierul șablon al acestui exemplu de la [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

Această suprascriere a metodei `Save` nu este disponibilă atunci când se utilizează DLL-ul Profilului client .NET. Această DLL este localizată în **net3.5_ClientProfile** folder. .NET Client Profile exclude asamblări precum **System.Web**, deci **HttpResponse** nu este disponibilă. Aceasta este în întregime prin proiectare.

Acest lucru se poate manifesta ca o eroare:

**"Nicio suprasarcină pentru metoda 'Save' ia parametrii '4'."**

Dacă ai nevoie să folosești Aspose.Words în aplicația ASP.NET, este recomandat să folosești DLL-ul .NET 2.0 unde este disponibilă supraîncărcarea corectă, așa cum se descrie în articolul acesta.

## Salvează la PCL {#save-a-document-to-pcl}

Aspose.Words suportă salvarea unui document în PCL ( Printer Command Language). Aspose.Words poate salva documente în format PCL 6 (PCL 6 Enhanced sau PCL XL). Clasa `PclSaveOptions` poate fi utilizată pentru a specifica opțiuni suplimentare atunci când se salvează un document în formatul PCL.

Exemplul următor de cod arată cum să salveze un document la PCL folosind opțiuni de salvare:

{{< gist "aspose-words-gists" "7ee438947078cf070c5bc36a4e45a18c" "rasterize-transformed-elements.cs" >}}

## Vezi și

- Informaţii despre ASP.NET [HttpResponse](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8) obiect
