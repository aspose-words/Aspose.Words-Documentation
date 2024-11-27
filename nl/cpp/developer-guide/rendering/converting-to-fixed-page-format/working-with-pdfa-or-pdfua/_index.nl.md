---
title: Werken met PDF/A of PDF/UA
second_title: Aspose.Words voor C++
articleTitle: Werken met PDF/A of PDF/UA
linktitle: Werken met PDF/A of PDF/UA
description: "Converteren naar PDF/A-1, PDF/A-2, PDF/A-4 en PDF/UA met C++. Er zijn een paar problemen bij het converteren naar PDF/A documenten, en Aspose.Words voor C++ Lost ze op."
type: docs
weight: 38
url: /nl/cpp/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

De indeling PDF/A en PDF/UA legt verschillende vereisten op met betrekking tot de documentinhoud waaraan niet kan worden voldaan tijdens de automatische conversie van een document in de indeling Word naar PDF. Deze vereisten moeten worden gecontroleerd en gecorrigeerd in een Word document vóór conversie of in een PDF document na conversie om een volledig PDF/A en PDF/UA conform document te produceren.

De basisvereisten zijn voor de structuur of lettertypen van een PDF/A en PDF/UA document, die we in de volgende secties zullen bespreken.

{{% alert color="primary" %}}

Houd er rekening mee dat PDF/UA-1 output ook WCAG 2.0 en Sectie 508 voldoet.

{{% /alert %}}

## Vereisten Voor Documentstructuur

De huidige eisen zijn:PDF/A-1a, PDF/A-2a, PDF/A-4, en PDF/UA-1 formaten.

Er zijn enkele nuances van hoe Aspose.Words werkt bij het converteren naar verschillende PDF - opmaakstandaarden. Er moet rekening mee worden gehouden als u het verwachte resultaat wilt krijgen.

{{% alert color="primary" %}}

Merk op dat er geen logische structuurvereisten zijn voor PDF/A-4. Om deze reden beschouwen we de PDF/A-4 - versie niet in deze sectie "Documentstructuurvereisten".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (uitbreiden om details te zien):</summary>
    <p></p>
    <p>Het is niet raadzaam voor schrijvers om structurele of semantische informatie te genereren met behulp van geautomatiseerde processen zonder passende verificatie.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

De onderstaande subsecties beschrijven nuances van hoe Aspose.Words werkt bij het converteren naar verschillende PDF - formatstandaarden en opties voor hun oplossing.

### Structuur Type

| PDF standaard compliance niveaus binnen Aspose.Words | Aanwezigheid van eis |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Een PDF document is een reeks blokken zoals koppen, alinea ' s, tabellen en andere. Deze blokken vormen een documentstructuur-sterk of zwak.

Zowel sterke als zwakke structuren zijn geldig voor PDF/A. Microsoft Word documenten hebben een zwakke structuur door het ontwerp, en Aspose.Words maakt respectievelijk PDF met de zwakke structuur en genereert ook koppen volgens de overzichtsniveaus van alinea ' s in het brondocument.

Voor een PDF/UA-1 - document met een zwakke structuur is het bovendien vereist dat de kopnummers zonder gaten in volgorde staan.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (uitbreiden om details te zien):</summary>
    <p></p>
    <p>De structuur op blokniveau kan een van de twee hoofdparadigma ' s volgen:</p>
    </ol>
      <li>Sterk gestructureerd. De groeperingselementen nestelen zich op zoveel niveaus als nodig is om de organisatie van het materiaal in artikelen, secties, subsecties, enzovoort weer te geven. Op elk niveau moeten de kinderen van het groeperingselement bestaan uit een kop (H), een of meer alinea ' s (P) voor inhoud op dat niveau en misschien een of meer extra groeperingselementen voor geneste subsecties.</li>
      <li>Zwak gestructureerd. Het document is relatief vlak, met misschien slechts één of twee niveaus van groeperingselementen, met alle koppen, alinea ' s en andere BLSEs als hun directe kinderen. In dit geval wordt de organisatie van het materiaal niet weerspiegeld in de logische structuur; deze kan echter worden uitgedrukt door het gebruik van koppen met specifieke niveaus (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Voor PDF/UA-1 - documenten bevat de specificatie een toevoeging met betrekking tot kopniveaus (uitvouwen om details te zien):</summary>
    <p></p>
    <p>Indien de documentsemantiek een afnemende reeks koppen vereist, moet een dergelijke reeks in strikte numerieke volgorde worden uitgevoerd en mag een tussentijds kopniveau niet worden overgeslagen. H1 H2 H3 is toegestaan, terwijl H1 H3 dat niet is.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Om de juiste uitvoer te garanderen, moeten gebruikers ervoor zorgen dat de inhoud van het brondocument goed is georganiseerd en dat de overzichtsniveaus correct zijn gespecificeerd voor alinea ' s. Anders moet de gebruiker de structuur van het uitvoer PDF document verifiëren en repareren.

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kunt u voorbeelden zien: overzichtsniveaus instellen in Microsoft Word of de structuur van het Uitvoer PDF - document controleren en repareren (uitvouwen om details te zien).</summary>
    <p></p>
    <p>In Microsoft Word kunnen standaard stijlen "kop X" worden gebruikt om het overzichtsniveau in te stellen:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Bovendien kan het overzichtsniveau worden gecontroleerd of gewijzigd in het venster" paragraaf":</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>In Acrobat kan de documentstructuur worden gecontroleerd of gewijzigd in het deelvenster" Tags":</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### De inhoud markeren als een artefact

| PDF standaard compliance niveaus binnen Aspose.Words | Aanwezigheid van eis |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Op dit moment markeert Aspose.Words paginakoppen en voetteksten, notitiescheidingstekens, herhaalde tabelkopcellen en decoratieve afbeeldingen als artefacten. Deze lijst kan in de toekomst worden bijgewerkt.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (uitbreiden om details te zien):</summary>
    <p></p>
    <p>De grafische objecten in een document kunnen in twee klassen worden onderverdeeld:</p>
    </ol>
      <li>De werkelijke inhoud van een document bestaat uit objecten die materiaal vertegenwoordigen dat oorspronkelijk door de auteur van het document is geïntroduceerd.</li>
      <li>Artefacten zijn grafische objecten die geen deel uitmaken van de originele inhoud van de auteur, maar eerder worden gegenereerd door de conforme schrijver in de loop van paginering, lay-out of andere strikt mechanische processen.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Als een document andere inhoud bevat die moet worden gemarkeerd als een artefact, of als een van de artefacteerde inhoud een echte inhoud is, moeten klanten dat oplossen in de uitvoer PDF.

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kunt u voorbeelden zien: shapes markeren als decoratief in Microsoft Word of shape markeren als een artefact in het document uitvoer PDF (uitvouwen om details te zien).</summary>
    <p></p>
    <p>Vormen kunnen bijvoorbeeld worden gemarkeerd als decoratief in Microsoft Word, zodat ze worden geëxporteerd naar PDF als een artefact:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>U kunt shape markeren als een artefact in de uitvoer PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>U kunt ook tekst in een koptekst van het artefact overschakelen naar echte inhoud in de uitvoer PDF:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Natuurlijke Taalspecificatie

| PDF standaard compliance niveaus binnen Aspose.Words | Aanwezigheid van eis |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Teksttaal is opgegeven in Microsoft Word documenten. Aspose.Words exporteert de opgegeven taal naar een uitvoer PDF met het *Lang* attribuut gekoppeld aan een gemarkeerde-content sequentie of een Span tag – het wordt bestuurd door de [ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/) eigenschap. Over het algemeen zijn er geen taalproblemen wanneer tekst door de gebruiker wordt ingevoerd via Microsoft Word. Maar het is mogelijk dat de taal onnauwkeurig is als de tekst automatisch wordt gegenereerd.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (uitbreiden om details te zien):</summary>
    <p></p>
    <p>De standaard natuurlijke taal voor alle tekst in een bestand moet worden gespecificeerd door de vermelding Lang in het Cataloguswoordenboek van het document.</p>
    <p>Alle tekstuele inhoud in een bestand dat afwijkt van de standaardtaal moet worden aangegeven door gebruik te maken van een `Lang` eigenschap die is gekoppeld aan een reeks gemarkeerde inhoud, of door een Lang-invoer in een woordenboek met structuurelementen ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bovendien voor PDF/UA-1, de specificatie vertelt ons het volgende (expand to see details):</summary>
    <p></p>
    <p>Natuurlijke taal moet worden aangegeven... veranderingen in natuurlijke taal moeten worden aangegeven.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kunt u voorbeelden zien: hoe kunt u ervoor zorgen dat de taal correct is opgegeven (uitvouwen om details te zien).</summary>
    <p></p>
    <p>Gebruikers moeten ervoor zorgen dat de taal correct is opgegeven in het brondocument Word:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Of het uitvoer PDF document:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Figuur Bijschrift

| PDF standaard compliance niveaus binnen Aspose.Words | Aanwezigheid van eis |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Met Microsoft Word documenten kunnen gebruikers figuurbijschriften toevoegen.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (uitbreiden om details te zien):</summary>
    <p></p>
    <p>Een bijschrift dat een figuur vergezelt, wordt voorzien van een bijschrift.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Op dit moment kan Aspose.Words bijschriften niet exporteren met de tag bijschrift, dus ze moeten worden gemarkeerd in de uitvoer PDF.

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kunt u voorbeelden zien: hoe het bijschrift invoegen (uitvouwen om details te zien).</summary>
    <p></p>
    <p>In Microsoft Word kan het bijschrift worden ingevoegd via het contextmenu:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>In Acrobat kan het bijschrift worden toegevoegd of gewijzigd via het dialoogvenster Eigenschappen van `Object`:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Alternatieve Beschrijvingen

| PDF standaard compliance niveaus binnen Aspose.Words | Aanwezigheid van eis |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Met Microsoft Word documenten kunnen gebruikers alternatieve tekst toevoegen aan afbeeldingen, vormen en tabellen. Aspose.Words exporteert zo ' n alternatieve tekst naar de output PDF.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (uitbreiden om details te zien):</summary>
    <p></p>
    <p>Alle structuurelementen waarvan de inhoud geen natuurlijke vooraf bepaalde tekstanalogon heeft, bijvoorbeeld afbeeldingen, formules, enz., moet een alternatieve tekstbeschrijving leveren met behulp van de Alt-invoer in het woordenboek van structuurelementen...</p>
    <p>NOTE alternatieve beschrijvingen bieden tekstbeschrijvingen die helpen bij de juiste interpretatie van anders ondoorzichtige niet-tekstuele inhoud.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kunt u voorbeelden zien: hoe kunt u ervoor zorgen dat alle elementen een alternatieve tekst hebben (uitvouwen om details te zien).</summary>
    <p></p>
    <p>Gebruikers moeten ervoor zorgen dat alle elementen een alternatieve tekst hebben in het brondocument Word:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Of het uitvoer PDF document:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Alternatieve beschrijvingen voor Hyperlinks

| PDF standaard compliance niveaus binnen Aspose.Words | Aanwezigheid van eis |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Naast het vorige punt kunnen gebruikers in Microsoft Word - documenten ook alternatieve tekst toevoegen aan hyperlinks. Aspose.Words exporteert zo ' n alternatieve tekst naar de output PDF.

Helaas kunt u niet bij elke toepassing een alternatieve beschrijving instellen. Bijvoorbeeld, Adobe Acrobat is momenteel niet in staat om een dergelijke beschrijving voor hyperlinks in te stellen. Maar in Microsoft Word kunt u dit als volgt doen:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Soms is er een probleem dat het niet mogelijk is om alternatieve tekst in te stellen voor automatisch gegenereerde hyperlinks in de inhoudsopgave (TOC) Via de Microsoft Word GUI. Aspose.Words kan dergelijke velden bijwerken en de koppelingen zelf genereren.

Volg het codevoorbeeld om `TOC` velden bij te werken met het Aspose.Words Document Object Model (DOM):

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### Tabelkop

| PDF standaard compliance niveaus binnen Aspose.Words | Aanwezigheid van eis |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Tabellen in PDF/UA-1 documenten moeten kopteksten hebben-kolom, rij of beide. PDF/A vereist alleen standaard tabelmarkering, die geen extra beperkingen heeft. Merk op dat Aspose.Words automatisch de standaard tabelmarkering genereert.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (uitbreiden om details te zien):</summary>
    <p></p>
    <p>Tabellen moeten koppen bevatten ... tabellen kunnen kolomkoppen, rijkoppen of beide bevatten.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kunt u voorbeelden zien: hoe de tabelkop instellen (uitvouwen om details te zien).</summary>
    <p></p>
    <p>De tabelkop kan worden ingesteld in het brondocument Microsoft Word:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Of de output PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Vervangende Tekst

| PDF standaard compliance niveaus binnen Aspose.Words | Aanwezigheid van eis |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (uitbreiden om details te zien):</summary>
    <p></p>
    <p>De specificatie vertelt ons het volgende:</p>
    <p>Alle textuele structuurelementen die op een niet-standaard manier worden weergegeven, bijvoorbeeld aangepaste tekens of inline afbeeldingen, moeten vervangende tekst leveren met behulp van de `ActualText` - invoer in het structuurelement woordenboek...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word document staat gebruikers niet toe vervangende tekst in te stellen. Dus dit moet worden geverifieerd en opgelost in de output PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Afkortingen en acroniemen uitbreidingen

| PDF standaard compliance niveaus binnen Aspose.Words | Aanwezigheid van eis |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (uitbreiden om details te zien):</summary>
    <p></p>
    <p>Alle gevallen van afkortingen en acroniemen in tekstuele inhoud moeten worden geplaatst in een volgorde van gemarkeerde inhoud met een Span-tag waarvan de eigenschap E een tekstuele uitbreiding van de Afkorting of acroniem biedt...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word document staat gebruikers niet toe afkortingen en acroniemen uitbreidingen in te stellen. Dus dit moet worden geverifieerd en opgelost in de output PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Documenttitel

| PDF standaard compliance niveaus binnen Aspose.Words | Aanwezigheid van eis |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />Het Document in PDF/UA-1 moet een titel hebben. |

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (uitbreiden om details te zien):</summary>
    <p></p>
    <p>De specificatie vertelt ons het volgende:</p>
    <p>De metagegevensstroom in het cataloguswoordenboek van het document moet een dc:title-vermelding bevatten, waarbij dc het aanbevolen voorvoegsel is voor het Dublin Core-metagegevensschema…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kunt u voorbeelden zien: de titel van het document instellen (uitvouwen om details te zien).</summary>
    <p></p>
    <p>De titel van het document kan worden ingesteld in het brondocument Microsoft Word:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Of de output PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Lettertypevereisten

| PDF standaard compliance niveaus binnen Aspose.Words | Aanwezigheid van eis |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Er zijn ook een aantal nuances van het werken met lettertypen bij het converteren naar PDF/A-1, PDF/A-2, PDF/A-4 of PDF/UA-1 opmaak met Aspose.Words. Hiermee moet rekening worden gehouden als u mogelijke problemen met het uitvoerdocument wilt voorkomen.

De onderstaande secties beschrijven dergelijke nuances en opties voor hun oplossing.

### Font Wettelijke Vereisten

| PDF standaard compliance niveaus binnen Aspose.Words | Aanwezigheid van eis |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words controleert de wettelijke beperkingen van de gebruikte lettertypen niet – het is aan de gebruikers. Met andere woorden, een gebruiker moet geen ongeschikte lettertypen voor PDF conversie met behulp van Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (uitbreiden om details te zien):</summary>
    <p></p>
    <p>Alleen lettertypeprogramma ' s die wettelijk in een bestand kunnen worden ingebed voor onbeperkte, universele weergave, mogen worden gebruikt.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (precies dezelfde citaten in twee specs)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| PDF standaard compliance niveaus binnen Aspose.Words | Aanwezigheid van eis |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Het gebruik van het `.notdef` glyf is verboden. De `.notdef` glyf wordt weergegeven als een document tekens bevat die niet aanwezig zijn in het geselecteerde lettertype en die ook niet kunnen worden opgelost via het font Fallback-mechanisme.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (uitbreiden om details te zien):</summary>
    <p></p>
    <p>Een conform document mag geen verwijzing naar de .notdef-glyf van een van de tekst die operatoren toont, ongeacht de tekstweergavemodus, in een inhoudsstroom.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (precies dezelfde citaten in twee specs)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kunt u voorbeelden zien: hoe deze tekens te verwijderen of te vervangen (uitvouwen om details te zien).</summary>
    <p></p>
    <p>Gebruikers moeten deze tekens in het brondocument Word verwijderen of vervangen:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Of het uitvoer PDF document met behulp van het gereedschap" bewerken PDF":</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Ruimte Voor Privégebruik (PUA)

| PDF standaard compliance niveaus binnen Aspose.Words | Aanwezigheid van eis |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Ruimte voor privégebruik (PUA) tekens verschijnen meestal voor Windows symbolische lettertypes zoals "Symbol", "Wingdings", "Webdings" en anderen. Microsoft Word - indelingen bieden geen optie om echte tekst voor tekens op te slaan.

{{% alert color="secondary" %}}
<details>
    <summary>De specificatie vertelt ons het volgende (uitbreiden om details te zien):</summary>
    <p></p>
    <p>Alleen voor niveau a conformiteit, voor elk karakter ... dat wordt toegewezen aan een code of codes in het Unicode-gebied voor privégebruik (PUA), een ActualText - item ... moet aanwezig zijn voor dit teken of een reeks tekens waarvan dit teken deel uitmaakt.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" is een Windows Unicode-lettertype dat als alternatief voor symbolische lettertypen kan worden gebruikt.

{{% alert color="secondary" %}}
<details>
    <summary>In dit blok kunt u voorbeelden zien: wat de gebruiker moet doen om het probleem met symbolische lettertypen op te lossen (uitvouwen om details te zien).</summary>
    <p></p>
    <p>Het symbolische lettertype vervangen door een Unicode-lettertype in het brondocument Word:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Of voeg een ActualText - item toe aan de problematische tekens in het Uitvoer PDF - document:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
