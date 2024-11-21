---
title: Hoe Om Persoonlike Logika Toe Te Pas Op Ongemengde Streke
second_title: Aspose.Words vir Java
articleTitle: Hoe Om Persoonlike Logika Toe Te Pas Op Ongemengde Streke
linktitle: Hoe Om Persoonlike Logika Toe Te Pas Op Ongemengde Streke
type: docs
description: "Pas persoonlike logika toe op ongemengde streke tydens'n mail merge operasie met behulp van Java."
weight: 70
url: /af/java/how-to-apply-custom-logic-to-unmerged-regions/
timestamp: 2024-01-27-14-07-04
---

Daar is'n paar situasies waar die volledige verwydering van ongemengde streke uit die dokument gedurende mail merge nie gewens word nie of die dokument onvolledig lyk. Dit kan voorkom wanneer die afwesigheid van insette data moet vertoon word aan die gebruiker in die vorm van'n boodskap in plaas van die streek heeltemal verwyder.

Daar is ook tye wanneer die verwydering van die ongebruikte streek op sigself nie genoeg is nie, byvoorbeeld as die streek voorafgegaan word deur'n titel of die streek in'n tabel vervat is. As hierdie streek ongebruik is, sal die titel en tabel steeds bly nadat die streek verwyder is, wat nie op sy plek in die dokument sal lyk nie.

Hierdie artikel bied'n oplossing om handmatig te definieer hoe ongebruikte streke in die dokument hanteer word. Die basis kode vir hierdie funksie word verskaf en kan maklik hergebruik word in'n ander projek.

Die logika wat toegepas moet word op elke streek is gedefinieer binne'n klas wat die [IFieldMergingCallback](https://reference.aspose.com/words/java/com.aspose.words/ifieldmergingcallback/) koppelvlak implementeer. Op dieselfde manier kan'n mail merge handelaar ingestel word om te beheer hoe elke veld saamgesmelt word, hierdie handelaar kan ingestel word om aksies op elke veld in'n ongebruikte streek of op die streek as geheel uit te voer. Binne hierdie hanteerder kan u die kode instel om die teks van'n streek te verander, nodusse of leë rye en selle te verwyder, ens.

In hierdie voorbeeld sal ons die dokument hieronder gebruik. Dit bevat geneste streke en'n streek wat in'n tabel vervat is.

![apply-custom-logic-to-unmerged-regions-aspose-words-java](how-to-apply-custom-logic-to-unmerged-regions-1.png)

As'n vinnige demonstrasie, kan ons'n voorbeeld databasis op die voorbeeld dokument met die [MailMergeCleanupOptions.REMOVE_UNUSED_REGIONS](https://reference.aspose.com/words/java/com.aspose.words/mailmergecleanupoptions/) vlag geaktiveer uit te voer. Hierdie eienskap sal outomaties ongemengde streke uit die dokument verwyder tydens a mail merge.

Die databron bevat twee rekords vir die **StoreDetails** streek, maar het doelbewus enige data vir die kind **ContactDetails** streke vir een van die rekords. Verder het die **Suppliers** streek ook geen data rye nie. Dit sal veroorsaak dat ongebruikte streke in die dokument bly. Die resultaat na die samesmelting van die dokument met hierdie databron is hieronder.

![merged-regions-aspose-words-java](how-to-apply-custom-logic-to-unmerged-regions-2.png)

Soos op die prent aangedui, kan jy sien dat die **ContactDetails** streek vir die tweede rekord en **Suppliers** streke outomaties deur die mail merge enjin verwyder is omdat hulle geen data het nie. Daar is egter'n paar kwessies wat hierdie uitset dokument onvolledig laat lyk:

- Die **ContactDetails** streek laat nog'n paragraaf met die teks "Kontakbesonderhede".
- In dieselfde geval is daar geen aanduiding dat daar geen telefoonnommers is nie, net'n leë spasie wat tot verwarring kan lei.
- Die tabel en titel wat verband hou met die **Suppliers** streek bly ook nadat die streek binne die tabel verwyder is.

Die tegniek wat in hierdie artikel verskaf word, demonstreer hoe om persoonlike logika toe te pas op elke nie-geïntegreerde streek om hierdie probleme te vermy.

**Die Oplossing**

Om logika handmatig toe te pas op elke ongebruikte streek in die dokument maak ons gebruik van funksies wat reeds beskikbaar is in Aspose.Words.

Die mail merge enjin bied'n eienskap om ongebruikte streke te verwyder deur die **MailMergeCleanupOptions.RemoveUnusedRegions** vlag. Dit kan gedeaktiveer word sodat sulke streke onaangeraak gelaat word tydens'n mail merge. Dit laat ons toe om die ongemengde streke in die dokument te verlaat en dit self handmatig te hanteer.

Ons kan dan voordeel trek uit die **MailMerge.FieldMergingCallback** eienskap as'n middel om ons eie persoonlike logika toe te pas op hierdie ongemengde streke tydens mail merge deur die gebruik van'n handelaar klas implementering van die **IFieldMergingCallback** koppelvlak.

Hierdie kode binne die handelaar klas is die enigste klas wat jy sal nodig hê om te verander ten einde die logika toegepas op unmigged streke te beheer. Die ander kode in hierdie voorbeeld kan hergebruik word sonder verandering in enige projek.

Hierdie voorbeeldprojek demonstreer hierdie tegniek. Dit behels die volgende stappe:

1. Voer mail merge uit op die dokument deur u databron te gebruik. Die **MailMergeCleanupOptions.RemoveUnusedRegions** vlag is gedeaktiveer vir nou wil ons hê die streke moet bly sodat ons hulle handmatig kan hanteer. Enige streke sonder data sal nie in die dokument saamgevoeg word nie.
1. Noem die **ExecuteCustomLogicOnEmptyRegions** metode. Hierdie metode word in hierdie steekproef verskaf. Dit voer aksies uit wat die gespesifiseerde handelaar toelaat om vir elke nie-geïntegreerde streek geroep te word. Hierdie metode is herbruikbaar en kan onveranderd gekopieer word na enige projek wat dit vereis (saam met enige afhanklike metodes).Hierdie metode voer die volgende stappe:
   1. Stel die hanteerder wat deur die gebruiker gespesifiseer word op die **MailMerge.FieldMergingCallback** eienskap.
   1. Roep die **CreateDataSourceFromDocumentRegions** metode wat die gebruiker se **Document** en **ArrayList** bevat streke name aanvaar. Hierdie metode sal'n dummy data bron met tabelle vir elke nie-samesmelting streek in die dokument te skep.
   1. Voer mail merge op die dokument uit met behulp van die dummy databron. Wanneer mail merge uitgevoer word met hierdie data bron dit laat die gebruiker-gespesifiseerde handelaar genoem word vir elke unmerge streek en die persoonlike logika toegepas

**Die Kode**

Die implementering vir die **ExecuteCustomLogicOnEmptyRegions** metode word hieronder gevind. Hierdie metode aanvaar verskeie parameters:

1. Die [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) voorwerp wat ongemengde streke bevat wat deur die verbygaande handelaar hanteer moet word.
1. Die handelaar klas wat die logika definieer om van toepassing te wees op nie-geïntegreerde streke. Hierdie handelaar moet die [IFieldMergingCallback](https://www.aspose.com/api/java/words/com.aspose.words/interfaces/IFieldMergingCallback) koppelvlak.
1. Deur die gebruik van die toepaslike oorlading, kan die metode ook'n derde parameter aanvaar'n lys van streek name as snare. As dit gespesifiseer is, sal slegs streekname wat oorbly van die dokument wat in die lys gespesifiseer is, handmatig hanteer word. Ander streke wat teëgekom word, sal nie deur die handelaar geroep en outomaties verwyder word nie. Wanneer die oorlading met slegs twee parameters gespesifiseer word, word elke oorblywende streek in die dokument ingesluit deur die metode wat handmatig hanteer moet word.

**Voorbeeld**

Wys hoe om persoonlike logika uit te voer op ongebruikte streke met behulp van die gespesifiseerde hanteerder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ExecuteCustomLogicOnUnusedRegions.java" >}}

{{% alert color="primary" %}}

As jy oorweeg om die **ExecuteCustomLogicOnEmptyRegions** metode agtereenvolgens met verskillende handelaars (bv elke handelaar pas logika op sekere velde) dan sal jy nodig het om die verwydering van ongebruikte streke uit te skakel sodat sulke streke nie verwyder word tussen hierdie oproepe.

{{% /alert %}}

**Voorbeeld**

Definieer die metode wat gebruik word om ongemengde streke handmatig te hanteer.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ManuallyHandleUnmergedRegions.java" >}}

Hierdie metode behels die vind van alle ongemengde streke in die dokument. Dit word bereik deur die **MailMerge.GetFieldNames** metode te gebruik. Hierdie metode gee alle saamvoeg velde in die dokument, insluitend die streek begin en einde merkers (verteenwoordig deur saamvoeg velde met die voorvoegsel *TableStart* of *TableEnd*).

Wanneer'n `TableStart` merge veld teëgekom word, word dit as'n nuwe **DataTable** by die **DataSet** gevoeg. Aangesien'n streek meer as een keer kan verskyn (byvoorbeeld omdat dit'n geneste streek is waar die moederstreek saamgesmelt is met verskeie rekords), word die tabel slegs geskep en bygevoeg as dit nie reeds in die **DataSet** bestaan nie.

Wanneer'n toepaslike streek begin gevind is en by die databasis gevoeg is, word die volgende veld (wat ooreenstem met die eerste veld in die streek) by die **DataTable** gevoeg. Slegs die eerste veld moet bygevoeg word vir elke veld in die streek wat saamgesmelt moet word en aan die handelaar oorgedra moet word.

Ons stel ook die veld waarde van die eerste veld om "FirstField" om dit makliker te maak om logika toe te pas op die eerste of ander velde in die streek. Deur dit in te sluit beteken dit dat dit nie nodig is om die naam van die eerste veld hard-kode of implementeer ekstra kode om te kyk of die huidige veld is die eerste in die handelaar kode.

Die kode hieronder toon hoe hierdie stelsel werk. Die dokument wat aan die begin van hierdie artikel getoon word, word weer saamgesmelt met dieselfde databron, maar hierdie keer word die ongebruikte streke hanteer deur persoonlike kode.

**Voorbeeld**

Wys hoe om te hanteer unmerged streke na mail merge met gebruiker-gedefinieerde kode.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-HandleUnmergedRegionsAfterMailMerge.java" >}}


Die kode voer verskillende operasies uit gebaseer op die naam van die streek wat verkry word met behulp van die **FieldMergingArgs.TableName** eienskap. Let daarop dat afhangende van jou dokument en streke jy die handelaar kan kodeer om logika te hardloop afhanklik van elke streek of kode wat van toepassing is op elke ongemengde streek in die dokument of'n kombinasie van beide.

Die logika vir die **ContactDetails** streek behels die verandering van die teks van elke veld in die **ContactDetails** streek met'n toepaslike boodskap wat verklaar dat daar geen data is nie. Die name van elke veld is ooreenstem binne die handelaar met behulp van die **FieldMergingArgs.FieldName** eienskap.

'n soortgelyke proses word toegepas op die **Suppliers** streek met die toevoeging van ekstra kode om die tabel wat die streek bevat te hanteer. Die kode sal kyk of die streek in'n tabel is (aangesien dit reeds verwyder is). As dit so is, sal dit die hele tabel van die dokument sowel as die paragraaf wat dit voorafgaan, verwyder solank dit geformateer is met'n kopstyl, bv. "Heading 1".

**Voorbeeld**

Wys hoe om persoonlike logika te definieer in'n hanteerder wat IFieldMergingCallback implementeer wat uitgevoer word vir ongemengde streke in die dokument.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-EmptyRegionsHandler.java" >}}

Die resultaat van die bogenoemde kode word hieronder getoon. Die ongemengde velde binne die eerste streek word vervang met insiggewende teks en die verwydering van die tabel en opskrif laat die dokument toe om volledig te lyk.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-2](how-to-apply-custom-logic-to-unmerged-regions-3.png)


Die kode wat die ouer tabel verwyder kan ook gemaak word om te hardloop op elke ongebruikte streek in plaas van net'n spesifieke streek deur die verwydering van die tjek vir die tabel naam. In hierdie geval, as enige streek binne'n tabel is nie saamgesmelt met enige data, sal beide die streek en die houer tabel outomaties verwyder word sowel.

Ons kan verskillende kode in die handelaar invoeg om te beheer hoe ongemengde streke hanteer word. Die gebruik van die kode hieronder in die handelaar sal die teks in die eerste paragraaf van die streek verander na'n nuttige boodskap terwyl enige daaropvolgende paragrawe in die streek verwyder word. Hierdie ander paragrawe word verwyder omdat hulle in die streek sou bly nadat ons boodskap saamgevoeg is.

Die vervanging teks is saamgesmelt in die eerste veld deur die instelling van die gespesifiseerde teks in die **FieldMergingArgs.Text** eiendom. Die teks van hierdie eienskap word saamgesmelt in die veld deur die mail merge enjin.

Die kode pas dit toe vir slegs die eerste veld in die streek deur die **FieldMergingArgs.FieldValue** eienskap te kontroleer. Die veld waarde van die eerste veld in die streek is gemerk met "FirstField". Dit maak hierdie tipe logika makliker om te implementeer oor baie streke as geen ekstra kode is nodig.

**Voorbeeld**

Wys hoe om'n ongebruikte streek te vervang met'n boodskap en verwyder ekstra paragrawe.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-ReplaceAnUnusedRegionWithAMessage.java" >}}

Die gevolglike dokument nadat die kode hierbo uitgevoer is, word hieronder getoon. Die ongebruikte streek word vervang met'n boodskap wat verklaar dat daar geen rekords is om te vertoon nie.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-3](how-to-apply-custom-logic-to-unmerged-regions-4.png)


As'n ander voorbeeld, kan ons die kode hieronder in te voeg in plaas van die kode oorspronklik hantering van die **SuppliersRegion**. Dit sal'n boodskap in die tabel vertoon en die selle saamvoeg in plaas daarvan om die tabel uit die dokument te verwyder. Aangesien die streek binne'n tabel met verskeie selle is, lyk dit mooier om die selle van die tabel saam te voeg en die boodskap gesentreer te hê.

**Voorbeeld**

Wys hoe om al die ouer selle van'n ongebruikte streek saam te voeg en'n boodskap in die tabel te vertoon.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-MergeAllTheParentCellsOfAnUnusedRegion.java" >}}

Die gevolglike dokument nadat die kode hierbo uitgevoer is, word hieronder getoon.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-4](how-to-apply-custom-logic-to-unmerged-regions-5.png)


Ten slotte kan ons die **ExecuteCustomLogicOnEmptyRegions** metode noem en spesifiseer die tabel name wat hanteer moet word binne ons handelaar metode, terwyl die spesifisering van ander outomaties verwyder moet word.

**Voorbeeld**

Wys hoe om slegs die `ContactDetails` streek te spesifiseer wat hanteer moet word deur die handelaar klas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-ApplyCustomLogicToEmptyRegions-HandleTheContactDetailsRegion.java" >}}

Die oproep van hierdie oorlading met die gespesifiseerde ArrayList sal die databron skep wat slegs data rye vir die gespesifiseerde streke bevat. Ander streke as die `ContactDetails` streek sal nie hanteer word nie en sal outomaties verwyder word deur die mail merge enjin in plaas daarvan. Die resultaat van die bogenoemde oproep met behulp van die kode in ons oorspronklike hanteerder word hieronder getoon.

![apply-custom-logic-to-unmerged-regions-aspose-words-java-5](how-to-apply-custom-logic-to-unmerged-regions-6.png)
