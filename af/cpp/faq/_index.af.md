---
title: FAQ
second_title: Aspose.Words vir C++
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words vir C++ beantwoord die mees algemene vrae. Leer hierdie bladsy om u probleem oor algemene vrae of spesifieke onderwerpe vinnig op te los."
weight: 75
url: /af/cpp/faq/
timestamp: 2024-01-31-14-23-37
---

Hierdie bladsy bevat antwoorde op die vrae wat die meeste gevra word. Leer asseblief die huidige bladsy-miskien sal dit jou toelaat om jou probleem vinnig op te los.

As jy nie die antwoord op jou vraag gevind het nie, kan jy op die ondersteuningsforum vra. Vir inligting oor hoe om jou vraag of probleem behoorlik aan te meld, sien die [Tegniese Ondersteuning](/words/cpp/technical-support/) bladsy.

{{% alert color="primary" %}}

Gereelde vrae word gegroepeer volgens onderwerp vir jou gerief.

{{% /alert %}}

## Algemene

**V: wat is Aspose.Words?**

Aspose.Words vir C++ is'n klasbiblioteek waarmee u toepassings'n wye verskeidenheid dokumentverwerkingstake kan uitvoer. Met Aspose.Words vir C++, kan jy dokumente genereer, verander, omskep, weergee en druk sonder derdeparty-toepassings.

Besonderhede kan in ons dokumentasie gevind word.

------

**V: wat beteken dit "Aspose.Words vereis nie derdeparty-toepassings nie"?**

Aspose.Words vir C++ hoef nie enige derdeparty-toepassings of bykomende sagtewarepakkette te installeer om te werk nie. Net aflaai en installeer Aspose.Words soos beskryf in die ["Installasie"](/words/cpp/installation/) artikel en begin.

------

**V:Watter platforms ondersteun Aspose.Words?**

Aspose.Words vir C++ dek die meeste van die gewilde ontwikkeling omgewings en ontplooiing platforms. Its API kan gebruik word om toepassings vir'n wye verskeidenheid bedryfstelsels soos Windows, Linux, En Mac OS, en verskeie platforms te ontwikkel.

Vir meer inligting, sien die [Produk Oorsig](/words/cpp/product-overview/) bladsy.

------

**V:Watter dokumentformate ondersteun Aspose.Words?**

Aspose.Words vir C++ ondersteun die meeste van die gewilde dokument formate soos DOC, DOCX, HTML, Markdown, PDF, XML, en ander.

U kan die volledige lys van ondersteunde formate op die [Ondersteunde Dokumentformate](/words/cpp/supported-document-formats/) bladsy.

------

**V:hoe kan ek probeer Aspose.Words gratis?**

U kan dit op twee maniere doen – deur Die Proefweergawe of'n Tydelike Lisensie van 30 dae te gebruik. Die Proef weergawe is dieselfde as die gekoopte een, dit bied volle produk funksionaliteit, maar voeg'n evaluerende watermerk aan die bokant van die dokument by wanneer laai en stoor en beperk die maksimum dokument grootte tot'n paar honderd paragrawe. Met'n Tydelike Lisensie kan u Aspose.Words sonder Proefbeperkings vir 30 dae toets.

Sien die [Lisensie en Inskrywing](/words/cpp/licensing/) bladsy vir meer inligting.

{{% alert color="primary" %}}

Jy kan ook probeer om'n paar van die gewildste Aspose.Words funksies deur die [Aspose.Words gratis Aanlyn Programme](https://products.aspose.app/words).

{{% /alert %}}

------

**V: hoe kan ek Aspose.Words koop?**

Om'n Aspose.Words lisensie te koop, moet jy na die [Koop](https://purchase.aspose.com/buy) bladsy, kies die" Aspose.Words " produk en die tipe lisensie wat jou pas. Voeg dan die lisensie by jou mandjie en volg die Inkopiemandjie-instruksies.

Na die aankoop, aansoek doen vir die lisensie soos beskryf in die [Gekoopte Lisensie](/words/cpp/licensing/#purchased-license) afdeling.

Besonderhede oor hoe om Aspose.Words te installeer kan gelees word op die [Installasie](/words/cpp/installation/) bladsy.

------

**V: Hoe kan ek ondersteuning kry?**

Gebruik die gratis tegniese ondersteuningsforum. Vir besonderhede oor hoe om'n probleem behoorlik aan te meld en wat gedoen moet word voordat u die forum kontak, sien die [Tegniese Ondersteuning](/words/cpp/technical-support/) bladsy.

## Vertoon'n Dokument

{{% alert color="primary" %}}

Jy kan meer gedetailleerde inligting oor die lewering in die [Lewering](/words/cpp/rendering/) dokumentasie afdeling.

{{% /alert %}}

**V: Hoekom verskil die uitleg en lettertipes in die uitvoerdokument van die oorspronklike?**

Die lettertipe is dalk nie beskikbaar nie, of die lettertipe word ondersteun deur Microsoft Word maar nie ondersteun deur Aspose.Words nie. Aspose.Words sal presteer [lettertipe vervanging](/words/cpp/manipulate-and-substitute-truetype-fonts/).

Om te kyk of die lettertipe ontbreek:

- In Aspose.Words gebruik Die Lettertipe vervanging waarskuwings (vir besonderhede, sien die" Hoe Om Te Herken dat die Lettertipe Vervang Is " afdeling van die [Manipuleer En Vervang TrueType Lettertipes](/words/cpp/manipulate-and-substitute-truetype-fonts/) artikel).
- In Microsoft Word maak die dialoogkassie "Font Substitution" oop(Lêer-Opsies).

------

**V: Waarom werk die lettertipe nie terugval op nie-Windows platforms en Unicode karakters word vervang met die .nie def glyph?**

Ons kan dikwels die `.notdef` glyf sien in plaas van'n Unicode karakter. Dit is gewoonlik'n boks of'n vraag glyf.

Dit is omdat Microsoft Office-terugvalinstellings standaard gekies word, en Microsoft Office-lettertipes nie beskikbaar is nie. Gebruikers moet Microsoft Office lettertipes installeer of terugvalinstellings verander.

------

**V: Waarom kan komplekse skrifteks, soos Thai of hebreeus, om een of ander rede onakkuraat vertoon word, soos die verkeerde posisie vir diakritiese of onakkurate ligature?**

Sommige komplekse skrif lettertipes vereis dat Die Gevorderde Tipografie funksies verwerk word om dit korrek te vertoon. Gevorderde Tipografie is standaard gedeaktiveer in Aspose.Words. Gebruikers Moet Gevorderde Tipografie met [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) aktiveer.

------

**V: het ek lisensie lêers nodig vir die lettertipes wat ek gebruik?**

Ja, jy doen. Hou dus in gedagte dat die meeste lettertipes kopiereg het wanneer u lettertipes kopieer. Soek lettertipe lisensies vooraf en verifieer dat hulle vrylik na'n ander masjien oorgedra kan word.

## Voeg'n Dokument by of Voeg Dit In

{{% alert color="primary" %}}

Jy kan meer gedetailleerde inligting oor programmering met dokumente in die [Programmering Met Dokumente](/words/cpp/programming-with-documents/) dokumentasie afdeling.

{{% /alert %}}

**V: Waarom verskyn inhoud wat aan'n dokument geheg is nie op dieselfde bladsy nie?**

Die byvoeging resultaat verskyn op'n aparte bladsy as gevolg van'n verskil in [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) instellings vir die afdelings waar die dokumente saam aangeheg. Maak identiese **PageSetup** instellings vir die afdelings waar die dokumente aanmekaar aangeheg is.

## Skakel'n Dokument om

{{% alert color="primary" %}}

Jy kan meer gedetailleerde inligting oor die omskakeling van'n dokument in die [Skakel'n Dokument om](/words/cpp/convert-a-document/) dokumentasie afdeling.

{{% /alert %}}

**V: Hoe om DOCX om te skakel na PDF?**

Dit is ook baie maklik, laai net'n dokument na die model en stoor dit in enige ondersteunde formaat.

Die volgende kode voorbeeld toon die proses van die omskakeling van'n DOCX lêer na PDF:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## Manipuleer Met'n Dokument

{{% alert color="primary" %}}

Jy kan meer gedetailleerde inligting oor programmering met dokumente in die [Programmering Met Dokumente](/words/cpp/programming-with-documents/) dokumentasie afdeling.

{{% /alert %}}

**V: Hoe om'n dokument bladsy vir bladsy te verdeel?**

Aspose.Words stel jou in staat om'n multi-bladsy dokument bladsy vir bladsy te verdeel.

Die volgende kode voorbeeld toon hoe om'n dokument te verdeel en stoor elke bladsy as'n aparte dokument:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(MyDir + u"Big document.docx");

int pageCount = doc->get_PageCount();

for (int page = 0; page < pageCount; page++)
{
    // Save each page as a separate document.
    SharedPtr<Document> extractedPage = doc->ExtractPages(page, 1);
    extractedPage->Save(ArtifactsDir + String::Format(u"SplitDocument.PageByPage_{0}.docx", page + 1));
}
{{< /highlight >}}

------

**V: hoe om'n geïnkripteer oop te maak**

U kan probeer om'n geënkripteerde dokument sonder'n wagwoord oop te maak, wat tot'n uitsondering moet lei.

Die volgende kode voorbeeld toon hoe om'n geïnkripteer dokument met'n wagwoord oop te maak:

{{< highlight csharp >}}
// Create a document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Write(u"Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
auto options = System::MakeObject<OoxmlSaveOptions>(SaveFormat::Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options->set_Password(u"MyPassword");
doc->Save(u"OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = System::MakeObject<Document>(u"OoxmlSaveOptions.Password.docx", System::MakeObject<LoadOptions>(u"MyPassword"));

ASSERT_EQ(doc->GetText().Trim(), u"Hello world!");
{{< /highlight >}}
