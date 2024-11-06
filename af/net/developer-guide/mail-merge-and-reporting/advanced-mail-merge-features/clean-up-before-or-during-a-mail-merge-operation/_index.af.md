---
title: Maak skoon Voor of Gedurende Mail Merge
second_title: Aspose.Words vir .NET
articleTitle: Maak skoon Voor Of Tydens'n Mail Merge Operasie
linktitle: Maak skoon Voor Of Tydens'n Mail Merge Operasie
type: docs
description: "Pas verskillende skoonmaak-en verwyderingsopsies toe, soos om samesmeltingsvelde te verwyder voordat u'n mail merge - bewerking uitvoer of ongebruikte streke tydens'n mail merge - bewerking met C# verwyder."
keywords: "cleanup options mail merge c#"
weight: 10
url: /af/net/clean-up-before-or-during-mail-merge/
---

Met Aspose.Words kan u verskillende skoonmaak-en verwyderingsopsies toepas, soos om samesmeltingsvelde te verwyder voordat u'n mail merge - bewerking uitvoer of ongebruikte streke tydens'n mail merge - bewerking verwyder. Hierdie afdeling sal verduidelik hoe om saamgesmelte velde te verwyder en hoe om'n verwyderingsopsie op te stel.

## Skrap Saamgesmelte Velde

As u'n lang sjabloon gebruik wat deur iemand anders geskep is, wil u moontlik al die samesmeltingsvelde wat reeds in die sjabloon bestaan, uitvee voordat u'n mail merge - bewerking uitvoer. U kan die [DeleteFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/deletefields/) - metode gebruik as u alle samesmeltingsvelde uit'n dokument wil verwyder sonder om'n mail merge - bewerking uit te voer. Hierdie metode word nie beïnvloed deur enige verwydering opsies van die [CleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/cleanupoptions/) eiendom en die uitvoering daarvan verwyder net saamgesmelt velde, nie enige bevat velde of leë paragrawe.

Die volgende kode voorbeeld toon hoe om te verwyder almal saam te smelt velde van jou sjabloon sonder die uitvoering van'n mail merge operasie:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "delete-fields.cs" >}}

## Die opstel van'n `Removing` Opsie

Aspose.Words stel jou in staat om ongemengde velde, streke en paragrawe uit'n sjabloon te verwyder tydens'n mail merge operasie met behulp van verwyderingsopsies.

Gebruik die **CleanupOptions** eienskap saam met die [MailMergeCleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergecleanupoptions/) opsomming om die verwydering opsie stel. Spesifiseer watter items jy wil verwyder deur die volgende opsies te kies (jy kan meer as een kombineer):

* Verwyder leë paragrawe
* Verwyder ongebruikte streke
* Verwyder onbenutte velde
* Verwyder bevattende velde
* Verwyder statiese velde
* Verwyder leë tabel rye

Jy kan'n samesmelting veld as unmeng in een van die volgende voorwaardes oorweeg:

1. As die samesmelting veld in die data bron het nie'n kolom of'n kartering veld.
2. As die samesmelting veld in die data bron bevat'n kartering veld maar die data is nul.

{{% alert color="primary" %}}

As u data saamvoeg deur afsonderlike databronne te gebruik, sal die verwyderingsopsies slegs geaktiveer word met die laaste oproep van mail merge uitvoeringsmetode.

{{% /alert %}}

### Verwyder Leë Paragrawe

'n paragraaf wat slegs saamgevoegde velde insluit, sal leeg wees wanneer die mail merge proses al sy saamgevoegde velde as nie-saamgevoegde verwyder. Daardie leë paragrawe kan ongewenste spasie byvoeg en verander hoe die gegenereerde verslag sal lyk. Jy kan twee situasies met paragrawe in die gesig staar tydens'n mail merge operasie:

1. Die mail merge veld sal saamgesmelt word met leë data.
2. Die merge veld is ongebruik en sal verwyder word.

In beide situasies sal die **RemoveEmptyParagraphs** - opsie outomaties leë paragrawe uit die dokument verwyder. Dit sal ook die `TableStart` en TableEnd saamvoeg velde verwyder as die res van die paragraaf leeg is.

Die volgende kode voorbeeld toon hoe om die leë paragrawe te verwyder:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-paragraphs.cs" >}}

{{% alert color="primary" %}}

Jy kan dit aflaai die voorbeeld lêer van hierdie voorbeeld van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### Verwyder Ongebruikte Streke

In vorige weergawes van Aspose.Words is leë mail merge streke outomaties uit die dokument verwyder tydens die mail merge operasie. Met Die nuutste weergawe Van Aspose.woorde, leë mail merge streke bly na die mail merge operasie by verstek. U kan egter die **RemoveUnusedRegions** - opsie gebruik om die ongebruikte mail merge - streke tydens die mail merge - operasie te verwyder. Byvoorbeeld, jy kan'n dokument saamvoeg met'n leë databron wat geen data tabelle bevat wat lei tot ongebruikte streke in die dokument nie.

Die volgende kode voorbeeld toon hoe om die ongebruikte samesmelting streke te verwyder:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unmerged-regions.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**Nota**

### Verwyder Onbenutte Velde

Aspose.Words laat jou toe om enige ongebruikte mail merge velde te verwyder deur die **RemoveUnusedFields** vlag aan **CleanupOptions** toe te ken. Hierdie opsie verwyder samesmeltingsvelde wat nie die ooreenstemmende data in die databron het nie.

Die volgende kode voorbeeld toon hoe om te verwyder enige ongebruikte saam te smelt velde van'n dokument outomaties tydens'n mail merge operasie:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unused-fields.cs" >}}

### Verwyder Bevattende Velde

'n samesmeltingsveld kan binne'n ander veld soos'n **IF** veld of'n formule veld vervat word. Verwyder die buitenste veld wanneer die merge field is saamgesmelt of verwyder uit die dokument.

Die volgende kode voorbeeld toon hoe om velde wat saamvoeg velde bevat verwyder uit'n dokument:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-containing-fields.cs" >}}

**Nota**

### Verwyder Leë Tabel Rye

Aspose.Words laat jou toe om leë tabel rye te verwyder deur die **RemoveEmptyTableRows** vlag aan **CleanupOptions** toe te ken. Hierdie opsie sal tabel rye wat leë saamvoeg velde bevat verwyder.

Die volgende kode voorbeeld toon hoe om leë tabel rye wat mail merge streke bevat uit'n dokument te verwyder:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-table-rows.cs" >}}
