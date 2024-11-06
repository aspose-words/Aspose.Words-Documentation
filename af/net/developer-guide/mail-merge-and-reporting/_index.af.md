---
title: Mail Merge En Verslagdoening in C#
second_title: Aspose.Words vir .NET
articleTitle: Mail Merge En Verslagdoening
linktitle: Mail Merge En Verslagdoening
type: docs
description: "Mail Merge is'n gewilde kenmerk vir die vinnige skep van dokumente met behulp van C#. Aspose.Words vir .NET neem die standaard mail merge funksionaliteit en bevorder dit baie stappe vorentoe, en verander dit in'n volwaardige verslagdoeningsoplossing wat jou toelaat om selfs meer komplekse dokumente soos verslae, katalogusse, voorraad en fakture te skep."
keywords: "how to use mail merge c#"
weight: 30
url: /af/net/mail-merge-and-reporting/
---

Mail Merge is'n gewilde kenmerk vir die vinnige en maklike skep van dokumente soos briewe, etikette en koeverte. Aspose.Words stel jou in staat om dokumente te genereer uit templates met mail merge velde.

A mail merge veld is'n gebied wat jy kan voeg in'n mail merge sjabloon te sluit spesifieke waardes van'n data bron rekord in uitset dokumente. Byvoorbeeld, jy kan'n samesmeltingsveld in'n e-pos sjabloon invoeg sodat die groet die ontvanger se voornaam sal hê eerder as'n generiese "Hallo!". Aspose.Words plekke data vanaf'n eksterne bron, soos'n databasis of lêer, in hierdie velde en formate hulle. Die gevolglike dokument is gered in die gespesifiseerde gids.

Aspose.Words neem die standaard mail merge funksionaliteit en bevorder dit baie stappe vorentoe, en verander dit in'n volwaardige verslagdoeningsoplossing wat jou toelaat om selfs meer komplekse dokumente soos verslae, katalogusse, voorraad en fakture te skep. Hier is'n paar voordele van die Aspose.Words verslagdoening oplossing:

- Ontwerp verslae in Microsoft Word met behulp van standaard mail merge velde
- Definieer streke in die dokument wat groei, soos gedetailleerde volgorde rye
- Voeg beelde in tydens a mail merge
- Voer enige pasgemaakte logika, beheerformatering uit, of voeg komplekse inhoud in met mail merge gebeurtenishanteerders
- Vul dokumente in met data van enige tipe databron

{{% alert color="primary" %}}

Die [Aspose.Words.MailMerging](https://reference.aspose.com/words/net/aspose.words.mailmerging/) naamruimte word gebruik om te werk met pos samesmelting.

{{% /alert %}}

## Meganisme en Hoofkomponente van Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words bied die vermoë om dokumente in verskillende [supported formats](https://reference.aspose.com/words/net/aspose.words/loadformat/) te laai en laat gebruikers toe om'n mail merge operasie uit te voer.

Gewoonlik laat'n gelaaide dokument jou toe om samesmeltingsvelde te stoor, byvoorbeeld'n dokument in DOCX - formaat. Maar daar is formate wat nie sulke velde stoor nie, byvoorbeeld TXT. As Aspose.Words die laai van sulke lêerformate ondersteun, kan u die samesmeltingsvelde direk by die dokumentmodel voeg, die dokument in'n gerieflike [supported format](https://reference.aspose.com/words/net/aspose.words/saveformat/) stoor en die mail merge - bewerking uitvoer.

Die mail merge operasie sal jou *mail merge template* en jou *data source* saamvoeg om individuele *merged documents* te genereer.

## Wat is'n Mail Merge Sjabloon {#what-is-a-mail-merge-template}

Die doel van die toepassing van'n mail merge operasie met behulp van'n saamsmelt sjabloon is om te vereenvoudig die proses van die skep van'n dokument.

Daar is verskeie maniere om'n samesmelting sjabloon te skep en te ontwerp. Jy kan Microsoft Word gebruik, en die merge sjabloon hoef nie'n Microsoft Word sjabloon te wees nie, dit is'n dokument in die DOT of DOTX formaat, dit kan'n gewone dokument in die DOC of DOCX formaat wees. Jy moet'n paar spesiale velde genaamd merge fields in hierdie sjabloon invoeg op plekke waar jy wil hê dat data van jou databron later ingevoeg moet word. Of jy kan programmaties skep'n samesmelting sjabloon met behulp van die [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) klas.

Die merge-sjabloon bevat die hoofteks, wat dieselfde moet wees in alle uitvoerdokumente nadat u die mail merge - bewerking uitgevoer het. U kan enige formaat vir u sjabloon gebruik as daar'n vermoë is om samesmeltingsvelde daarby te voeg. Alle saamvlans velde binne jou sjabloon sal ingevul word vanaf jou databron tydens die mail merge operasie.

## Databronne vir'n Mail Merge Operasie {#data-source-types-for-a-mail-merge-operation}

Aspose.Words mail merge aanvaar verskeie databronne. Dit kan ook'n DataTable, DataView, DataSet, IDataReader, 'n verskeidenheid waardes ondersteun deur ADO .NET, of persoonlike databronne verteenwoordig deur [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) implementasies.

Die databron bevat al die inligting wat tydens die mail merge operasie getrek word om individuele e-posse en dokumente te personaliseer. Databronne kan handmatig geskep word of gegenereer word deur verslagdoening van'n bestaande databasis of aansoek. As jy data in XML formaat het, kan jy dit laai en saamvoeg met die DataSet. Die mail merge operasie sal deur al die data bron rekords gaan en voeg hulle in mail merge velde in die dokument. Jy kan'n paar mail merge koppelvlakke soos [IMailMergeDataSourceRoot](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasourceroot/) implementeer om data van enige databron saam te voeg, insluitend'n LINQ navraag, 'n XML lêer, of besigheid voorwerpe.

Die volgende kode voorbeeld toon hoe om'n data tabel te laai as die data bron vir die mail merge operasie:

{{< gist "aspose-words-gists" "de5e13f5d5bb7d8cb88da900b4f9ed8b" "execute-with-regions-data-table.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Orders.docx).

{{% /alert %}}

## Saamgesmelte Dokumente van'n Mail Merge Operasie {#merged-documents-of-a-mail-merge-operation}

'n saamgesmelte dokument is die resultaat van die mail merge operasie wanneer jy die sjabloon saamvoeg met die databron. Alle samesmeltingsvelde binne die saamgesmelte dokument word vervang met werklike data van u databron.

Die volgende beeld toon'n voorbeeld van die samesmelting sjabloon met saamgesmelt velde voor die uitvoering van die mail merge operasie.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

Die volgende beeld toon'n voorbeeld van die uitset saamgesmelt dokument as gevolg van die uitvoering van die mail merge operasie.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Sien Ook

- [Werk met mail merge templates In Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
