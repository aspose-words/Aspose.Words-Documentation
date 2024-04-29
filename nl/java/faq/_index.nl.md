---
title: Veelgestelde vragen
second_title: Aspose.Words voor Java
articleTitle: Veelgestelde vragen
linktitle: Veelgestelde vragen
type: docs
description: "Aspose.Words voor Java beantwoordt de meest gestelde vragen. Leer deze pagina om snel uw probleem op te lossen over algemene vragen of specifieke onderwerpen."
weight: 75
url: /nl/java/faq/
---

Deze pagina bevat antwoorden op de meest gestelde vragen. Gelieve de huidige pagina te leren, misschien kunt u hiermee uw probleem snel oplossen.

Als je het antwoord op je vraag nog niet hebt gevonden, kun je het vragen op het support forum. Voor informatie over hoe uw vraag of probleem naar behoren te melden, zie de [Technische ondersteuning](/words/nl/java/technical-support/) blz.

{{% alert color="primary" %}}

Veelgestelde vragen worden gegroepeerd per onderwerp voor uw gemak.

{{% /alert %}}

## Algemeen

**Q: Wat is Aspose.Words?**

Aspose.Words voor Java is een klassebibliotheek waarmee uw toepassingen een breed scala aan documentenverwerkingstaken kunnen uitvoeren. Met Aspose.Words voor Java, kunt u genereren, wijzigen, converteren, renderen en afdrukken van documenten zonder toepassingen van derden.

Details vindt u in onze documentatie.

------

**Q: Wat betekent het?"Aspose.Words vereist geen toepassingen van derden"?**

Aspose.Words voor Java hoeft geen toepassingen van derden of extra softwarepakketten te installeren om te werken. Gewoon downloaden en installeren Aspose.Words zoals beschreven in de [Installatie](/words/nl/java/installation/) artikel en begin.

------

**Q: Welke platforms doen Aspose.Words Steun?**

Aspose.Words voor Java omvat de meeste populaire ontwikkelingsomgevingen en implementatieplatforms. Zijn API kan worden gebruikt om toepassingen te ontwikkelen voor een breed scala aan besturingssystemen zoals Windows, Linux, en Mac OS, en verschillende platforms.

Zie voor nadere bijzonderheden de [Productoverzicht](/words/nl/java/product-overview/) blz. [Platformen nl Interoperabiliteit](/words/java/platforms-and-interoperability/) Section.

------

**Q: Welke documentformaten doet Aspose.Words Steun?**

Aspose.Words voor Java ondersteunt de meeste populaire documentformaten zoals DOC, DOCX, HTML, Markdown, PDF, XML, en anderen.

U kunt de volledige lijst van ondersteunde formaten op de [Onderwijsdocumentformaten](/words/nl/java/supported-document-formats/) blz.

------

**Q: Hoe kan ik het proberen? Aspose.Words Vrij?**

U kunt dit op twee manieren doen, met behulp van de Trial versie of een 30-dagen tijdelijke licentie. De Trial versie is dezelfde als de gekochte, het biedt volledige product functionaliteit, maar voegt een evaluatieve watermerk aan de bovenkant van het document bij het laden en opslaan en beperkt de maximale documentgrootte tot een paar honderd alinea's. Een tijdelijke licentie kunt u testen Aspose.Words zonder proefbeperkingen gedurende 30 dagen.

Zie [Licentie en abonnement](/words/nl/java/licensing/) pagina voor meer informatie.

{{% alert color="primary" %}}

U kunt ook proberen enkele van de meest populaire Aspose.Words functies via de [Aspose.Words gratis online Apps](https://products.aspose.app/words).

{{% /alert %}}

------

**Q: Hoe kan ik kopen Aspose.Words?**

Om een Aspose.Words licentie, je moet naar de [Aankoop](https://purchase.aspose.com/buy) pagina, selecteer de "Aspose.Words" product en het type licentie dat bij u past. Voeg dan de licentie toe aan uw winkelwagen en volg de Winkelwagen instructies.

Na aankoop, aanvraag voor de licentie zoals beschreven in de [Aangekochte luizen](/words/java/licensing/#purchased-license) Section.

Details over hoe te installeren Aspose.Words kan worden gelezen op de [Installatie](/words/nl/java/installation/) blz.

------

**Q: Hoe kan ik steun krijgen?**

Gebruik het gratis technische support forum. Voor nadere informatie over de wijze waarop een probleem naar behoren kan worden gemeld en wat moet worden gedaan alvorens contact op te nemen met het forum, zie de [Technische ondersteuning](/words/nl/java/technical-support/) blz.

## Een document renderen

{{% alert color="primary" %}}

Meer gedetailleerde informatie over rendering vindt u in de [Renderen](/words/nl/java/rendering/) documentatiesectie.

{{% /alert %}}

**Q: Waarom verschillen de lay-out en lettertypen in het uitvoerdocument van het origineel?**

Het lettertype is mogelijk niet beschikbaar, of het lettertypeformaat wordt ondersteund door Microsoft Word maar niet ondersteund door Aspose.Words. Aspose.Words zal uitvoeren [Manipuleren en ontvangen Waar Type lettertype](/words/nl/java/manipulate-and-substitute-truetype-fonts/).

Om te controleren of het lettertype ontbreekt:

- In Aspose.Words gebruik maken van de Lettertype substitutie waarschuwingen (voor details, zie de [Manipuleren en ontvangen Waar Type lettertype](/words/nl/java/manipulate-and-substitute-truetype-fonts/) artikel).
- In Microsoft Word Open het dialoogvenster "Font Substitutie" (Bestand → Opties → Geavanceerd → Lettertypesubstitutie).

------

**Q: Waarom werkt het lettertype niet terugval op niet-Windows platforms en Unicode tekens worden vervangen door de .notdef glyph?**

We kunnen vaak zien dat `.notdef` glyph in plaats van een of ander Unicode karakter. Dit is meestal een doos of een vraag glyph.

Dit komt omdat Microsoft Fallback instellingen van het kantoor worden standaard geselecteerd, en Microsoft Kantoorlettertypen zijn niet beschikbaar. Gebruikers moeten installeren Microsoft Kantoorlettertypen of instellingen voor terugval wijzigen.

------

**Q: Waarom zou complexe scripttekst, zoals Thais of Hebreeuws, onjuist worden weergegeven om een of andere reden, zoals de verkeerde positie voor diacritica of onjuiste ligaturen?**

Sommige complexe scriptlettertypen vereisen dat de Advanced Typografie-functies worden verwerkt om ze correct weer te geven. Geavanceerde Typografie is uitgeschakeld in Aspose.Words standaard. Gebruikers moeten Geavanceerde Typografie inschakelen met [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory).

------

**Q: Heb ik licentiebestanden nodig voor de lettertypen die ik gebruik?**

Jawel. Houd daarom bij het kopiëren van lettertypen in gedachten dat de meeste lettertypen auteursrechtelijk beschermd zijn. Zoek vooraf lettertypelicenties en controleer of ze vrij naar een andere machine kunnen worden overgedragen.

## Geneste Mail Merge

{{% alert color="primary" %}}

Meer informatie over mail merge in de [Mail Merge en relatie](/words/java/mail-merge-and-reporting/) documentatiesectie.

{{% /alert %}}

**Q: Waarom zijn er geen samengevoegde velden in de gegenereerde uitvoer?**

De oorspronkelijke naam van het merge-veld blijft hetzelfde zonder vervangen te worden door de vereiste gegevens van de gegevensbron, dan:

- Controleer of de gegevens correct in tabellen worden geladen: stel de [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName) correct met alle vereiste primaire sleutels en relaties.
- Controleer of de merge velden correct zijn genoemd. Gebruik de [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) methode om alle merge velden namen te krijgen en ervoor te zorgen dat de naam van merge velden in uw template overeenkomt met die in uw gegevensbron.

------

**Q: Waarom toont de output van geneste samenvoegen geen gegevens uit de dochtertabel voor de eerste regel in de oudertabel, maar toont alle items voor de laatste regel in de oudertabel, zelfs die welke er eigenlijk niet aan gekoppeld zijn?**

Dit komt omdat de merge regio's in het sjabloon niet correct gevormd zijn, waardoor alle geneste mail merge De Voorzitter. - Het debat is gesloten. De [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) openingstag en de [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) sluiten tag moet overeenkomen en in dezelfde rij of cel. Als je bijvoorbeeld regio's begint te broeden in een cel van een tabel, moet je het mergegebied beëindigen in dezelfde rij als de eerste cel.

------

**Q: Waarom wordt bij elk item uit de oudertabel elk item in de kindertafel weergegeven, zelfs de items die er eigenlijk niet aan gekoppeld zijn?**

Dit komt omdat de relatie tussen de ouder en kind tafels niet zijn opgezet of ze verkeerd zijn opgezet. Het is noodzakelijk:

- Zorg voor gegevensintegriteit binnen uw **DataSet** en gebruik **DataRelation** de relatie tussen ouder en kind tussen verwante gegevenstabellen vertegenwoordigen.
- Controleer de sectie Mail Merge met Regio's in het artikel [Geneste Mail Merge met regio's](/words/java/nested-mail-merge-with-regions/).

------

**Q: Waarom is een uitzondering: Systeem. ArgumentUitzondering: Deze beperking kan niet worden ingeschakeld omdat niet alle waarden overeenkomstige ouderwaarden hebben. mail merge?**

Dit gebeurt omdat niet elke ouder record heeft een kind record, zodat uw gegevensbron niet voldoet aan de volgende criteria: *elke rij in de oudertabel moet een een-op-een relatie hebben met de rijen van de kind tabel op basis van de primaire en buitenlandse sleutels*.

Externe sleutelbeperkingen uitschakelen wanneer u een **DataRelation**.

## Een document toevoegen of toevoegen

{{% alert color="primary" %}}

Meer gedetailleerde informatie over programmeren met documenten vindt u in de [Programmering met documenten](/words/nl/java/programming-with-documents/) documentatiesectie.

{{% /alert %}}

**Q: Waarom staat de inhoud van een document niet op dezelfde pagina?**

Het resultaat verschijnt op een aparte pagina vanwege een verschil in [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) instellingen voor de afdelingen waarin de documenten samen zijn gevoegd. Maak identiek **PageSetup** instellingen voor de afdelingen waarin de documenten samen zijn gevoegd.

## Een document omzetten

{{% alert color="primary" %}}

U vindt meer gedetailleerde informatie over het omzetten van een document in de [Een document omzetten](/words/nl/java/convert-a-document/) documentatiesectie.

{{% /alert %}}

**Q: Hoe DOCX converteren naar PDF?**

Het is zeer eenvoudig ook, gewoon een document naar het model laden en opslaan in elk ondersteund formaat.

De volgende code voorbeeld toont het proces van het omzetten van een DOCX-bestand naar PDF:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Manipuleren met een document

{{% alert color="primary" %}}

Meer gedetailleerde informatie over programmeren met documenten vindt u in de [Programmering met documenten](/words/nl/java/programming-with-documents/) documentatiesectie.

{{% /alert %}}

**Q: Hoe deel je een documentpagina per pagina?**

Aspose.Words stelt u in staat om een pagina met meerdere pagina's per pagina te splitsen.

Het volgende voorbeeld van code laat zien hoe een document te verdelen en elke pagina op te slaan als een apart document:

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

**Q: Hoe een versleuteld systeem te openen** **document?**

U kunt proberen een gecodeerd document te openen zonder wachtwoord, wat tot een uitzondering zou moeten leiden.

Het volgende codevoorbeeld laat zien hoe u een gecodeerd document met een wachtwoord kunt openen:

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

**Q: Hoe een document af te drukken?**

Voor een gedetailleerd antwoord, leer het artikel [Een document afdrukken Programmatisch of dialoogvensters gebruiken](/words/nl/java/print-a-document-programmatically-or-using-dialogs/).
