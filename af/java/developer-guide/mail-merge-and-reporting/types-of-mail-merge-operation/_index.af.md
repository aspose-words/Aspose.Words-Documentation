---
title: Tipes Mail Merge Operasie in Java
second_title: Aspose.Words vir Java
articleTitle: Tipes Mail Merge Operasie
linktitle: Tipes Mail Merge Operasie
type: docs
description: "Voer twee verskillende tipes mail merge operasies uit: eenvoudige mail merge en mail merge met streke. Simple mail merge herhaal die hele dokument per databron rekord, terwyl mail merge met streke herhaal slegs aangewese streke per rekord met behulp van Java."
keywords: "how to execute mail merge java, Mail Merge Java, Simple Mail Merge"
weight: 20
url: /af/java/types-of-mail-merge-operations/
timestamp: 2024-01-27-14-07-04
---

Die hoofgedagte van mail merge is om outomaties'n dokument of verskeie dokumente te skep gebaseer op jou sjabloon en data wat van jou databron afgelei is. Aspose.Words laat jou toe om twee verskillende tipes mail merge operasies uit te voer: eenvoudige mail merge en mail merge met streke.

Die mees algemene voorbeeld van die gebruik van simple mail merge is wanneer jy'n dokument vir verskillende kliënte wil stuur deur hul name aan die begin van die dokument in te sluit. Om dit te doen, moet jy samesmeltingsvelde soos *First Name* en *Last Name* in jou sjabloon skep, en dit dan invul met data van jou databron. Terwyl die mees algemene voorbeeld van die gebruik van mail merge met streke is wanneer jy wil'n dokument wat spesifieke bestellings met die lys van alle items binne elke bestelling sluit stuur. Om dit te doen, sal jy nodig het om saam te smelt streke te skep binne jou sjabloon – eie streek vir elke bestelling, ten einde dit te vul met al die vereiste data vir die items.

Die belangrikste verskil tussen beide samesmelting operasies is dat eenvoudige mail merge (sonder streke) herhaal die hele dokument per elke data bron rekord, terwyl mail merge met streke herhaal slegs aangewese streke per rekord. Jy kan dink aan'n eenvoudige mail merge operasie as'n spesifieke geval van samesmelting met streke waar die enigste streek is die hele dokument.

{{% alert color="primary" %}}

Die [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) klas verteenwoordig'n mail merge funksionaliteit. Met sy eienskappe kan u die vereiste gedrag aanpas voordat u'n mail merge - bewerking uitvoer.

{{% /alert %}}

## Eenvoudige Mail Merge Operasie {#simple-mail-merge-operation}

'n eenvoudige mail merge word gebruik om die mail merge velde binne jou sjabloon te vul met die vereiste data van jou databron (enkel tabel verteenwoordiging). So dit is soortgelyk aan die klassieke mail merge in Microsoft Word.

U kan een of meer samesmeltingsvelde in u sjabloon byvoeg en dan die eenvoudige mail merge - bewerking uitvoer. Dit word aanbeveel om dit te gebruik as u sjabloon geen samesmeltingsgebiede bevat nie.

Die belangrikste beperking van die gebruik van hierdie tipe is dat die hele dokumentinhoud vir elke rekord in die databron herhaal sal word.

### Hoe Om'n Eenvoudige Mail Merge Operasie {#how-to-execute-a-simple-mail-merge-operation}Uit Te Voer

Sodra u sjabloon gereed is, kan u die eenvoudige mail merge - bewerking begin uitvoer. Aspose.Words laat jou toe om'n eenvoudige mail merge operasie uit te voer met verskillende [Execute methods](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-com.aspose.words.IMailMergeDataSource) wat verskeie data voorwerpe as die databron aanvaar.

Die volgende kode voorbeeld toon hoe om'n eenvoudige mail merge operasie uit te voer met behulp van een van die [Execute](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-java.lang.String---java.lang.Object) metode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-ExecuteSimpleMailMerge.java" >}}

U kan die verskil tussen die dokument sien voordat u simple mail mergeuitvoer:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template_aspose_words_java" style="width:300px"/>

En na die uitvoering van eenvoudige mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge_aspose_words_java" style="width:300px"/>

### Hoe Om Verskeie Saamgesmelte Dokumente Te Skep

In Aspose.Words, die standaard mail merge operasie vul slegs'n enkele dokument met inhoud van jou data bron. So, jy sal die mail merge operasie verskeie kere moet uitvoer om verskeie saamgesmelte dokumente as'n uitset te skep.

Die volgende kode voorbeeld toon hoe om verskeie saamgesmelte dokumente te genereer tydens'n mail merge operasie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-ProduceMultipleDocumentsDuringMailMerge-ProduceMultipleDocumentsDuringMailMerge.java" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

## Mail Merge Met Streke

U kan verskillende streke in u sjabloon skep om spesiale gebiede te hê wat u eenvoudig met u data kan vul. Gebruik die mail merge met streke as u tabelle wil invoeg, rye met herhalende data om u dokumente dinamies te laat groei deur die streke binne u sjabloon te spesifiseer.

Jy kan geneste (kind) streke skep sowel as saamvoeg streke. Die grootste voordeel van die gebruik van hierdie tipe is om dele binne'n dokument dinamies te verhoog. Sien meer besonderhede in die volgende artikel "Nested Mail Merge with Regions".

{{% alert color="primary" %}}

Inligting oor'n mail merge streek kan verkry word deur die [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/) klas te gebruik.

{{% /alert %}}

### Hoe om Mail Merge Met Streke Uit Te Voer

'n mail merge streek is'n spesifieke deel binne'n dokument wat'n beginpunt en'n eindpunt het. Beide punte word voorgestel as mail merge velde wat spesifieke name *"TableStart:XXX"* en *"TableEnd:XXX"* het. Alle inhoud wat in'n mail merge streek ingesluit is, sal outomaties herhaal word vir elke rekord in die databron.

Aspose.Words laat jou toe om mail merge uit te voer met streke wat verskillende [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/) gebruik wat verskillende data-voorwerpe as die databron aanvaar.

As'n eerste stap, moet ons die `DataSet` te skep om dit later as'n insette parameter om die `ExecuteWithRegions` metode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-CreateDataSet.java" >}}

Die volgende kode voorbeeld toon hoe om mail merge uit te voer met streke met behulp van die [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#executeWithRegions-com.aspose.words.net.System.Data.DataSet) metode:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-MailMergeWithRegions.java" >}}

U kan die verskil tussen die dokument sien voordat u mail merge met streke uitvoer:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template_aspose_words_java" style="width:850px"/>

En na die uitvoering van mail merge met streke:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute_aspose_words_java" style="width:850px"/>

### Beperkings van Mail Merge met Streke

Daar is'n paar belangrike punte wat jy moet oorweeg wanneer die uitvoering van'n mail merge met streke:

* Die beginpunt *TableStart:Orders* en die eindpunt *TableEnd:Orders* moet albei in dieselfde ry of sel wees. Byvoorbeeld, as jy'n samesmelting streek begin in'n sel van'n tabel, moet jy die samesmelting streek eindig in dieselfde ry as die eerste sel.
* Die merge veld naam moet ooreenstem met die kolom se naam in jou DataTable. Tensy u gekarteerde velde gespesifiseer het, sal die mail merge met streke nie suksesvol wees vir enige samesmeltingsveld wat'n ander naam as die kolom se naam het nie.

As een van hierdie reëls oortree word, sal jy onverwagte resultate kry of'n uitsondering kan gegooi word.

{{% alert color="primary" %}}

As jy nie mail merge streke gebruik nie, sal dit soortgelyk wees aan die Microsoft Word mail merge, en die hele dokumentinhoud sal herhaal word vir elke rekord in die databron.

{{% /alert %}}

