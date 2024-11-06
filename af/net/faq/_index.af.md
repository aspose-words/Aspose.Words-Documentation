---
title: FAQ
second_title: Aspose.Words vir .NET
articleTitle: FAQ – Aspose.Words vir .NET
linktitle: FAQ – Aspose.Words vir .NET
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words vir .NET beantwoord die mees algemene vrae. Leer hierdie bladsy om u probleem oor algemene vrae of spesifieke onderwerpe vinnig op te los."
weight: 75
url: /af/net/faq/
---

Hierdie bladsy bevat antwoorde op die vrae wat die meeste gevra word. Leer asseblief die huidige bladsy-miskien sal dit jou toelaat om jou probleem vinnig op te los.

As jy nie die antwoord op jou vraag gevind het nie, kan jy op die ondersteuningsforum vra. Vir inligting oor hoe om jou vraag of probleem behoorlik aan te meld, sien die [Tegniese Ondersteuning](/words/net/technical-support/) bladsy.

{{% alert color="primary" %}}

Gereelde vrae word gegroepeer volgens onderwerp vir jou gerief.

{{% /alert %}}

## Algemene

**V: wat is Aspose.Words?**

Aspose.Words vir .NET is'n klasbiblioteek waarmee u toepassings'n wye verskeidenheid dokumentverwerkingstake kan uitvoer. Met Aspose.Words vir .NET, kan jy dokumente genereer, verander, omskep, weergee en druk sonder derdeparty-toepassings.

Besonderhede kan in ons dokumentasie gevind word.

------

**V: wat beteken dit "Aspose.Words vereis nie derdeparty-toepassings nie"?**

Aspose.Words vir .NET hoef nie enige derdeparty-toepassings of bykomende sagtewarepakkette te installeer om te werk nie. Net aflaai en installeer Aspose.Words soos beskryf in die [Installasie](/words/net/installation/) artikel en begin.

------

**V:Watter platforms ondersteun Aspose.Words?**

Aspose.Words vir .NET dek die meeste van die gewilde ontwikkeling omgewings en ontplooiing platforms. Its API kan gebruik word om toepassings vir'n wye verskeidenheid bedryfstelsels soos Windows, Linux, en Mac OS, en verskeie platforms te ontwikkel.

Vir meer inligting, sien die [Produk Oorsig](/words/net/product-overview/) bladsy en die [Platforms en Interoperabiliteit](/words/net/platforms-and-interoperability/) afdeling.

------

**V:Watter dokumentformate ondersteun Aspose.Words?**

Aspose.Words vir .NET ondersteun die meeste van die gewilde dokument formate soos DOC, DOCX, HTML, Markdown, PDF, XML, en ander.

U kan die volledige lys van ondersteunde formate op die [Ondersteunde Dokumentformate](/words/net/supported-document-formats/) bladsy.

------

**V:hoe kan ek probeer Aspose.Words gratis?**

Jy kan dit op twee maniere doen – deur Die Proefweergawe of'n 30-Dag Tydelike Lisensie te gebruik. Die Proef weergawe is dieselfde as die gekoopte een, dit bied volle produk funksionaliteit, maar voeg'n evaluerende watermerk aan die bokant van die dokument by wanneer laai en stoor en beperk die maksimum dokument grootte tot'n paar honderd paragrawe. Met'n Tydelike Lisensie kan u Aspose.Words sonder Proefbeperkings vir 30 dae toets.

Sien die [Lisensie en Inskrywing](/words/net/licensing/) bladsy vir meer inligting.

{{% alert color="primary" %}}

Jy kan ook probeer om'n paar van die gewildste Aspose.Words funksies deur die [Aspose.Words gratis Aanlyn Programme](https://products.aspose.app/words).

{{% /alert %}}

------

**V: hoe kan ek Aspose.Words koop?**

Om'n Aspose.Words lisensie te koop, moet jy na die [Koop](https://purchase.aspose.com/buy) bladsy, kies die" Aspose.Words " produk en die tipe lisensie wat jou pas. Voeg dan die lisensie by jou mandjie en volg die Inkopiemandjie-instruksies.

Na die aankoop, aansoek doen vir die lisensie soos beskryf in die [Gekoopte Lisensie](/words/net/licensing/#purchased-license) afdeling.

Besonderhede oor hoe om Aspose.Words te installeer kan gelees word op die [Installasie](/words/net/installation/) bladsy.

------

**V: Hoe kan ek ondersteuning kry?**

Gebruik die gratis tegniese ondersteuningsforum. Vir besonderhede oor hoe om'n probleem behoorlik aan te meld en wat gedoen moet word voordat u die forum kontak, sien die [Tegniese Ondersteuning](/words/net/technical-support/) bladsy.

## Vertoon'n Dokument

{{% alert color="primary" %}}

Jy kan meer gedetailleerde inligting oor die lewering in die [Lewering](/words/net/rendering/) dokumentasie afdeling.

{{% /alert %}}

**V: Hoekom verskil die uitleg en lettertipes in die uitvoerdokument van die oorspronklike?**

Die lettertipe is dalk nie beskikbaar nie, of die lettertipe word ondersteun deur Microsoft Word maar nie ondersteun deur Aspose.Words nie. Aspose.Words sal presteer [lettertipe vervanging](/words/net/manipulating-and-substitution-truetype-fonts/).

Om te kyk of die lettertipe ontbreek:

* In Aspose.Words gebruik Die Lettertipe vervanging waarskuwings (vir besonderhede, sien die" Hoe Om Te Herken dat die Lettertipe Vervang Is " afdeling van die [Manipuleer En Vervang TrueType Lettertipes](/words/net/manipulating-and-substitution-truetype-fonts/) artikel).
* In Microsoft Word maak die dialoogkassie "Font Substitution" oop(Lêer-Opsies).

------

**V: Waar moet ek lettertipes stoor vir ASP.NET toepassings?**

In `APS.NET` is daar geen toegang tot die system fonts-lêergids in medium trust nie. Gebruikers moet lettertipes in hul eie gids stoor.

------

**V: Waarom werk die lettertipe nie terugval op nie-Windows platforms en Unicode karakters word vervang met die .nie def glyph?**

Ons kan dikwels die `.notdef` glyf sien in plaas van'n Unicode karakter. Dit is gewoonlik'n boks of'n vraag glyf.

Dit is omdat Microsoft Office-terugvalinstellings standaard gekies word, en Microsoft Office-lettertipes nie beskikbaar is nie. Gebruikers moet Microsoft Office lettertipes installeer of terugvalinstellings verander.

------

**V: Waarom kan komplekse skrifteks, soos Thai of hebreeus, om een of ander rede onakkuraat vertoon word, soos die verkeerde posisie vir diakritiese of onakkurate ligature?**

Sommige komplekse skrif lettertipes vereis dat Die Gevorderde Tipografie funksies verwerk word om dit korrek te vertoon. Gevorderde Tipografie is standaard gedeaktiveer in Aspose.Words. Gebruikers Moet Gevorderde Tipografie met [TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/) aktiveer.

------

**V: het ek lisensie lêers nodig vir die lettertipes wat ek gebruik?**

Ja, jy doen. Hou dus in gedagte dat die meeste lettertipes kopiereg het wanneer u lettertipes kopieer. Soek lettertipe lisensies vooraf en verifieer dat hulle vrylik na'n ander masjien oorgedra kan word.

## Voeg toe aan Mail Merge

{{% alert color="primary" %}}

Jy kan meer gedetailleerde inligting oor mail merge in die [Mail Merge En Verslagdoening](/words/net/mail-merge-and-reporting/) dokumentasie afdeling.

{{% /alert %}}

**V: Hoekom is daar geen saamgesmelte velde in die gegenereerde uitset nie?**

Die oorspronklike naam van die samesmelting veld bly dieselfde sonder om vervang te word deur die vereiste data van die data bron, dan:

* Kontroleer of die data behoorlik in tabelle gelaai word: stel die [TableName](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/tablename/) korrek in met al die vereiste primêre sleutels en verhoudings.
* Kontroleer of die samesmeltingsvelde behoorlik genoem word. Gebruik die [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) metode om alle merge velde name te kry en te verseker dat die naam van merge velde in jou sjabloon ooreenstem met die een in jou databron.

------

**V: Waarom vertoon die uitset van geneste samesmelting nie data van die kindtabel vir die eerste inskrywing in die ouertabel nie, maar vertoon alle items vir die laaste inskrywing in die ouertabel, selfs items wat nie eintlik daaraan gekoppel is nie?**

Dit is omdat die samesmelting streke in die sjabloon is nie korrek gevorm, wat kan maak al geneste mail merge streke te stop vertoon enigiets op alle. Die [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) opening tag en die [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) sluiting tag moet ooreenstem en in dieselfde ry of sel wees. Byvoorbeeld, as jy begin nes samesmelting streke in'n sel van'n tabel, moet jy die samesmelting streek eindig in dieselfde ry as die eerste sel.

------

**V: Waarom vertoon elke inskrywing van die ouer tabel elke item in die kind tabel, selfs diegene wat nie eintlik daaraan gekoppel is nie?**

Dit is omdat die verhouding tussen die ouer-en kind tafels nie opgestel is nie of hulle verkeerd opgestel is. Dit is nodig om:

* Verseker data integriteit binne jou **DataSet** en gebruik die **DataRelation** voorwerp om die ouer-kind verhouding tussen verwante data tabelle verteenwoordig.
* Gaan die afdeling "Hoe Om Data Verhoudings In Geneste Mail Merge Met Streke Op te Stel" in die artikel [Geneste Mail Merge Met Streke](/words/net/nested-mail-merge-with-regions/).

------

**V: Waarom is'n uitsondering: "Stelsel.ArgumentException: hierdie beperking kan nie geaktiveer word nie, aangesien nie alle waardes ooreenstemmende ouerwaardes het nie" terwyl geneste mail merge uitgevoer word?**

Dit gebeur omdat nie elke ouerrekord'n kindrekord het nie, sodat u databron nie aan die volgende kriteria voldoen nie: *every row in the parent table should have a one-to-one relationship with the rows of the child table based on the primary and foreign keys*.

Deaktiveer vreemde sleutel beperkings wanneer jy'n **DataRelation** skep.

## Voeg'n Dokument by of Voeg Dit In

{{% alert color="primary" %}}

Jy kan meer gedetailleerde inligting oor programmering met dokumente in die [Programmering Met Dokumente](/words/net/programming-with-documents/) dokumentasie afdeling.

{{% /alert %}}

**V: Waarom verskyn inhoud wat aan'n dokument geheg is nie op dieselfde bladsy nie?**

Die byvoeging resultaat verskyn op'n aparte bladsy as gevolg van'n verskil in [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) instellings vir die afdelings waar die dokumente saam aangeheg. Maak identiese **PageSetup** instellings vir die afdelings waar die dokumente aanmekaar aangeheg is.

## Skakel'n Dokument om

{{% alert color="primary" %}}

Jy kan meer gedetailleerde inligting oor die omskakeling van'n dokument in die [Skakel'n Dokument om](/words/net/convert-a-document/) dokumentasie afdeling.

{{% /alert %}}

**V: hoe om PDF om te skakel na Word?**

Dit is baie maklik, laai net'n dokument na die model en stoor dit na enige ondersteunde formaat.

Die volgende kode voorbeeld toon die proses van die omskakeling van'n PDF lêer na DOC:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

// Save the file into MS document format
pdfDocument.Save(_dataDir + "PDFToDOC_out.doc", SaveFormat.Doc); // .Docx, .Rtf, .WordML, etc.
{{< /highlight >}}

------

**V: Hoe om DOCX om te skakel na PDF?**

Dit is ook baie maklik, laai net'n dokument na die model en stoor dit in enige ondersteunde formaat.

Die volgende kode voorbeeld toon die proses van die omskakeling van'n DOCX lêer na PDF:

{{< highlight csharp >}}
// Open the source DOCX document.
Document doc = new Document(_dataDir + "input.docx");

// Save the file to PDF format.
doc.Save(_dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipuleer Met'n Dokument

{{% alert color="primary" %}}

Jy kan meer gedetailleerde inligting oor programmering met dokumente in die [Programmering Met Dokumente](/words/net/programming-with-documents/) dokumentasie afdeling.

{{% /alert %}}

**V: Hoe om'n dokument bladsy vir bladsy te verdeel?**

Aspose.Words stel jou in staat om'n multi-bladsy dokument bladsy vir bladsy te verdeel.

Die volgende kode voorbeeld toon hoe om'n dokument te verdeel en stoor elke bladsy as'n aparte dokument:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Big document.docx");

int pageCount = doc.PageCount;

for (int page = 0; page < pageCount; page++)
{
	// Save each page as a separate document.
	Document extractedPage = doc.ExtractPages(page, 1);
	extractedPage.Save(ArtifactsDir + $"SplitDocument.PageByPage_{page + 1}.docx");
}
{{< /highlight >}}

------

**V: hoe om'n geïnkripteer oop te maak**

U kan probeer om'n geënkripteerde dokument sonder'n wagwoord oop te maak, wat tot'n uitsondering moet lei.

Die volgende kode voorbeeld toon hoe om'n geïnkripteer dokument met'n wagwoord oop te maak:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.Password = "MyPassword";
doc.Save(ArtifactsDir + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = new Document(ArtifactsDir + "OoxmlSaveOptions.Password.docx", new LoadOptions("MyPassword"));

Assert.AreEqual("Hello world!", doc.GetText().Trim());
{{< /highlight >}}

------

**V: Hoe om'n dokument te druk?**

Net twee reëls kode.

Die volgende kode voorbeeld toon hoe om'n dokument te druk op twee maniere:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "PrintMe.docx");

// Below are two ways of printing our document.
// 1 -  Print using the default printer:
doc.Print();

// 2 -  Specify a printer that we wish to print the document with by name:
string myPrinter = PrinterSettings.InstalledPrinters[4];

doc.Print(myPrinter);
{{< /highlight >}}

------

**V: Hoe om'n PDF dokument te wysig?**

Laai net PDF na die Aspose.Words dokumentmodel en maak veranderinge.

Die volgende kode voorbeeld toon hoe om'n dokument te wysig:

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

DocumentBuilder builder = new DocumentBuilder(pdfDocument);
builder.MoveToDocumentEnd();
builder.Writeln("New paragraph with text");

pdfDocument.Save(_dataDir + "out.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Docker

**V: hoe om Aspose.Words In Docker te gebruik?**

Vir'n gedetailleerde antwoord, leer die artikel [Hoe om te Hardloop Aspose.Words In Docker](/words/net/how-to-run-aspose-words-in-docker/).
