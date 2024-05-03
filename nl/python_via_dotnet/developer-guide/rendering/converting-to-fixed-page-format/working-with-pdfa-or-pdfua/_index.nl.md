---
title: Werken met PDF/A of PDF/UA
second_title: Aspose.Words voor Python
articleTitle: Werken met PDF/A of PDF/UA
linktitle: Werken met PDF/A of PDF/UA
description: "Omzetten naar PDF/A-1, PDF/A-2, PDF/A-4 en PDF/UA met behulp van Python. Er zijn een paar problemen bij het omzetten naar PDF / A documenten, en Aspose.Words voor Python Lost ze op."
type: docs
weight: 28
url: /nl/python-net/working-with-pdfa-or-pdfua/
---

PDF/A en PDF/UA-formaat stelt verschillende eisen met betrekking tot de inhoud van het document waaraan niet kan worden voldaan tijdens automatische conversie van een document in Word-formaat naar PDF. Deze eisen moeten worden geverifieerd en gecorrigeerd, hetzij in een Word-document vóór conversie, hetzij in een PDF-document na conversie om een volledig PDF/A en PDF/UA-conform document te produceren.

Basisvereisten zijn voor de structuur of lettertypen van een PDF/A en PDF/UA document, die we in de volgende secties zullen overwegen.

{{% alert color="primary" %}}

Let op: PDF/UA-1 uitgang zal ook WCAG 2.0 en Sectie 508 voldoen.

{{% /alert %}}

## Documentstructuurvereisten

De huidige eisen zijn voor PDF/A-1a, PDF/A-2a, PDF/A-4 en PDF/UA-1 formaten.

Er zijn nuances van hoe Aspose.Words werkt bij het omzetten naar verschillende PDF-formaat standaarden. Zij moeten in aanmerking worden genomen als u het verwachte resultaat wilt bereiken.

{{% alert color="primary" %}}

Er zijn geen logische structuurvereisten voor PDF/A-4. Daarom overwegen we de PDF/A-4 versie niet in deze sectie "Document structuurvereisten."

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (breid uit om details te zien):</summary>
    <p></p>
    <p>Het is niet raadzaam voor schrijvers om structurele of semantische informatie te genereren met behulp van geautomatiseerde processen zonder passende verificatie.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

De subsecties hieronder beschrijven nuances van hoe Aspose.Words werkt bij het omzetten naar verschillende PDF-formaat normen en opties voor hun oplossing.

### Structuurtype

|  PDF-standaard nalevingsniveaus binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Een PDF-document is een reeks blokken zoals rubrieken, paragrafen, tabellen en andere. Deze blokken vormen een documentstructuur die sterk of zwak is.

Zowel sterke als zwakke structuren zijn geldig voor PDF/A. Microsoft Word documenten een zwakke structuur van ontwerp hebben, en Aspose.Words maakt PDF met de zwakke structuur respectievelijk en genereert ook rubrieken volgens de omtrekniveaus van de paragrafen in het brondocument.

Voor een PDF/UA-1 document met een zwakke structuur is het bovendien vereist dat de kopnummers in orde gaan zonder gaten.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (breid uit om details te zien):</summary>
    <p></p>
    <p>De structuur op blokniveau kan een van de twee belangrijkste paradigma's volgen:</p>
    </ol>
      <li>Sterk gestructureerd. De groepering elementen nestelen naar zoveel niveaus als nodig is om de organisatie van het materiaal in artikelen, secties, onderafdelingen, enzovoort. Op elk niveau moeten de kinderen van het groepselement bestaan uit een rubriek (H), een of meer alinea's (P) voor de inhoud op dat niveau, en misschien een of meer aanvullende groepselementen voor geneste onderafdelingen.</li>
      <li>Zwak gestructureerd. Het document is relatief vlak, met misschien slechts één of twee niveaus van het groeperen van elementen, met alle rubrieken, paragrafen, en andere BLSE's als hun directe kinderen. In dit geval wordt de organisatie van het materiaal niet weerspiegeld in de logische structuur; het kan echter worden uitgedrukt door het gebruik van rubrieken met specifieke niveaus (H1</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Voor PDF/UA-1 documenten bevat de specificatie een toevoeging met betrekking tot rubriekniveaus (b.v. om details te bekijken):</summary>
    <p></p>
    <p>Indien voor documentsemantiek een dalende volgorde van koppen vereist is, moet een dergelijke volgorde in strikte numerieke volgorde verlopen en mag een tussenliggende koersniveau niet worden overgeslagen. H1 H2 H3 is toegestaan, terwijl H1 H3 dat niet is.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Om een correcte uitvoer te garanderen, moeten de gebruikers ervoor zorgen dat de inhoud van het brondocument naar behoren is georganiseerd en worden de contourniveaus correct gespecificeerd voor de paragrafen. Anders moet de gebruiker de structuur van het uitvoer PDF-document verifiëren en repareren.

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok zie je voorbeelden: hoe omlijnde niveaus in te stellen Microsoft Word of controleer en repareer de structuur van het uitvoer PDF-document (uitbreiding om details te zien).</summary>
    <p></p>
    <p>In Microsoft Word standaard "Heading X"-stijlen kunnen worden gebruikt om het overzichtsniveau in te stellen:</p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Bovendien kan het schemaniveau worden gecontroleerd of gewijzigd in het venster "Paragraph":</p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>In Acrobat kon de documentstructuur worden gecontroleerd of gewijzigd in het "Tags"-paneel:</p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### De inhoud als artefact markeren

|  PDF-standaard nalevingsniveaus binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Op dit moment, Aspose.Words markeert pagina headers en voetteksten, notitiescheiders, herhaalde tafel koptekst cellen, en decoratieve beelden als artefacten. Deze lijst kan in de toekomst worden bijgewerkt.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (breid uit om details te zien):</summary>
    <p></p>
    <p>De grafische objecten in een document kunnen in twee klassen worden onderverdeeld:</p>
    </ol>
      <li>De werkelijke inhoud van een document bestaat uit objecten die materiaal vertegenwoordigen dat oorspronkelijk door de auteur van het document werd geïntroduceerd.</li>
      <li>Artefacten zijn grafische objecten die geen deel uitmaken van de oorspronkelijke inhoud van de auteur, maar eerder worden gegenereerd door de conforme schrijver in de loop van paginatie, lay-out, of andere strikt mechanische processen.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Als een document andere inhoud bevat die als artefact moet worden gemarkeerd, of als een van de artefacten een echte inhoud is, moeten klanten dat in de output PDF herstellen.

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok zie je voorbeelden: hoe je vormen markeert als decoratief in Microsoft Word of markeer vorm als een artefact in het uitvoer PDF document (verruimen om details te zien).</summary>
    <p></p>
    <p>Bijvoorbeeld, vormen kunnen worden gemarkeerd als decoratief in Microsoft Word, Dus ze zullen worden geëxporteerd naar PDF als een artefact:</p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>U kunt vorm markeren als een artefact in de output PDF:</p>
      <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Ook kunt u tekst in een header schakelen van het artefact naar echte inhoud in de output PDF:</p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Natuurlijke taalspecificatie

|  PDF-standaard nalevingsniveaus binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Teksttaal is gespecificeerd in Microsoft Word documenten. Aspose.Words exporteert de opgegeven taal naar een uitvoer PDF met de *Lang* attribuut gekoppeld aan een gemarkeerde-inhoud sequentie of een Span-tag [export_language_to_span_tag](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_language_to_span_tag/) eigendom. Over het algemeen zijn er geen taalproblemen wanneer tekst wordt ingevoerd door de gebruiker via Microsoft Word. Maar er is een mogelijkheid dat de taal onjuist kan zijn als de tekst automatisch wordt gegenereerd.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (breid uit om details te zien):</summary>
    <p></p>
    <p>De standaard natuurlijke taal voor alle tekst in een bestand moet worden gespecificeerd door de Lang entry in het document.</p>
    <p>Alle tekstuele inhoud binnen een bestand die verschilt van de standaardtaal moet worden aangegeven door gebruik van een `Lang` eigenschap verbonden aan een gemarkeerde-inhoudssequentie, of door een Lang ingang in een structuurelement woordenboek ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bovendien voor PDF/UA-1 vertelt de specificatie ons het volgende (breid uit om details te zien):</summary>
    <p></p>
    <p>Natuurlijke taal wordt verklaard... Wijzigingen in de natuurlijke taal worden aangegeven.</p>
    <p>ISO-14289-1,2,2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok zie je voorbeelden: hoe ervoor te zorgen dat de taal correct wordt opgegeven (breid uit om details te zien).</summary>
    <p></p>
    <p>Gebruikers moeten ervoor zorgen dat de taal correct wordt opgegeven in het bron Word-document:</p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Of het uitvoer PDF-document:</p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Alternatieve beschrijvingen

|  PDF-standaard nalevingsniveaus binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word documenten laten gebruikers toe alternatieve tekst toe te voegen aan afbeeldingen, vormen en tabellen. Aspose.Words exporteert een dergelijke alternatieve tekst naar de uitvoer PDF.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (breid uit om details te zien):</summary>
    <p></p>
    <p>Alle structuurelementen waarvan de inhoud geen natuurlijk vooraf bepaald tekstueel analoog heeft, bijvoorbeeld afbeeldingen, formules, enz., dienen een alternatieve tekstbeschrijving te verstrekken met behulp van de Alt-invoer in het woordenboek van het structuurelement...</p>
    <p>NOOT Alternatieve beschrijvingen bieden tekstuele beschrijvingen die helpen bij de juiste interpretatie van anders ondoorzichtige niet-tekstuele inhoud.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kun je voorbeelden zien: hoe ervoor te zorgen dat alle elementen een alternatieve tekst hebben (uitbreiden om details te zien).</summary>
    <p></p>
    <p>Gebruikers moeten ervoor zorgen dat alle elementen een alternatieve tekst hebben in ofwel het bron Word-document:</p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Of het uitvoer PDF-document:</p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Vervangingstekst

|  PDF-standaard nalevingsniveaus binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (breid uit om details te zien):</summary>
    <p></p>
    <p>De specificatie vertelt ons het volgende:</p>
    <p>Alle tekstuele structuurelementen die op een niet-standaard wijze worden weergegeven, bijvoorbeeld aangepaste tekens of inline graphics, moeten vervangende tekst leveren met behulp van de `ActualText` ingang in het woordenboek structuurelement...</p>
    <p>ISO-19005-2, 67,7</p>
</details>
{{% /alert %}}

Microsoft Word document staat gebruikers niet toe om vervangende tekst in te stellen. Dus dit moet worden geverifieerd en vastgesteld in de uitvoer PDF:

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Afkortingen en acroniemen Uitbreidingen

|  PDF-standaard nalevingsniveaus binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (breid uit om details te zien):</summary>
    <p></p>
    <p>Alle instanties van afkortingen en acroniemen in tekstuele inhoud moeten in een reeks gemarkeerde inhoud worden geplaatst met een Span-tag waarvan de eigenschap E een tekstuele uitbreiding van de afkorting of acroniem geeft...</p>
<p>ISO-19005-2, 67,8</p>
</details>
{{% /alert %}}

Microsoft Word document laat gebruikers niet toe om afkortingen en acroniemen uitbreidingen in te stellen. Dus dit moet worden geverifieerd en vastgesteld in de uitvoer PDF:

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Lettertypevereisten

|  PDF-standaard nalevingsniveaus binnen Aspose.Words |  Aanwezigheid van de eis |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Er zijn ook een aantal nuances van het werken met lettertypen bij het omzetten naar PDF/A-1, PDF/A-2, PDF/A-4 of PDF/UA-1 formaten met behulp van Aspose.Words. Zij moeten in aanmerking worden genomen als u mogelijke problemen met het uitvoerdocument wilt voorkomen.

In onderstaande paragrafen worden dergelijke nuances en opties voor hun oplossing beschreven.

### Juridische vereisten voor lettertype

|  PDF-standaard nalevingsniveaus binnen Aspose.Words |  Aanwezigheid van de eis |
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
    <summary>De specificatie vertelt ons het volgende (breid uit om details te zien):</summary>
    <p></p>
    <p>Alleen lettertypeprogramma's die wettelijk ingesloten zijn in een bestand voor onbeperkte, universele rendering mogen worden gebruikt.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (precies dezelfde citaten in twee specificaties)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  PDF-standaard nalevingsniveaus binnen Aspose.Words |  Aanwezigheid van de eis |
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
    <summary>De specificatie vertelt ons het volgende (breid uit om details te zien):</summary>
    <p></p>
    <p>Een conform document bevat geen verwijzing naar het glyph van een van de tekst tonen operators, ongeacht tekst rendering mode, in elke inhoud stroom.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (precies dezelfde citaten in twee specificaties)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kun je voorbeelden zien: hoe deze tekens te verwijderen of te vervangen (uitbreiden om details te zien).</summary>
    <p></p>
    <p>Gebruikers moeten deze tekens verwijderen of vervangen in het bron Word-document:</p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Of het uitvoer PDF document met behulp van de "PDF bewerken" tool:</p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Ruimte voor privégebruik (PUA)

|  PDF-standaard nalevingsniveaus binnen Aspose.Words |  Aanwezigheid van de eis |
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
    <summary>De specificatie vertelt ons het volgende (breid uit om details te zien):</summary>
    <p></p>
    <p>Voor niveau Alleen een overeenstemming, voor elk teken ... dat is toegewezen aan een code of codes in het Unicode Private Use Area (PUA), een ActualText ingang ... is aanwezig voor dit teken of een opeenvolging van tekens waarvan een dergelijk teken een onderdeel is.</p>
    <p>ISO-19005-2, 6.2.11.7,3</p>
</details>
{{% /alert %}}

"Segoe UI Symbool" is een Windows Unicode lettertype dat gebruikt kan worden als alternatief voor symbolische lettertypen.

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kun je voorbeelden zien: wat de gebruiker moet doen om het probleem op te lossen met symbolische lettertypen (expand to see details).</summary>
    <p></p>
    <p>Het symbolische lettertype vervangen door een Unicode in het bronwoorddocument:</p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Of voeg een ActualText-invoer toe aan de problematische tekens in het uitvoer PDF-document:</p>
        <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}