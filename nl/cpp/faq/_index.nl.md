---
title: FAQ
second_title: Aspose.Words voor C++
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words voor C++ beantwoordt de meest gestelde vragen. Leer deze pagina om snel uw probleem op algemene vragen of specifieke onderwerpen op te lossen."
weight: 75
url: /nl/cpp/faq/
timestamp: 2024-01-31-14-23-37
---

Deze pagina bevat antwoorden op de meest gestelde vragen. Lees de huidige pagina-misschien kunt u hiermee uw probleem snel oplossen.

Als u het antwoord op uw vraag niet hebt gevonden, kunt u deze stellen op het ondersteuningsforum. Voor informatie over hoe u uw vraag of probleem correct kunt melden, zie de [productondersteuning](/words/cpp/technical-support/) pagina.

{{% alert color="primary" %}}

Veelgestelde vragen zijn gegroepeerd per onderwerp voor uw gemak.

{{% /alert %}}

## Algemene

**Q: Wat is Aspose.Words?**

Aspose.Words voor C++ is een klassenbibliotheek waarmee uw toepassingen een grote verscheidenheid aan documentverwerkingstaken kunnen uitvoeren. Met Aspose.Words voor C++ kunt u documenten genereren, wijzigen, converteren, renderen en afdrukken zonder toepassingen van derden.

Details zijn te vinden in onze documentatie.

------

**V: wat betekent het "Aspose.Words vereist geen toepassingen van derden"?**

Aspose.Words voor C++ hoeft geen applicaties van derden of extra softwarepakketten te installeren om te werken. Download en installeer Aspose.Words zoals beschreven in de ["Installatie"](/words/cpp/installation/) artikel en aan de slag.

------

**V: welke platforms ondersteunt Aspose.Words?**

Aspose.Words voor C++ omvat de meeste populaire ontwikkelomgevingen en implementatieplatforms. Its API kan worden gebruikt om applicaties te ontwikkelen voor een breed scala aan besturingssystemen zoals Windows, Linux en Mac OS, en verschillende platforms.

Voor meer informatie, zie de [Productoverzicht](/words/cpp/product-overview/) pagina.

------

**V: Welke documentindelingen worden door Aspose.Words ondersteund?**

Aspose.Words voor C++ ondersteunt de meeste populaire documentformaten zoals DOC, DOCX, HTML, Markdown, PDF, XML, en anderen.

U kunt de volledige lijst van ondersteunde formaten op de [Ondersteunde Documentformaten](/words/cpp/supported-document-formats/) pagina.

------

**V: Hoe kan Ik Aspose.Words Gratis proberen?**

U kunt dit op twee manieren doen – met behulp van de proefversie of een tijdelijke licentie van 30 dagen. De proefversie is hetzelfde als de gekochte, het biedt volledige productfunctionaliteit, maar voegt een evaluatief watermerk toe aan de bovenkant van het document bij het laden en opslaan en beperkt de maximale documentgrootte tot een paar honderd alinea ' s. Met een tijdelijke licentie kunt u Aspose.Words gedurende 30 dagen zonder Proefbeperkingen testen.

Zie de [Licentie en Abonnement](/words/cpp/licensing/) pagina voor meer informatie.

{{% alert color="primary" %}}

U kunt ook enkele van de meest populaire Aspose.Words - functies proberen via de [Aspose.Words gratis Online Apps](https://products.aspose.app/words).

{{% /alert %}}

------

**V: Hoe kan Ik Aspose.Words kopen?**

Om een Aspose.Words licentie te kopen, moet je naar de [Aankoop](https://purchase.aspose.com/buy) selecteer het "Aspose.Words " product en het type licentie dat bij u past. Voeg vervolgens de licentie toe aan uw winkelwagen en volg de instructies in het winkelwagentje.

Vraag na aankoop de licentie aan zoals beschreven in de [Aangekochte Licentie](/words/cpp/licensing/#purchased-license) sectie.

Details over het installeren van Aspose.Words kunt u lezen op de [Installatie](/words/cpp/installation/) pagina.

------

**Q: Hoe kan ik steun krijgen?**

Gebruik het gratis forum voor technische ondersteuning. Voor meer informatie over hoe u een probleem goed kunt melden en wat er moet worden gedaan voordat u contact opneemt met het forum, zie de [productondersteuning](/words/cpp/technical-support/) pagina.

## Een Document weergeven

{{% alert color="primary" %}}

U kunt meer gedetailleerde informatie over rendering vinden in de [Rendering](/words/cpp/rendering/) documentatie sectie.

{{% /alert %}}

**V: Waarom verschillen de lay-out en lettertypen in het uitvoerdocument van het origineel?**

Het lettertype is mogelijk niet beschikbaar of de lettertypeindeling wordt ondersteund door Microsoft Word maar niet door Aspose.Words. Aspose.Words zal uitvoeren [lettertypevervanging](/words/cpp/manipulate-and-substitute-truetype-fonts/).

Om te controleren of het lettertype ontbreekt:

- Gebruik in Aspose.Words De Lettertypevervangingswaarschuwingen (zie voor meer informatie het gedeelte 'herkennen dat het lettertype is vervangen' van de [TrueType lettertypen bewerken en vervangen](/words/cpp/manipulate-and-substitute-truetype-fonts/) artikel).
- Open in Microsoft Word het dialoogvenster "Lettertypesubstitutie" (Bestand → Opties → Geavanceerd → Lettertypesubstitutie).

------

**V: Waarom werkt de font fallback niet op Niet - Windows platforms en worden Unicode-tekens vervangen door de .notdef glyph?**

We kunnen vaak het `.notdef` glyf zien in plaats van een Unicode-teken. Dit is meestal een doos of een vraag glyf.

Dit komt omdat Microsoft Office fallback-instellingen standaard zijn geselecteerd en Microsoft Office-lettertypen niet beschikbaar zijn. Gebruikers moeten Microsoft Office-lettertypen installeren of fallback-instellingen wijzigen.

------

**V: Waarom kan complexe scripttekst, zoals Thais of Hebreeuws, om een of andere reden onjuist worden weergegeven, zoals de verkeerde positie voor diakritische tekens of onnauwkeurige ligaturen?**

Sommige complexe scriptlettertypen vereisen dat de geavanceerde Typografiefuncties worden verwerkt om ze correct weer te geven. Geavanceerde Typografie is standaard uitgeschakeld in Aspose.Words. Gebruikers moeten geavanceerde typografie inschakelen met [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/).

------

**V: heb ik licentiebestanden nodig voor de lettertypen die ik gebruik?**

Ja, dat doe je. Houd er bij het kopiëren van lettertypen rekening mee dat de meeste lettertypen auteursrechtelijk beschermd zijn. Zoek lettertypelicenties vooraf op en controleer of ze vrij kunnen worden overgedragen naar een andere machine.

## Een Document toevoegen of Invoegen

{{% alert color="primary" %}}

Meer gedetailleerde informatie over programmeren met documenten vindt u in de [Programmeren met documenten](/words/cpp/programming-with-documents/) documentatie sectie.

{{% /alert %}}

**V: Waarom verschijnt de inhoud die aan een document is toegevoegd niet op dezelfde pagina?**

Het resultaat toevoegen wordt op een aparte pagina weergegeven vanwege een verschil in [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) - instellingen voor de secties waar de documenten aan elkaar zijn toegevoegd. Maak identieke **PageSetup** - instellingen voor de secties waar de documenten aan elkaar zijn toegevoegd.

## Een Document converteren

{{% alert color="primary" %}}

Meer gedetailleerde informatie over het converteren van een document vindt u in de [Een Document converteren](/words/cpp/convert-a-document/) documentatie sectie.

{{% /alert %}}

**Q: hoe converteert u DOCX naar PDF?**

Het is ook heel eenvoudig, laad gewoon een document in het model en sla het op in elk ondersteund formaat.

Het volgende codevoorbeeld toont het proces van het converteren van een DOCX bestand naar PDF:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## Manipuleren met een Document

{{% alert color="primary" %}}

Meer gedetailleerde informatie over programmeren met documenten vindt u in de [Programmeren met documenten](/words/cpp/programming-with-documents/) documentatie sectie.

{{% /alert %}}

**V: Hoe kan ik een document pagina voor pagina splitsen?**

Met Aspose.Words kunt u een document met meerdere pagina ' s pagina voor pagina splitsen.

Het volgende codevoorbeeld laat zien hoe u een document verdeelt en elke pagina als een afzonderlijk document opslaat:

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

**Q: Hoe een versleutelde**

U kunt proberen een versleuteld document zonder wachtwoord te openen, wat zou moeten leiden tot een uitzondering.

Het volgende codevoorbeeld laat zien hoe u een gecodeerd document met een wachtwoord kunt openen:

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
