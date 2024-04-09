---
title: Uložit dokument do C#
second_title: Aspose.Words místo .NET
articleTitle: Uložit dokument
linktitle: Uložit dokument
type: docs
description: "Uložit dokument v jakémkoliv podporovaném formátu pomocí C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /cs/net/save-a-document/
---

Většina úkolů, které musíte splnit Aspose.Words zahrnuje uložení dokumentu. Uložit dokument Aspose.Words poskytuje [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) způsob [Document](https://reference.aspose.com/words/net/aspose.words/document/) třída. Existují přetížení, které umožňují uložení dokumentu do souboru, stream, nebo ASP.NET HttpResponse objekt pro odesílání do klientského prohlížeče. Dokument lze uložit v libovolném formátu uložení podporovaném Aspose.Words. Seznam všech podporovaných formátů uložení viz [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) výčtu.

## Uložit do souboru {#save-a-document-to-a-file}

Jednoduše použijte [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) metoda s názvem souboru. Aspose.Words určí formát uložení z přípony souboru, kterou určíte.

Následující příklad kódu ukazuje, jak načíst a uložit dokument do souboru:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Uložit do proudu {#save-a-document-to-a-stream}

Poslat objekt proudu do [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) metoda. Je nutné výslovně určit formát uložení při uložení do proudu.

Následující příklad kódu ukazuje, jak načíst a uložit dokument do streamu:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Poslat dokument klientskému prohlížeči {#sending-a-document-to-a-client-browser}

Pro odeslání dokumentu do klientského prohlížeče použijte speciální přetížení, které vyžaduje čtyři parametry: název souboru, uložit formát, uložit typ a ASP.NET HttpResponse objekt. Způsob, jakým bude dokument předložen uživateli je reprezentován [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/) číslice, která určuje, zda dokument odeslaný prohlížeči poskytne možnost otevřít se přímo v prohlížeči nebo v aplikaci asociované s příponou souboru.

Následující příklad kódu ukazuje, jak odeslat dokument klientskému prohlížeči z ASP.NET kód:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

Můžete si stáhnout soubor šablony tohoto příkladu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

Toto přetížení `Save` při použití .NET Profil klienta DLL. Tento DLL se nachází v **net3.5_ClientProfile** Složka. • .NET Profil klienta nezahrnuje sestavy jako např. **System.Web**, Proto **HttpResponse** není k dispozici. Tohle je jen podle plánu.

To se může projevit jako chyba:

**"Žádné přetížení pro metodu 'Uložit' bere parametry '4'."**

Pokud potřebujete použít Aspose.Words tro ASP.NET žádost, Doporučuje se užívat .NET 2.0 DLL, kde je k dispozici správné přetížení, jak je popsáno v tomto článku.

## Uložit do PCL {#save-a-document-to-pcl}

Aspose.Words podporuje uložení dokumentu do PCL (Printer Command Language). Aspose.Words lze uložit dokumenty do formátu PCL 6 (PCL 6 Enhanced nebo PCL XL). • `PclSaveOptions` třída může být použita k určení dalších možností při uložení dokumentu do formátu PCL.

Následující příklad kódu ukazuje, jak uložit dokument do PCL pomocí možností uložení:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Viz také

- Informace o ASP.NET [HttpResponse](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8) objekt
