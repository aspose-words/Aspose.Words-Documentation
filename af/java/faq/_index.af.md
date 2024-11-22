---
title: FAQ
second_title: Aspose.Words vir Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words vir Java beantwoord die mees algemene vrae. Leer hierdie bladsy om u probleem oor algemene vrae of spesifieke onderwerpe vinnig op te los."
weight: 75
url: /af/java/faq/
timestamp: 2024-01-31-14-23-37
---

Hierdie bladsy bevat antwoorde op die vrae wat die meeste gevra word. Leer asseblief die huidige bladsy-miskien sal dit jou toelaat om jou probleem vinnig op te los.

As jy nie die antwoord op jou vraag gevind het nie, kan jy op die ondersteuningsforum vra. Vir inligting oor hoe om jou vraag of probleem behoorlik aan te meld, sien die [Tegniese Ondersteuning](/words/java/technical-support/) bladsy.

{{% alert color="primary" %}}

Gereelde vrae word gegroepeer volgens onderwerp vir jou gerief.

{{% /alert %}}

## Algemene

**V: wat is Aspose.Words?**

Aspose.Words vir Java is'n klasbiblioteek waarmee u toepassings'n wye verskeidenheid dokumentverwerkingstake kan uitvoer. Met Aspose.Words vir Java, kan jy dokumente genereer, verander, omskep, weergee en druk sonder derdeparty-toepassings.

Besonderhede kan in ons dokumentasie gevind word.

------

**V: wat beteken dit "Aspose.Words vereis nie derdeparty-toepassings nie"?**

Aspose.Words vir Java hoef nie enige derdeparty-toepassings of bykomende sagtewarepakkette te installeer om te werk nie. Net aflaai en installeer Aspose.Words soos beskryf in die [Installasie](/words/java/installation/) artikel en begin.

------

**V:Watter platforms ondersteun Aspose.Words?**

Aspose.Words vir Java dek die meeste van die gewilde ontwikkeling omgewings en ontplooiing platforms. Its API kan gebruik word om toepassings vir'n wye verskeidenheid bedryfstelsels soos Windows, Linux, en Mac OS, en verskeie platforms te ontwikkel.

Vir meer inligting, sien die [Produk Oorsig](/words/java/product-overview/) bladsy en die [Platforms en Interoperabiliteit](/words/java/platforms-and-interoperability/) afdeling.

------

**V:Watter dokumentformate ondersteun Aspose.Words?**

Aspose.Words vir Java ondersteun die meeste van die gewilde dokument formate soos DOC, DOCX, HTML, Markdown, PDF, XML, en ander.

U kan die volledige lys van ondersteunde formate op die [Ondersteunde Dokumentformate](/words/java/supported-document-formats/) bladsy.

------

**V:hoe kan ek probeer Aspose.Words gratis?**

Jy kan dit op twee maniere doen – deur Die Proefweergawe of'n 30-Dag Tydelike Lisensie te gebruik. Die Proef weergawe is dieselfde as die gekoopte een, dit bied volle produk funksionaliteit, maar voeg'n evaluerende watermerk aan die bokant van die dokument by wanneer laai en stoor en beperk die maksimum dokument grootte tot'n paar honderd paragrawe. Met'n Tydelike Lisensie kan u Aspose.Words sonder Proefbeperkings vir 30 dae toets.

Sien die [Lisensie en Inskrywing](/words/java/licensing/) bladsy vir meer inligting.

{{% alert color="primary" %}}

Jy kan ook probeer om'n paar van die gewildste Aspose.Words funksies deur die [Aspose.Words gratis Aanlyn Programme](https://products.aspose.app/words).

{{% /alert %}}

------

**V: hoe kan ek Aspose.Words koop?**

Om'n Aspose.Words lisensie te koop, moet jy na die [Koop](https://purchase.aspose.com/buy) bladsy, kies die" Aspose.Words " produk en die tipe lisensie wat jou pas. Voeg dan die lisensie by jou mandjie en volg die Inkopiemandjie-instruksies.

Na die aankoop, aansoek doen vir die lisensie soos beskryf in die [Gekoopte Lisensie](/words/java/licensing/#purchased-license) afdeling.

Besonderhede oor hoe om Aspose.Words te installeer kan gelees word op die [Installasie](/words/java/installation/) bladsy.

------

**V: Hoe kan ek ondersteuning kry?**

Gebruik die gratis tegniese ondersteuningsforum. Vir besonderhede oor hoe om'n probleem behoorlik aan te meld en wat gedoen moet word voordat u die forum kontak, sien die [Tegniese Ondersteuning](/words/java/technical-support/) bladsy.

## Vertoon'n Dokument

{{% alert color="primary" %}}

Jy kan meer gedetailleerde inligting oor die lewering in die [Lewering](/words/java/rendering/) dokumentasie afdeling.

{{% /alert %}}

**V: Hoekom verskil die uitleg en lettertipes in die uitvoerdokument van die oorspronklike?**

Die lettertipe is dalk nie beskikbaar nie, of die lettertipe word ondersteun deur Microsoft Word maar nie ondersteun deur Aspose.Words nie. Aspose.Words sal presteer [lettertipe vervanging](/words/java/manipulate-and-substitute-truetype-fonts/).

Om te kyk of die lettertipe ontbreek:

- In Aspose.Words gebruik Die Lettertipe vervanging waarskuwings (vir besonderhede, sien die" Hoe Om Te Herken dat die Lettertipe Vervang Is " afdeling van die [Manipuleer En Vervang TrueType Lettertipes](/words/java/manipulate-and-substitute-truetype-fonts/) artikel).
- In Microsoft Word maak die dialoogkassie "Font Substitution" oop(Lêer-Opsies).

------

**V: Waarom werk die lettertipe nie terugval op nie-Windows platforms en Unicode karakters word vervang met die .nie def glyph?**

Ons kan dikwels die `.notdef` glyf sien in plaas van'n Unicode karakter. Dit is gewoonlik'n boks of'n vraag glyf.

Dit is omdat Microsoft Office-terugvalinstellings standaard gekies word, en Microsoft Office-lettertipes nie beskikbaar is nie. Gebruikers moet Microsoft Office lettertipes installeer of terugvalinstellings verander.

------

**V: Waarom kan komplekse skrifteks, soos Thai of hebreeus, om een of ander rede onakkuraat vertoon word, soos die verkeerde posisie vir diakritiese of onakkurate ligature?**

Sommige komplekse skrif lettertipes vereis dat Die Gevorderde Tipografie funksies verwerk word om dit korrek te vertoon. Gevorderde Tipografie is standaard gedeaktiveer in Aspose.Words. Gebruikers Moet Gevorderde Tipografie met [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory) aktiveer.

------

**V: het ek lisensie lêers nodig vir die lettertipes wat ek gebruik?**

Ja, jy doen. Hou dus in gedagte dat die meeste lettertipes kopiereg het wanneer u lettertipes kopieer. Soek lettertipe lisensies vooraf en verifieer dat hulle vrylik na'n ander masjien oorgedra kan word.

## Voeg toe aan Mail Merge

{{% alert color="primary" %}}

Jy kan meer gedetailleerde inligting oor Mail Merge in die [Mail Merge En Verslagdoening](/words/java/mail-merge-and-reporting/) dokumentasie afdeling.

{{% /alert %}}

**V: Hoekom is daar geen saamgesmelte velde in die gegenereerde uitset nie?**

Die oorspronklike naam van die samesmelting veld bly dieselfde sonder om vervang te word deur die vereiste data van die data bron, dan:

- Kontroleer of die data behoorlik in tabelle gelaai word: stel die [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) korrek in met al die vereiste primêre sleutels en verhoudings.
- Kontroleer of die samesmeltingsvelde behoorlik genoem word. Gebruik die [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) metode om alle merge velde name te kry en te verseker dat die naam van merge velde in jou sjabloon ooreenstem met die een in jou databron.

------

**V: Waarom vertoon die uitset van geneste samesmelting nie data van die kindtabel vir die eerste inskrywing in die ouertabel nie, maar vertoon alle items vir die laaste inskrywing in die ouertabel, selfs items wat nie eintlik daaraan gekoppel is nie?**

Dit is omdat die samesmelting streke in die sjabloon is nie korrek gevorm, wat kan maak al geneste Mail Merge streke te stop vertoon enigiets op alle. Die [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) opening tag en die [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) sluiting tag moet ooreenstem en in dieselfde ry of sel wees. Byvoorbeeld, as jy begin nes samesmelting streke in'n sel van'n tabel, moet jy die samesmelting streek eindig in dieselfde ry as die eerste sel.

------

**V: Waarom vertoon elke inskrywing van die ouer tabel elke item in die kind tabel, selfs diegene wat nie eintlik daaraan gekoppel is nie?**

Dit is omdat die verhouding tussen die ouer-en kind tafels nie opgestel is nie of hulle verkeerd opgestel is. Dit is nodig om:

- Verseker data integriteit binne jou **DataSet** en gebruik die **DataRelation** voorwerp om die ouer-kind verhouding tussen verwante data tabelle verteenwoordig.
- Gaan die afdeling "Hoe Om Data Verhoudings In Geneste Mail Merge Met Streke Op te Stel" in die artikel [Geneste Mail Merge Met Streke](/words/java/nested-mail-merge-with-regions/).

------

**V: Waarom is'n uitsondering: "Stelsel.ArgumentException: hierdie beperking kan nie geaktiveer word nie, aangesien nie alle waardes ooreenstemmende ouerwaardes het nie" terwyl geneste Mail Merge uitgevoer word?**

Dit gebeur omdat nie elke ouerrekord'n kindrekord het nie, sodat u databron nie aan die volgende kriteria voldoen nie: *every row in the parent table should have a one-to-one relationship with the rows of the child table based on the primary and foreign keys*.

Deaktiveer vreemde sleutel beperkings wanneer jy'n **DataRelation** skep.

## Voeg'n Dokument by of Voeg Dit In

{{% alert color="primary" %}}

Jy kan meer gedetailleerde inligting oor programmering met dokumente in die [Programmering Met Dokumente](/words/java/programming-with-documents/) dokumentasie afdeling.

{{% /alert %}}

**V: Waarom verskyn inhoud wat aan'n dokument geheg is nie op dieselfde bladsy nie?**

Die byvoeging resultaat verskyn op'n aparte bladsy as gevolg van'n verskil in [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) instellings vir die afdelings waar die dokumente saam aangeheg. Maak identiese **PageSetup** instellings vir die afdelings waar die dokumente aanmekaar aangeheg is.

## Skakel'n Dokument om

{{% alert color="primary" %}}

Jy kan meer gedetailleerde inligting oor die omskakeling van'n dokument in die [Skakel'n Dokument om](/words/java/convert-a-document/) dokumentasie afdeling.

{{% /alert %}}

**V: Hoe om DOCX om te skakel na PDF?**

Dit is ook baie maklik, laai net'n dokument na die model en stoor dit in enige ondersteunde formaat.

Die volgende kode voorbeeld toon die proses van die omskakeling van'n DOCX lêer na PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipuleer Met'n Dokument

{{% alert color="primary" %}}

Jy kan meer gedetailleerde inligting oor programmering met dokumente in die [Programmering Met Dokumente](/words/java/programming-with-documents/) dokumentasie afdeling.

{{% /alert %}}

**V: Hoe om'n dokument bladsy vir bladsy te verdeel?**

Aspose.Words stel jou in staat om'n multi-bladsy dokument bladsy vir bladsy te verdeel.

Die volgende kode voorbeeld toon hoe om'n dokument te verdeel en stoor elke bladsy as'n aparte dokument:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**V: hoe om'n geïnkripteer oop te maak**

U kan probeer om'n geënkripteerde dokument sonder'n wagwoord oop te maak, wat tot'n uitsondering moet lei.

Die volgende kode voorbeeld toon hoe om'n geïnkripteer dokument met'n wagwoord oop te maak:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**V: Hoe om'n dokument te druk?**

Vir'n gedetailleerde antwoord, leer die artikel [Druk'n Dokument Programmaties of Gebruik Dialoog](/words/java/print-a-document-programmatically-or-using-dialogs/).
