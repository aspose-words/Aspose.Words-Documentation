---
title: Maak skoon Voor Of Tydens'n Mail Merge Operasie
second_title: Aspose.Words vir C++
articleTitle: Maak skoon Voor Of Tydens'n Mail Merge Operasie
linktitle: Maak skoon Voor Of Tydens'n Mail Merge Operasie
type: docs
description: "Pas verskillende skoonmaak-en verwyderingsopsies toe, soos om samesmeltingsvelde te verwyder voordat u'n Mail Merge - operasie uitvoer of ongebruikte streke tydens'n Mail Merge - operasie verwyder."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /af/cpp/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Met Aspose.Words kan u verskillende skoonmaak-en verwyderingsopsies toepas, soos om samesmeltingsvelde te verwyder voordat u'n Mail Merge - bewerking uitvoer of ongebruikte streke tydens'n Mail Merge - bewerking verwyder. Hierdie afdeling sal verduidelik hoe om saamgesmelte velde te verwyder en hoe om'n verwyderingsopsie op te stel.

## Skrap Saamgesmelte Velde

As u'n lang sjabloon gebruik wat deur iemand anders geskep is, wil u moontlik al die samesmeltingsvelde wat reeds in die sjabloon bestaan, uitvee voordat u'n Mail Merge - bewerking uitvoer. U kan die [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/) - metode gebruik as u alle samesmeltingsvelde uit'n dokument wil verwyder sonder om'n Mail Merge - bewerking uit te voer. Hierdie metode word nie beïnvloed deur enige verwydering opsies van die [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/) eiendom en die uitvoering daarvan verwyder net saamgesmelt velde, nie enige bevat velde of leë paragrawe.

Die volgende kode voorbeeld toon hoe om alle merge velde uit jou sjabloon verwyder sonder die uitvoering van'n Mail Merge operasie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## Stel'n `Removing` Opsie Op

Aspose.Words stel jou in staat om ongemengde velde, streke en paragrawe uit'n sjabloon te verwyder tydens'n Mail Merge operasie met behulp van verwyderingsopsies.

Gebruik die **CleanupOptions** eienskap saam met die [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/) opsomming om die verwydering opsie stel. Spesifiseer watter items jy wil verwyder deur die volgende opsies te kies (jy kan meer as een kombineer):

* Verwyder leë paragrawe
* Verwyder ongebruikte streke
* Verwyder onbenutte velde
* Verwyder bevattende velde
* Verwyder statiese velde
* Verwyder leë tabel rye

Jy kan'n samesmelting veld as unmeng in een van die volgende voorwaardes oorweeg:

1. As die samesmelting veld in die data bron het nie'n kolom of'n kartering veld.
2. As die kombinering veld in die data bron bevat'n kartering veld, maar die data is van nul.

{{% alert color="primary" %}}

As u data saamvoeg deur afsonderlike databronne te gebruik, sal die verwyderingsopsies slegs geaktiveer word met die laaste oproep van die Mail Merge uitvoeringsmetode.

{{% /alert %}}

### Verwyder Leë Paragrawe

'n paragraaf wat slegs saamgevoegde velde insluit, sal leeg wees wanneer die Mail Merge proses al sy saamgevoegde velde as nie-saamgevoegde verwyder. Daardie leë paragrawe kan ongewenste spasie byvoeg en verander hoe die gegenereerde verslag sal lyk. Jy kan twee situasies met paragrawe in die gesig staar tydens'n Mail Merge operasie:

1. Die Mail Merge veld sal saamgesmelt word met leë data.
2. Die merge veld is ongebruik en sal verwyder word.

In beide situasies sal die **RemoveEmptyParagraphs** - opsie outomaties leë paragrawe uit die dokument verwyder. Dit sal ook die `TableStart` en TableEnd saamvoeg velde verwyder as die res van die paragraaf leeg is.

Die volgende kode voorbeeld toon hoe om die leë paragrawe te verwyder:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Verwyder Ongebruikte Velde

Aspose.Words laat jou toe om enige ongebruikte Mail Merge velde te verwyder deur die **RemoveUnusedFields** vlag aan **CleanupOptions** toe te ken. Hierdie opsie verwyder samesmeltingsvelde wat nie die ooreenstemmende data in die databron het nie.

Die volgende kode voorbeeld toon hoe om enige ongebruikte samesmelting velde van'n dokument outomaties te verwyder tydens'n Mail Merge operasie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### Verwyder Bevattende Velde

'n samesmeltingsveld kan binne'n ander veld soos'n **IF** veld of'n formule veld vervat word. Verwyder hierdie buitenste veld wanneer die samesmeltingsveld saamgevoeg of uit die dokument verwyder word.

Die volgende kode voorbeeld toon hoe om velde wat saamvoeg velde bevat verwyder uit'n dokument:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**Nota**

### Verwyder Leë Tabel Rye

Aspose.Words laat jou toe om leë tabel rye te verwyder deur die **RemoveEmptyTableRows** vlag aan **CleanupOptions** toe te ken. Hierdie opsie sal tabel rye wat leë saamvoeg velde bevat verwyder.

Die volgende kode voorbeeld toon hoe om te verwyder leë tafel rye wat bevat Mail Merge streke van'n dokument:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}
