---
title: Mail Merge En Verslagdoening in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Mail Merge En Verslagdoening
linktitle: Mail Merge En Verslagdoening
type: docs
description: "Mail Merge is'n gewilde kenmerk vir die vinnige skep van dokumente met behulp van Python. Aspose.Words vir Python via .NET neem die standaard Mail Merge funksionaliteit en bevorder dit baie stappe vorentoe, en verander dit in'n volwaardige verslagdoeningsoplossing wat jou toelaat om selfs meer komplekse dokumente soos verslae, katalogusse, voorraad en fakture te skep."
keywords: "how to use Mail Merge python"
weight: 30
url: /af/python-net/mail-merge-and-reporting/
timestamp: 2024-01-27-14-07-04
---

Mail Merge is'n gewilde kenmerk vir die vinnige en maklike skep van dokumente soos briewe, etikette en koeverte. Aspose.Words stel jou in staat om dokumente te genereer uit templates met Mail Merge velde.

'n Mail Merge veld is'n veld wat jy kan invoeg in'n Mail Merge sjabloon om spesifieke waardes van'n data bron rekord in uitset dokumente sluit. Byvoorbeeld, jy kan'n samesmeltingsveld in'n e-pos sjabloon invoeg sodat die groet die ontvanger se voornaam sal hê eerder as'n generiese "Hallo!". Aspose.Words plaas data van'n eksterne bron, soos'n databasis of lêer, in hierdie velde en formateer dit. Die gevolglike dokument word in die gespesifiseerde gids gestoor.

Aspose.Words neem die standaard Mail Merge funksionaliteit en bevorder dit baie stappe vorentoe, en verander dit in'n volwaardige verslagdoeningsoplossing wat jou toelaat om selfs meer komplekse dokumente soos verslae, katalogusse, voorraad en fakture te skep. Hier is'n paar voordele van die Aspose.Words verslagdoening oplossing:

- Ontwerp verslae in Microsoft Word met behulp van standaard Mail Merge velde
- Definieer streke in die dokument wat groei, soos gedetailleerde volgorde rye (tans word nie ondersteun in Python weergawe)
- Voeg beelde in tydens a mail merge
- Voer enige pasgemaakte logika, beheerformatering uit of voeg komplekse inhoud in met Mail Merge gebeurtenishanteerders (word tans nie in Python weergawe ondersteun nie)
- Vul dokumente in met data van enige tipe databron (word tans nie ondersteun in Python weergawe nie, slegs skikkings databron word ondersteun)

{{% alert color="primary" %}}

Die [aspose.words.mailmerging](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/) module word gebruik om te werk met pos samesmelting.

{{% /alert %}}

## Meganisme en Hoofkomponente van'n Mail Merge Operasie {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words bied die vermoë om dokumente in verskillende [supported formats](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) te laai en laat gebruikers toe om'n Mail Merge operasie uit te voer.

Gewoonlik laat'n gelaaide dokument jou toe om samesmeltingsvelde te stoor, byvoorbeeld'n dokument in DOCX - formaat. Maar daar is formate wat nie sulke velde stoor nie, byvoorbeeld TXT. As Aspose.Words die laai van sulke lêerformate ondersteun, kan u die samesmeltingsvelde direk by die dokumentmodel voeg, die dokument in'n gerieflike [supported format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) stoor en die Mail Merge - bewerking uitvoer.

Die Mail Merge operasie sal jou *mail merge template* en jou *data source* saamvoeg om individuele *merged documents* te genereer.

## Wat is'n Mail Merge Sjabloon {#what-is-a-mail-merge-template}

Die doel van die toepassing van'n Mail Merge operasie met behulp van'n samesmelting sjabloon is om die proses van die skep van'n dokument te vereenvoudig.

Daar is verskeie maniere om'n samesmelting sjabloon te skep en te ontwerp. Jy kan Microsoft Word gebruik, en die merge sjabloon hoef nie'n Microsoft Word sjabloon te wees nie, dit is'n dokument in die DOT of DOTX formaat, dit kan'n gewone dokument in die DOC of DOCX formaat wees. Jy moet'n paar spesiale velde genaamd merge fields in hierdie sjabloon invoeg op plekke waar jy wil hê dat data van jou databron later ingevoeg moet word. Of jy kan programmaties skep'n samesmelting sjabloon met behulp van die [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) klas.

Die merge-sjabloon bevat die hoofteks, wat dieselfde moet wees in alle uitvoerdokumente nadat u die Mail Merge - bewerking uitgevoer het. U kan enige formaat vir u sjabloon gebruik as daar'n vermoë is om samesmeltingsvelde daarby te voeg. Alle saamvlans velde binne jou sjabloon sal ingevul word vanaf jou databron tydens die Mail Merge operasie.

## Data Bron Tipes vir'n Mail Merge Operasie {#data-source-types-for-a-mail-merge-operation}

Huidiglik Aspose.Words vir Python via .NET Mail Merge aanvaar slegs'n verskeidenheid waardes as'n databron. Ander tipes sal bygevoeg word in die toekomstige weergawes.

Die volgende kode voorbeeld toon hoe om'n eenvoudige sjabloon te skep en vul dit met data met behulp van Mail Merge funksionaliteit:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-SimpleMailMerge.py" >}}


## Saamgesmelte Dokumente van'n Mail Merge Operasie {#merged-documents-of-a-mail-merge-operation}

'n saamgesmelte dokument is die resultaat van die Mail Merge operasie wanneer jy die sjabloon saamvoeg met die databron. Alle samesmeltingsvelde binne die saamgesmelte dokument word vervang met werklike data van u databron.

Die volgende beeld toon'n voorbeeld van die samesmelting sjabloon met saamgesmelt velde voor die uitvoering van die Mail Merge operasie.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

Die volgende beeld toon'n voorbeeld van die uitset saamgesmelt dokument as gevolg van die uitvoering van die Mail Merge operasie.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Sien Ook

- [Werk met Mail Merge templates In Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
