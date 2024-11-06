---
title: Gevorderde Mail Merge Funksies in C#
second_title: Aspose.Words vir .NET
articleTitle: Gevorderde Mail Merge Funksies
linktitle: Gevorderde Mail Merge Funksies
type: docs
description: "Aspose.Words vir .NET bied'n paar gevorderde mail merge funksies wat jou toelaat om verdere mail merge aanpassing uit te voer met behulp van C#. Byvoorbeeld, die verkryging van inligting oor sjabloon struktuur, die opstel van reëls, skoonmaak na'n mail merge operasie, en ander."
keywords: "use advanced mail merge features c#"
weight: 50
url: /af/net/advanced-mail-merge-features/
---

Aspose.Words bied'n paar addisionele mail merge eienskappe en metodes wat jou toelaat om verdere aanpassing van die mail merge proses uit te voer in eenvoudige mail merge of mail merge met streke.

Gevorderde mail merge funksies sluit in, maar is nie beperk tot, die verkryging van inligting oor sjabloon struktuur voor die uitvoering van'n mail merge operasie, die opstel van reëls vir'n mail merge operasie, en skoonmaak tydens'n mail merge operasie. Hierdie artikel dek slegs'n paar eienskappe en voorbeelde om u te wys hoe u gevorderde funksies kan gebruik.

## Stel Reëls vir Mail Merge Bedrywighede

Deur reëls by u sjabloon te voeg, kan u die werkvloeiproses meer effektief en buigsaam maak. Deur mail merge reëls te gebruik, kan jy inhoud opstel wat vinnig verander kan word en die behoefte om verskeie dokumente te genereer, vermy.

Aspose.Words laat jou toe om die mail merge aan te pas gebaseer op reëls wat loop wanneer jy die mail merge operasie en beheer samesmelting inligting uit te voer. Byvoorbeeld, wanneer jy'n e-pos of'n brief skep om aan al jou kliënte te stuur. U kan'n reël opstel sodat die brief verskillende data kan bevat op grond van die verskillende waardes in sekere velde van u databron.

Kyk na'n paar mail merge reëls wat jy kan implementeer.

### Implementeer die Volgende veld om saam te Smelt Data Rekords in die Huidige Dokument

Jy kan die [Next](https://reference.aspose.com/words/net/aspose.words.fields/fieldnext/) veld implementeer om die volgende data rekord saam te voeg in die huidige gevolglike saamgesmelte dokument, in plaas van die begin van'n nuwe saamgesmelte dokument. Dit word gebruik om verskeie rekords in een dokument te vertoon.

### Implementeer NextIf En SkipIf Velde Om Twee Uitdrukkings Te Vergelyk

Jy kan [NextIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/) veld of [SkipIf](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/) veld gebruik as jy twee uitdrukkings ([right](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/rightexpression/) en [left](https://reference.aspose.com/words/net/aspose.words.fields/fieldnextif/leftexpression/) uitdrukkings) met'n paar [operator](https://reference.aspose.com/words/net/aspose.words.fields/fieldskipif/comparisonoperator/) wil vergelyk.

**NextIf**

| **Field Name** | **Comparison Result "True"** | **Comparison Result "False"** |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `NextIf` | Aspose.Words sal die volgende data rekord saamvoeg in die huidige saamvoeg dokument, en al die saamvoeg velde in die sjabloon wat na *NextIf* veld sal vervang word deur waardes van die volgende data rekord eerder as die huidige data rekord. | Aspose.Words sal die volgende data rekord saamvoeg in'n nuwe saamvoeg dokument. |
| `SkipIf` | Aspose.Words sal die huidige samesmelting dokument kanselleer, beweeg na die volgende data rekord in die data bron, en begin'n nuwe samesmelting dokument. | Aspose.Words sal voortgaan met die huidige samesmeltingsdokument. |

Die volgende kode voorbeeld toon hoe om te vergelyk die twee uitdrukkings met **NextIf** of **SkipIf**:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "field-next.cs" >}}

## Verkry Inligting Oor Sjabloonstruktuur

Aspose.Words laat jou toe om verskillende inligting in jou sjabloon te versamel deur baie metodes. Byvoorbeeld, jy sal dalk die name van sommige samesmeltingsvelde of die hiërargie van streke in jou sjabloon moet kry. Nou sal ons die moontlike variante verduidelik om spesifieke inligting uit u sjabloon te bekom.

### Kry Saamvoeg Veldname

U kan'n scenario teëkom waar u data wil saamsmelt met samesmeltingsvelde wat deur ander geskep word, en in hierdie geval sal u nie seker wees oor die presiese name van samesmeltingsvelde nie. Dus, om die mail merge doel te bereik, moet u eers die name van alle samesmeltingsvelde lees en vertoon. Aspose.Words laat jou toe om'n versameling van merge veld name te kry met behulp van die [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) metode.

Die volgende kode voorbeeld toon hoe om name van alle samesmelting velde in die sjabloon te kry:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-field-names.cs" >}}

### Kry Inligting Oor Merge Regions

U kan'n scenario hê waar u wil verstaan hoe u sjabloon gestruktureer is deur die gespesifiseerde samesmeltingsgebiede. Jy kan'n paar metodes gebruik om al die nodige inligting oor merge streke te versamel of om die merge streke hiërargie in jou sjabloon te kry, soos die [GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) metode. Jy kan die eienskappe en metodes van die [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/) klas gebruik.Die volgende kode voorbeeld toon hoe om saam te smelt streke hiërargie kry:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-hierarchy.cs" >}}

Die volgende kode voorbeeld toon hoe om spesifieke samesmelting streke binne jou sjabloon te kry gebaseer op hul name:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "get-regions-by-name.cs" >}}

{{% alert color="primary" %}}

Jy kan dit aflaai die voorbeeld lêer van hierdie voorbeeld van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20regions.docx).

{{% /alert %}}

### Voeg Gemapte Velde By

Aspose.Words laat jou toe om outomaties name van velde in jou databron en name van mail merge velde in die sjabloon te karteer deur die [MappedDataFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/mappeddatafields/) eienskap te gebruik. Byvoorbeeld, as jy'n veldnaam genaamd "Van" in jou sjabloon het, en in jou databron het jy die veldnaam "Van" of'n ander variasie soos "Last_Name" of "LastName", dan sal die veld in die databron outomaties na die ooreenstemmende gekarteerde veld karteer. As'n samesmelting sjabloon saamgesmelt moet word met baie databronne, maak gemapte velde dit onnodig om die velde weer in die sjabloon in te voer om saam te stem met die veld name in die databasis.

Die volgende kode voorbeeld toon hoe om'n gemapte veld te voeg met behulp van die [Add](https://reference.aspose.com/words/net/aspose.words.mailmerging/mappeddatafieldcollection/add/) metode wanneer'n samesmelting veld in'n sjabloon en'n data veld in'n data bron het verskillende name:

{{< gist "aspose-words-gists" "b4bab1bf22437a86d8062e91cf154494" "mapped-data-fields.cs" >}}
