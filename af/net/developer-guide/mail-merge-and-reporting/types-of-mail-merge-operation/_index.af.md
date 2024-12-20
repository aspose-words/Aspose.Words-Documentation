---
title: Tipes Mail Merge Operasie in C#
second_title: Aspose.Words vir .NET
articleTitle: Tipes Mail Merge Operasie
linktitle: Tipes Mail Merge Operasie
type: docs
description: "Voer twee verskillende tipes Mail Merge operasies uit: eenvoudige Mail Merge en Mail Merge met streke wat C# gebruik. Simple Mail Merge herhaal die hele dokument per databron rekord, terwyl Mail Merge met streke herhaal slegs aangewese streke per rekord."
keywords: "how to execute Mail Merge c#"
weight: 20
url: /af/net/types-of-mail-merge-operations/
timestamp: 2024-07-11-08-07-06
---

Die hoofgedagte van Mail Merge is om outomaties'n dokument of verskeie dokumente te skep gebaseer op jou sjabloon en data wat van jou databron afgelei is. Aspose.Words laat jou toe om twee verskillende tipes Mail Merge operasies uit te voer: eenvoudige Mail Merge en Mail Merge met streke.

Die mees algemene voorbeeld van die gebruik van simple Mail Merge is wanneer jy'n dokument vir verskillende kliënte wil stuur deur hul name aan die begin van die dokument in te sluit. Om dit te doen, moet jy samesmeltingsvelde soos *First Name* en *Last Name* in jou sjabloon skep, en dit dan invul met data van jou databron. Terwyl die mees algemene voorbeeld van die gebruik van Mail Merge met streke is wanneer jy wil'n dokument wat spesifieke bestellings met die lys van alle items binne elke bestelling sluit stuur. Om dit te doen, sal jy nodig het om saam te smelt streke te skep binne jou sjabloon – eie streek vir elke bestelling, ten einde dit te vul met al die vereiste data vir die items.

Die belangrikste verskil tussen beide samesmelting operasies is dat eenvoudige Mail Merge (sonder streke) herhaal die hele dokument per elke data bron rekord, terwyl Mail Merge met streke herhaal slegs aangewese streke per rekord. Jy kan dink aan'n eenvoudige Mail Merge operasie as'n spesifieke geval van samesmelting met streke waar die enigste streek is die hele dokument.

{{% alert color="primary" %}}

Die [MailMerge](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/) klas verteenwoordig'n Mail Merge funksionaliteit. Met sy eienskappe kan u die vereiste gedrag aanpas voordat u'n Mail Merge - bewerking uitvoer.

{{% /alert %}}

## Eenvoudige Mail Merge Operasie {#simple-mail-merge-operation}

'n eenvoudige Mail Merge word gebruik om die Mail Merge velde binne jou sjabloon te vul met die vereiste data van jou databron (enkel tabel verteenwoordiging). So dit is soortgelyk aan die klassieke Mail Merge in Microsoft Word.

U kan een of meer samesmeltingsvelde in u sjabloon byvoeg en dan die eenvoudige Mail Merge - bewerking uitvoer. Dit word aanbeveel om dit te gebruik as u sjabloon geen samesmeltingsgebiede bevat nie.

Die belangrikste beperking van die gebruik van hierdie tipe is dat die hele dokumentinhoud vir elke rekord in die databron herhaal sal word.

### Hoe Om'n Eenvoudige Mail Merge Operasie {#how-to-execute-a-simple-mail-merge-operation}Uit Te Voer

Sodra u sjabloon gereed is, kan u die eenvoudige Mail Merge - bewerking begin uitvoer. Aspose.Words laat jou toe om'n eenvoudige Mail Merge operasie uit te voer met verskillende [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/#execute/) wat verskeie data voorwerpe as die databron aanvaar.

Die volgende kode voorbeeld toon hoe om'n eenvoudige Mail Merge operasie uit te voer met behulp van een van die [Execute](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/) metode:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "execute-simple-mail-merge.cs" >}}

U kan die verskil tussen die dokument sien voordat u simple mail mergeuitvoer:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template" style="width:300px"/>

En na die uitvoering van eenvoudige mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge" style="width:300px"/>

### Hoe Om Verskeie Saamgesmelte Dokumente Te Skep

In Aspose.Words, die standaard Mail Merge operasie vul slegs'n enkele dokument met inhoud van jou data bron. So, jy sal die Mail Merge operasie verskeie kere moet uitvoer om verskeie saamgesmelte dokumente as'n uitset te skep.

Die volgende kode voorbeeld toon hoe om verskeie saamgesmelte dokumente te genereer tydens'n Mail Merge operasie:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "produce-multiple-documents.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

## Mail Merge Met Streke

U kan verskillende streke in u sjabloon skep om spesiale gebiede te hê wat u eenvoudig met u data kan vul. Gebruik die Mail Merge met streke as u tabelle wil invoeg, rye met herhalende data om u dokumente dinamies te laat groei deur die streke binne u sjabloon te spesifiseer.

Jy kan geneste (kind) streke skep sowel as saamvoeg streke. Die grootste voordeel van die gebruik van hierdie tipe is om dele binne'n dokument dinamies te verhoog. Sien meer besonderhede in die volgende artikel "Nested Mail Merge with Regions".

{{% alert color="primary" %}}

Inligting oor'n Mail Merge streek kan verkry word deur die [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/) klas te gebruik.

{{% /alert %}}

### Hoe om Mail Merge Met Streke Uit Te Voer

'n Mail Merge streek is'n spesifieke deel binne'n dokument wat'n beginpunt en'n eindpunt het. Beide punte word voorgestel as Mail Merge velde wat spesifieke name *"TableStart:XXX"* en *"TableEnd:XXX"* het. Alle inhoud wat in'n Mail Merge streek ingesluit is, sal outomaties herhaal word vir elke rekord in die databron.

Aspose.Words laat jou toe om Mail Merge uit te voer met streke wat verskillende [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/) gebruik wat verskillende data-voorwerpe as die databron aanvaar.

As'n eerste stap, moet ons die `DataSet` te skep om dit later as'n insette parameter om die `ExecuteWithRegions` metode:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "create-data-set.cs" >}}

Die volgende kode voorbeeld toon hoe om Mail Merge uit te voer met streke met behulp van die [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/) metode:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "mail-merge-with-regions.cs" >}}

U kan die verskil tussen die dokument sien voordat u Mail Merge met streke uitvoer:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

En na die uitvoering van Mail Merge met streke:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

### Beperkings van Mail Merge met Streke

Daar is'n paar belangrike punte wat jy moet oorweeg wanneer die uitvoering van'n Mail Merge met streke:

* Die beginpunt *TableStart:Orders* en die eindpunt *TableEnd:Orders* moet albei in dieselfde ry of sel wees. Byvoorbeeld, as jy'n samesmelting streek begin in'n sel van'n tabel, moet jy die samesmelting streek eindig in dieselfde ry as die eerste sel.
* Die merge veld naam moet ooreenstem met die kolom se naam in jou DataTable. Tensy u gekarteerde velde gespesifiseer het, sal die Mail Merge met streke nie suksesvol wees vir enige samesmeltingsveld wat'n ander naam as die kolom se naam het nie.

As een van hierdie reëls oortree word, sal jy onverwagte resultate kry of'n uitsondering kan gegooi word.

{{% alert color="primary" %}}

As jy nie Mail Merge streke gebruik nie, sal dit soortgelyk wees aan Microsoft Word mail merge, en die hele dokumentinhoud sal herhaal word vir elke rekord in die databron.

{{% /alert %}}

