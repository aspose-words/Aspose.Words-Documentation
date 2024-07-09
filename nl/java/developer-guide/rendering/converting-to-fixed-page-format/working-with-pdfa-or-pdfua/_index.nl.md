---
title: Werken met PDF/A of PDF/UA
second_title: Aspose.Words voor Java
articleTitle: Werken met PDF/A of PDF/UA
linktitle: Werken met PDF/A of PDF/UA
description: "Omzetten naar PDF/A-1, PDF/A-2, PDF/A-4 en PDF/UA met behulp van Java. Er zijn een paar problemen bij het omzetten naar PDF / A documenten, en Aspose.Words voor Java Lost ze op."
type: docs
weight: 28
url: /nl/java/working-with-pdfa-or-pdfua/
---

PDF/A en PDF/UA-formaat legt verschillende eisen op met betrekking tot de inhoud van het document waaraan niet kan worden voldaan tijdens automatische conversie van een document in Word-formaat naar PDF. Deze eisen moeten worden geverifieerd en gecorrigeerd hetzij in een Word-document vóór conversie of in een PDF-document na conversie om een volledig PDF/A en PDF/UA-conform document te produceren.

Basisvereisten zijn voor de structuur of lettertypen van een PDF/A en PDF/UA document, die we in de volgende secties zullen overwegen.

{{% alert color="primary" %}}

Houd er rekening mee dat PDF/UA-1 uitgang ook WCAG 2.0 en Sectie 508 conform zal zijn.

{{% /alert %}}

## Documentstructuurvereisten

De huidige eisen zijn voor PDF/A-1a, PDF/A-2a, PDF/A-4 en PDF/UA-1 formaten.

Er zijn enkele nuances van hoe Aspose.Words werkt bij het omzetten naar verschillende PDF-formaat normen. Ze moeten in aanmerking worden genomen om het verwachte resultaat te krijgen.

{{% alert color="primary" %}}

Er zijn geen logische structuurvereisten voor PDF/A-4. Daarom overwegen we de PDF/A-4 versie niet in deze sectie "Document structuurvereisten."

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (expand to see details):</summary>
    <p></p>
    <p>Het is niet raadzaam voor schrijvers om structurele of semantische informatie te genereren met behulp van geautomatiseerde processen zonder passende verificatie.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

De subsecties hieronder beschrijven nuances van hoe Aspose.Words werkt bij het omzetten naar verschillende PDF-formaat normen en opties voor hun oplossing.

### Structuurtype

|  PDF-standaard compliance levels binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Een PDF-document is een reeks blokken zoals rubrieken, paragrafen, tabellen en andere. Deze blokken vormen een documentstructuur die sterk of zwak is.

Zowel sterke als zwakke structuren zijn geldig voor PDF/A. Microsoft Word documenten een zwakke structuur door ontwerp hebben, en Aspose.Words maakt PDF met de zwakke structuur respectievelijk en genereert ook rubrieken volgens de omtrekniveaus van de paragrafen in het brondocument.

Voor een PDF/UA-1 document met een zwakke structuur is het bovendien vereist dat de kopnummers in orde gaan zonder gaten.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (expand to see details):</summary>
    <p></p>
    <p>De structuur op blokniveau kan één van de twee belangrijkste paradigma's volgen:</p>
    </ol>
      <li>Sterk gestructureerd. De samenstellende elementen nestelen op zoveel mogelijk niveaus als nodig is om de organisatie van het materiaal in artikelen, secties, onderafdelingen, enzovoort. Op elk niveau moeten de kinderen van het groepselement bestaan uit een rubriek (H), een of meer alinea's (P) voor de inhoud op dat niveau, en misschien een of meer aanvullende groepselementen voor geneste onderafdelingen.</li>
      <li>Zwak gestructureerd. Het document is relatief vlak, met misschien slechts een of twee niveaus van het groeperen van elementen, met alle rubrieken, paragrafen, en andere BLSE's als hun directe kinderen. In dit geval wordt de organisatie van het materiaal niet weerspiegeld in de logische structuur; het kan echter worden uitgedrukt door het gebruik van rubrieken met specifieke niveaus (H1</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14,8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Voor PDF/UA-1 documenten bevat de specificatie een toevoeging met betrekking tot rubriekniveaus (breid uit om details te zien):</summary>
    <p></p>
    <p>Indien voor de documentsemantiek een dalende volgorde van koppen vereist is, moet een dergelijke volgorde in strikte numerieke volgorde verlopen en mag een tussenliggende koersniveau niet worden overgeslagen. H1 H2 H3 is toegestaan, terwijl H1 H3 dat niet is.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Om een correcte output te garanderen, moeten de gebruikers ervoor zorgen dat de inhoud van het brondocument naar behoren wordt georganiseerd en worden de contourniveaus correct gespecificeerd voor de paragrafen. Anders moet de gebruiker de structuur van het uitvoer PDF-document verifiëren en repareren.

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kun je voorbeelden zien: hoe omtrekniveaus in te stellen Microsoft Word of controleer en fixeer de structuur van het uitvoer PDF-document (verruimen om details te zien).</summary>
    <p></p>
    <p>In Microsoft Word standaard "Heading X"-stijlen kunnen gebruikt worden om het overzichtsniveau in te stellen:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Bovendien kan het schemaniveau worden gecontroleerd of gewijzigd in het venster "Paragraph":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>In Acrobat kon de documentstructuur worden gecontroleerd of gewijzigd in het "Tags"-paneel:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### De inhoud als artefact markeren

|  PDF-standaard compliance levels binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Op dit moment, Aspose.Words markeert pagina headers en voetteksten, notitiescheiders, herhaalde tafel koptekst cellen, en decoratieve beelden als artefacten. Deze lijst kan in de toekomst worden bijgewerkt.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (expand to see details):</summary>
    <p></p>
    <p>De grafische objecten in een document kunnen in twee klassen worden onderverdeeld:</p>
    </ol>
      <li>De werkelijke inhoud van een document bestaat uit objecten die oorspronkelijk door de auteur van het document zijn geïntroduceerd.</li>
      <li>Artefacten zijn grafische objecten die geen deel uitmaken van de oorspronkelijke inhoud van de auteur, maar eerder worden gegenereerd door de conforme schrijver in de loop van paginatie, lay-out, of andere strikt mechanische processen.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Als een document andere inhoud bevat die als artefact moet worden gemarkeerd, of als een van de artefacten een echte inhoud is, moeten klanten dat in de output PDF repareren.

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kun je voorbeelden zien: hoe je vormen markeert als decoratief in Microsoft Word of markeer vorm als een artefact in het uitvoer PDF document (verruimen om details te zien).</summary>
    <p></p>
    <p>Bijvoorbeeld, vormen kunnen worden gemarkeerd als decoratieve in Microsoft Word, Ze worden dus geëxporteerd naar PDF als artefact:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>U kunt vorm markeren als een artefact in de output PDF:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Ook kunt u tekst in een header schakelen van het artefact naar echte inhoud in de output PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Natuurlijke taalspecificatie

|  PDF-standaard compliance levels binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Teksttaal is gespecificeerd in Microsoft Word documenten. Aspose.Words exporteert de opgegeven taal naar een uitvoer PDF met de *Lang* attribuut verbonden aan een gemarkeerde-inhoud sequentie of een Span-tag [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) eigendom. Over het algemeen zijn er geen taalproblemen wanneer tekst wordt ingevoerd door de gebruiker via Microsoft Word. Maar er is een mogelijkheid dat de taal onjuist kan zijn als de tekst automatisch wordt gegenereerd.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (expand to see details):</summary>
    <p></p>
    <p>De standaard natuurlijke taal voor alle tekst in een bestand moet worden gespecificeerd door de Lang entry in het document</p>
    <p>Alle tekstuele inhoud binnen een bestand dat verschilt van de standaardtaal moet worden aangegeven door het gebruik van een `Lang` eigenschap verbonden aan een gemarkeerde-inhoudssequentie, of door een Lang-ingang in een structuurelement woordenboek ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bovendien voor PDF/UA-1 vertelt de specificatie ons het volgende (breid uit om details te zien):</summary>
    <p></p>
    <p>Natuurlijke taal wordt verklaard... Veranderingen in de natuurlijke taal worden aangegeven.</p>
    <p>ISO-14289-1,2,2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kun je voorbeelden zien: hoe ervoor te zorgen dat de taal correct wordt opgegeven (breid uit om details te zien).</summary>
    <p></p>
    <p>Gebruikers moeten ervoor zorgen dat de taal correct wordt opgegeven in het bron Word-document:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Of het uitvoer PDF-document:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Figuurtitel

|  PDF-standaard compliance levels binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word documenten laten gebruikers toe om figuurtitel toe te voegen.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (expand to see details):</summary>
    <p></p>
    <p>Een bijschrift bij een figuur wordt voorzien van een bijschrift.</p>
    <p>ISO-14289-1,3</p>
</details>
{{% /alert %}}

Momenteel Aspose.Words kan bijschriften met de bijschrift-tag niet exporteren, dus ze moeten gemarkeerd worden in de uitvoer PDF.

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kun je voorbeelden zien: hoe je de bijschrift invoegt (vergroot om details te zien).</summary>
    <p></p>
    <p>In Microsoft Word, de bijschrift kan worden ingevoegd via het contextmenu:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>In Acrobat kan het bijschrift worden toegevoegd of gewijzigd via de `Object` Eigenschappen dialoogvenster:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Alternatieve beschrijvingen

|  PDF-standaard compliance levels binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word documenten laten gebruikers toe alternatieve tekst toe te voegen aan afbeeldingen, vormen en tabellen. Aspose.Words exporteert een dergelijke alternatieve tekst naar de output PDF.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (expand to see details):</summary>
    <p></p>
    <p>Alle structuurelementen waarvan de inhoud geen natuurlijk vooraf bepaald tekstueel analoog heeft, bijvoorbeeld afbeeldingen, formules, enz., dienen een alternatieve tekstbeschrijving te verstrekken met behulp van de Alt-item in het woordenboek van het structuurelement...</p>
    <p>NOOT Alternatieve beschrijvingen bieden tekstuele beschrijvingen die helpen bij de juiste interpretatie van anders ondoorzichtige niet-tekstuele inhoud.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok zie je voorbeelden: hoe ervoor te zorgen dat alle elementen een alternatieve tekst hebben (breid uit om details te zien).</summary>
    <p></p>
    <p>Gebruikers moeten ervoor zorgen dat alle elementen een alternatieve tekst hebben in het bron Word-document:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Of het uitvoer PDF-document:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Alternatieve beschrijvingen voor hyperlinks

|  PDF-standaard compliance levels binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Naast het vorige punt, Microsoft Word documenten kunnen gebruikers ook alternatieve tekst toevoegen aan hyperlinks. Aspose.Words exporteert een dergelijke alternatieve tekst naar de output PDF.

Helaas, niet elke toepassing kunt u het opzetten van een alternatieve beschrijving. Bijvoorbeeld, Adobe Acrobat een dergelijke beschrijving voor hyperlinks momenteel niet mogelijk maakt. Maar in Microsoft Word, U kunt dit als volgt doen:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Soms is er een probleem dat het niet mogelijk is om alt tekst voor automatisch gegenereerde hyperlinks in de inhoudsopgave (TOC) via de Microsoft Word GUI. Aspose.Words dergelijke velden kunnen bijwerken en de links zelfstandig kunnen genereren.

Volg het voorbeeld van de code om bij te werken `TOC` velden Aspose.Words Document Object Model (DOM):

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### Tabelkoppen

|  PDF-standaard compliance levels binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Tabellen in PDF/UA-1 documenten moeten headers bevatten met kolom, rij of beide. PDF/A vereist alleen standaardtabelmarkering, zonder extra beperkingen. Merk op dat Aspose.Words genereert automatisch de standaard tabelopmaak.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (expand to see details):</summary>
    <p></p>
    <p>Tabellen moeten headers bevatten... Tabellen kunnen kolomkoppen, rijkoppen of beide bevatten.</p>
    <p>ISO-14289-1, 7,5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kun je voorbeelden zien: hoe de tabelkop in te stellen (vergroot om details te zien).</summary>
    <p></p>
    <p>De tabelkop kan worden ingesteld ofwel de bron Microsoft Word document:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Of de uitvoer PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Vervangingstekst

|  PDF-standaard compliance levels binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (expand to see details):</summary>
    <p></p>
    <p>De specificatie vertelt ons het volgende:</p>
    <p>Alle tekstuele structuurelementen die op een niet-standaard manier worden vertegenwoordigd, bijvoorbeeld aangepaste tekens of inline graphics, moeten vervangende tekst leveren met behulp van de `ActualText` ingang in het woordenboek structuurelement...</p>
    <p>ISO-19005-2, 67,7</p>
</details>
{{% /alert %}}

Microsoft Word document staat gebruikers niet toe om vervangende tekst in te stellen. Dus dit moet worden geverifieerd en vastgesteld in de uitvoer PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Afkortingen en acroniemen Uitbreidingen

|  PDF-standaard compliance levels binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (expand to see details):</summary>
    <p></p>
    <p>Alle instanties van afkortingen en acroniemen in tekstuele inhoud moeten in een reeks gemarkeerde inhoud worden geplaatst met een Span-tag waarvan de eigenschap E een tekstuele uitbreiding van de afkorting of acroniem geeft...</p>
<p>ISO-19005-2, 67,8</p>
</details>
{{% /alert %}}

Microsoft Word document laat gebruikers niet toe om afkortingen en acroniemen uitbreidingen in te stellen. Dus dit moet worden geverifieerd en vastgesteld in de uitvoer PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Titel document

|  PDF-standaard compliance levels binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br/>Document in PDF/UA-1 moet een titel hebben |

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (expand to see details):</summary>
    <p></p>
    <p>De specificatie vertelt ons het volgende:</p>
    <p>De Metadata-stream in het document-catalogus woordenboek bevat een dc:title ingang, waarbij dc het aanbevolen voorvoegsel is voor het Dublin Core metadataschema...</p>
    <p>ISO-14289-1, 7,1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok zie je voorbeelden: hoe de documenttitel in te stellen (vergroot om details te zien).</summary>
    <p></p>
    <p>De titel van het document kan worden ingesteld als bron Microsoft Word document:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Of de uitvoer PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Lettertypevereisten

|  PDF-standaard compliance levels binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Er zijn ook een aantal nuances van het werken met lettertypen bij het omzetten naar PDF/A-1, PDF/A-2, PDF/A-4 of PDF/UA-1 formaten met behulp van Aspose.Words. Zij moeten in aanmerking worden genomen als u mogelijke problemen met het uitvoerdocument wilt voorkomen.

De onderstaande paragrafen beschrijven dergelijke nuances en opties voor hun oplossing.

### Juridische vereisten voor lettertype

|  PDF-standaard compliance levels binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words controleert niet de wettelijke beperkingen van de gebruikte lettertypen Met andere woorden, een gebruiker moet geen ongepaste lettertypen voor PDF conversie met behulp van Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (expand to see details):</summary>
    <p></p>
    <p>Alleen lettertypeprogramma's die wettelijk ingesloten zijn in een bestand voor onbeperkte, universele rendering mogen worden gebruikt.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (precies dezelfde citaten in twee specificaties)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  PDF-standaard compliance levels binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Het gebruik van de `.notdef` glyph is verboden. De `.notdef` glyph zal verschijnen als een document tekens bevat die niet aanwezig zijn in het geselecteerde lettertype en die ook niet kunnen worden opgelost via het Font Fallback-mechanisme.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (expand to see details):</summary>
    <p></p>
    <p>Een conform document mag geen verwijzing bevatten naar het glyph van een van de tekst tonen operators, ongeacht tekst rendering mode, in elke inhoud stroom.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (precies dezelfde citaten in twee specificaties)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kun je voorbeelden zien: hoe deze tekens te verwijderen of te vervangen (verruimen om details te zien).</summary>
    <p></p>
    <p>Gebruikers moeten deze tekens verwijderen of vervangen in het bron Word-document:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Of het uitvoer PDF document met behulp van de "PDF bewerken" tool:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Ruimte voor privégebruik (PUA)

|  PDF-standaard compliance levels binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Private Use Area (PUA) tekens verschijnen meestal voor Windows symbolische lettertypen als "Symbol," "Wingdings," "Webdings" en andere. Microsoft Word formaten bieden geen optie om actuele tekst op te slaan voor tekens.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (expand to see details):</summary>
    <p></p>
    <p>Voor niveau Alleen een conformheid, voor elk teken ... dat is toegewezen aan een code of codes in het Unicode Private Use Area (PUA), een ActualText ingang ... is aanwezig voor dit teken of een opeenvolging van tekens waarvan een dergelijk teken deel uitmaakt.</p>
    <p>ISO-19005-2, 6.2.11.7,3</p>
</details>
{{% /alert %}}

"Segoe UI Symbool" is een Windows Unicode lettertype dat gebruikt kan worden als alternatief voor symbolische lettertypen.

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kun je voorbeelden zien: wat de gebruiker moet doen om het probleem op te lossen met symbolische lettertypen (expand to see details).</summary>
    <p></p>
    <p>Het symbolische lettertype vervangen door een Unicode in het bron Word-document:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Of voeg een ActualText-item toe aan de problematische tekens in het uitvoer PDF-document:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
