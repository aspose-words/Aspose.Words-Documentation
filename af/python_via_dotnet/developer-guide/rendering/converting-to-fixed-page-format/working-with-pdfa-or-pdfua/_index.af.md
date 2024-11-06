---
title: Werk met PDF/A of PDF/UA
second_title: Aspose.Words vir Python
articleTitle: Werk met PDF/A of PDF/UA
linktitle: Werk met PDF/A of PDF/UA
description: "Skakel om na PDF/A-1, PDF/A-2, PDF/A-4 en PDF/UA met behulp van Python. Daar is'n paar probleme wanneer die omskakeling na PDF/A dokumente, en Aspose.Words vir Python los hulle op."
type: docs
weight: 28
url: /af/python-net/working-with-pdfa-or-pdfua/
---

PDF/A en PDF/UA formaat stel verskeie vereistes wat verband hou met die dokumentinhoud wat nie tydens outomatiese omskakeling van'n dokument in Word-formaat na PDF vervul kan word nie. Hierdie vereistes moet geverifieer en reggestel word in'n Word-dokument voor omskakeling of in'n PDF - dokument na omskakeling om'n volledig PDF/A en PDF/UA - versoenbare dokument te produseer.

Basiese vereistes is vir die struktuur of lettertipes van'n PDF/A en PDF/UA dokument, wat ons in die volgende afdelings sal oorweeg.

{{% alert color="primary" %}}

Let asseblief daarop dat PDF/UA-1 uitset sal ook WCAG 2.0 en Afdeling 508 voldoen.

{{% /alert %}}

## Dokumentstruktuurvereistes

Die huidige vereistes is vir PDF/A-1a, PDF/A-2a, PDF/A-4, en PDF/UA-1 formate.

Daar is'n paar nuanses van hoe Aspose.Words werk wanneer omgeskakel word na verskillende PDF formaat standaarde. Hulle moet in ag geneem word as jy die verwagte resultaat wil kry.

{{% alert color="primary" %}}

Let daarop dat daar geen logiese struktuur vereistes vir PDF/A-4. Om hierdie rede, ons nie oorweeg die PDF/A-4 weergawe in hierdie "Dokument Struktuur Vereistes" afdeling.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Die spesifikasie vertel ons die volgende (brei uit om besonderhede te sien):</summary>
    <p></p>
    <p>Dit is nie raadsaam vir skrywers om strukturele of semantiese inligting te genereer deur outomatiese prosesse te gebruik sonder toepaslike verifikasie nie.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Die onderstaande onderafdelings beskryf nuanses van hoe Aspose.Words werk wanneer dit omgeskakel word na verskillende PDF formaatstandaarde en opsies vir hul oplossing.

### Struktuur Tipe

| PDF standaard voldoeningsvlakke binne Aspose.Words | Teenwoordigheid van vereiste |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

'n PDF dokument is'n reeks blokke soos opskrifte, paragrawe, tabelle en ander. Hierdie blokke vorm'n dokumentstruktuur – sterk of swak.

Beide sterk en swak strukture is geldig vir PDF/A. Microsoft Word dokumente het'n swak struktuur deur ontwerp, en Aspose.Words skep PDF met die swak struktuur onderskeidelik en genereer ook opskrifte volgens die sketsvlakke van paragrawe in die brondokument.

Vir'n PDF/UA-1 dokument met'n swak struktuur, is dit ook nodig dat die kop nommers in volgorde gaan sonder gapings.

{{% alert color="secondary" %}}
<details>
    <summary>Die spesifikasie vertel ons die volgende (brei uit om besonderhede te sien):</summary>
    <p></p>
    <p>Die blokvlakstruktuur kan een van twee hoofparadigmas volg:</p>
    </ol>
      <li>Sterk gestruktureer. Die groeperingselemente is op soveel vlakke as wat nodig is om die organisasie van die materiaal in artikels, afdelings, onderafdelings, ensovoorts te weerspieël. Op elke vlak moet die kinders van die groeperingselement bestaan uit'n kop (H), een of meer paragrawe (P) vir inhoud op daardie vlak, en miskien een of meer addisionele groeperingselemente vir geneste onderafdelings.</li>
      <li>Swak gestruktureer. Die dokument is relatief plat, met miskien net een of twee vlakke van groeperingselemente, met al die opskrifte, paragrawe en ander BLSEs as hul onmiddellike kinders. In hierdie geval word die organisasie van die materiaal nie in die logiese struktuur weerspieël nie; dit kan egter uitgedruk word deur die gebruik van opskrifte met spesifieke vlakke (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Vir PDF/UA-1 dokumente bevat die spesifikasie'n byvoeging wat verband hou met kopvlakke (brei uit om besonderhede te sien):</summary>
    <p></p>
    <p>As dokument semantiek'n dalende volgorde van koptekste vereis, moet so'n volgorde in streng numeriese volgorde voortgaan en mag nie'n tussenliggende kopvlak oorslaan nie. H1 H2 H3 is toegelaat, terwyl H1 H3 nie toegelaat word nie.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Om korrekte uitset te verseker, moet gebruikers verseker dat die inhoud van die brondokument behoorlik georganiseer is en dat die sketsvlakke korrek vir paragrawe gespesifiseer word. Andersins moet die gebruiker die struktuur van die uitset PDF dokument verifieer en regstel.

{{% alert color="secondary" %}}
<details>
    <summary>In hierdie blok kan jy voorbeelde sien: hoe om sketsvlakke in Microsoft Word in te stel of die struktuur van die uitset PDF - dokument te kontroleer en reg te stel (brei uit om besonderhede te sien).</summary>
    <p></p>
    <p>In Microsoft Word standaard "Kop X" style gebruik kan word om die omtrek vlak stel:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Daarbenewens kan die buitelyn vlak nagegaan of verander word in die venster" Paragraaf":</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>In Acrobat kan Die dokumentstruktuur in Die "Tags" paneel nagegaan of verander word:</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Merk Die Inhoud as'n Artefak

| PDF standaard voldoeningsvlakke binne Aspose.Words | Teenwoordigheid van vereiste |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Op die oomblik merk Aspose.Words bladsyopskrifte en-voetskrifte, nootskeiers, herhaalde tabelopskrifte en dekoratiewe beelde as artefakte. Let daarop dat hierdie lys in die toekoms opgedateer kan word.

{{% alert color="secondary" %}}
<details>
    <summary>Die spesifikasie vertel ons die volgende (brei uit om besonderhede te sien):</summary>
    <p></p>
    <p>Die grafiese voorwerpe in'n dokument kan verdeel word in twee klasse:</p>
    </ol>
      <li>Die werklike inhoud van'n dokument bestaan uit voorwerpe wat materiaal verteenwoordig wat oorspronklik deur die dokument se outeur ingevoer is.</li>
      <li>Artefakte is grafiese voorwerpe wat nie deel is van die skrywer se oorspronklike inhoud nie, maar eerder deur die ooreenstemmende skrywer gegenereer word in die loop van paginering, uitleg of ander streng meganiese prosesse.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

As'n dokument enige ander inhoud bevat wat as'n artefak gemerk moet word, of as enige van die artefakte inhoud'n werklike inhoud is, moet kliënte dit in die uitset PDF regstel.

{{% alert color="secondary" %}}
<details>
    <summary>In hierdie blok kan jy voorbeelde sien: hoe om vorms as dekoratief in Microsoft Word te merk of vorm as'n artefak in die uitset PDF - dokument te merk (brei uit om besonderhede te sien).</summary>
    <p></p>
    <p>Byvoorbeeld, vorms kan gemerk word as dekoratiewe in Microsoft Word, sodat hulle sal uitgevoer word na PDF as'n artefak:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Jy kan vorm merk as'n artefak in die uitset PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>U kan ook teks in'n koptekst van die artefak na werklike inhoud in die uitset verander PDF:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Natuurlike Taal Spesifikasie

| PDF standaard voldoeningsvlakke binne Aspose.Words | Teenwoordigheid van vereiste |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Teks taal word gespesifiseer in Microsoft Word dokumente. Aspose.Words voer die gespesifiseerde taal uit na'n uitset PDF met die *Lang* kenmerk wat aan'n gemerkte inhoud volgorde of'n Span tag gekoppel is-dit word beheer deur die [export_language_to_span_tag](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_language_to_span_tag/) eienskap. Oor die algemeen is daar geen taalprobleme wanneer teks deur die gebruiker via Microsoft Word ingevoer word nie. Maar daar is'n moontlikheid dat die taal dalk onakkuraat is as die teks outomaties gegenereer word.

{{% alert color="secondary" %}}
<details>
    <summary>Die spesifikasie vertel ons die volgende (brei uit om besonderhede te sien):</summary>
    <p></p>
    <p>Die standaard natuurlike taal vir alle teks in'n lêer moet gespesifiseer word deur die Lang inskrywing in Die dokument Se Katalogus woordeboek.</p>
    <p>Alle tekstuele inhoud binne'n lêer wat verskil van die standaard taal moet aangedui word deur die gebruik van'n `Lang` eienskap wat aan'n gemerkte inhoud volgorde, of deur'n Lang inskrywing in'n struktuur element woordeboek ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Daarbenewens vir PDF/UA-1, die spesifikasie vertel ons die volgende (brei uit om besonderhede te sien):</summary>
    <p></p>
    <p>Natuurlike taal sal verklaar word... Veranderinge in natuurlike taal sal verklaar word.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In hierdie blok kan jy voorbeelde sien: hoe om te verseker dat die taal korrek gespesifiseer word (brei uit om besonderhede te sien).</summary>
    <p></p>
    <p>Gebruikers moet verseker dat die taal korrek in die bronwoorddokument gespesifiseer word:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Of die uitset PDF dokument:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Alternatiewe Beskrywings

| PDF standaard voldoeningsvlakke binne Aspose.Words | Teenwoordigheid van vereiste |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word dokumente laat gebruikers toe om alternatiewe teks by beelde, vorms en tabelle te voeg. Aspose.Words voer so'n alternatiewe teks uit na die uitset PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Die spesifikasie vertel ons die volgende (brei uit om besonderhede te sien):</summary>
    <p></p>
    <p>Alle struktuurelemente waarvan die inhoud nie'n natuurlike voorafbepaalde tekstuele analoog het nie, bv.beelde, formules, ens., moet'n alternatiewe teks beskrywing verskaf met behulp van die Alt inskrywing in die struktuur element woordeboek...</p>
    <p>NOTE Alternatiewe beskrywings verskaf tekstuele beskrywings wat help met die behoorlike interpretasie van andersins ondeursigtige nie-tekstuele inhoud.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In hierdie blok kan jy voorbeelde sien: hoe om te verseker dat alle elemente'n alternatiewe teks het (brei uit om besonderhede te sien).</summary>
    <p></p>
    <p>Gebruikers moet verseker dat alle elemente'n alternatiewe teks in die bron Word-dokument het:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Of die uitset PDF dokument:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Vervangende Teks

| PDF standaard voldoeningsvlakke binne Aspose.Words | Teenwoordigheid van vereiste |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Die spesifikasie vertel ons die volgende (brei uit om besonderhede te sien):</summary>
    <p></p>
    <p>Die spesifikasie vertel ons die volgende:</p>
    <p>Alle tekstuele struktuur elemente wat op'n nie-standaard manier verteenwoordig word, bv, persoonlike karakters of inline grafiese, moet vervanging teks verskaf met behulp van die `ActualText` inskrywing in die struktuur element woordeboek...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word dokument laat gebruikers nie toe om vervangende teks in te stel nie. So dit moet geverifieer en vasgestel word in die uitset PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Afkortings En Akronieme Uitbreidings

| PDF standaard voldoeningsvlakke binne Aspose.Words | Teenwoordigheid van vereiste |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Die spesifikasie vertel ons die volgende (brei uit om besonderhede te sien):</summary>
    <p></p>
    <p>Alle gevalle van afkortings en akronieme in tekstuele inhoud moet in'n gemerkte inhoud volgorde geplaas word met'n Span tag waarvan Die e eienskap'n tekstuele uitbreiding van die afkorting of akroniem bied...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word dokument laat gebruikers nie toe om afkortings en akronieme uitbreidings in te stel nie. So dit moet geverifieer en vasgestel word in die uitset PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Skrif Tipe Vereistes

| PDF standaard voldoeningsvlakke binne Aspose.Words | Teenwoordigheid van vereiste |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Daar is ook'n aantal nuanses van die werk met lettertipes wanneer die omskakeling na PDF/A-1, PDF/A-2, PDF/A-4 of PDF/UA-1 formate met behulp van Aspose.Words. Hulle moet in ag geneem word as u moontlike probleme met die uitvoerdokument wil vermy.

Die onderstaande afdelings beskryf sulke nuanses en opsies vir hul oplossing.

### Font Wetlike Vereistes

| PDF standaard voldoeningsvlakke binne Aspose.Words | Teenwoordigheid van vereiste |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words verifieer nie die wetlike beperkings van die gebruikte lettertipes nie – dit is aan gebruikers. Met ander woorde, 'n gebruiker moet nie onvanpaste lettertipes vir PDF omskakeling met behulp van Aspose.Words verskaf nie.

{{% alert color="secondary" %}}
<details>
    <summary>Die spesifikasie vertel ons die volgende (brei uit om besonderhede te sien):</summary>
    <p></p>
    <p>Slegs lettertipe programme wat wettiglik in'n lêer ingebed kan word vir onbeperkte, universele weergawe, moet gebruik word.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (presies dieselfde aanhalings in twee spesifikasies)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| PDF standaard voldoeningsvlakke binne Aspose.Words | Teenwoordigheid van vereiste |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Die gebruik van die `.notdef` glyf is verbode. Die `.notdef` glyf sal verskyn as'n dokument karakters bevat wat nie in die geselekteerde lettertipe voorkom nie en wat ook nie via die Lettertipe-Terugvalmeganisme opgelos kan word nie.

{{% alert color="secondary" %}}
<details>
    <summary>Die spesifikasie vertel ons die volgende (brei uit om besonderhede te sien):</summary>
    <p></p>
    <p>'n ooreenstemmende dokument mag nie'n verwysing na die.notdef glyph van enige van die teks wat operateurs, ongeag van die teks weergawe af, in enige inhoud stroom.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (presies dieselfde aanhalings in twee spesifikasies)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>In hierdie blok kan jy voorbeelde sien: hoe om hierdie karakters te verwyder of te vervang (brei uit om besonderhede te sien).</summary>
    <p></p>
    <p>Gebruikers moet hierdie karakters in die bronwoorddokument verwyder of vervang:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Of die uitset PDF dokument met behulp van die" Wysig PDF " instrument:</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Privaat Gebruik Area (PUA)

| PDF standaard voldoeningsvlakke binne Aspose.Words | Teenwoordigheid van vereiste |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Private Gebruik Area (PUA) karakters verskyn meestal vir Windows simboliese lettertipes soos "Symbol", "Wingdings", "Webdings", en ander. Microsoft Word formate bied nie'n opsie om werklike teks vir karakters te stoor nie.

{{% alert color="secondary" %}}
<details>
    <summary>Die spesifikasie vertel ons die volgende (brei uit om besonderhede te sien):</summary>
    <p></p>
    <p>Vir Vlak a ooreenstemming alleen, vir enige karakter ... wat gekarteer is na'n kode of kodes in die Unicode Private Gebruik Area (PUA), 'n ActualText inskrywing ... moet teenwoordig wees vir hierdie karakter of'n reeks karakters waarvan so'n karakter deel is.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" is'n Windows Unicode lettertipe wat gebruik kan word as'n alternatief vir simboliese lettertipes.

{{% alert color="secondary" %}}
<details>
    <summary>In hierdie blok kan jy voorbeelde sien: wat gebruiker moet doen om die probleem met simboliese lettertipes op te los (brei uit om besonderhede te sien).</summary>
    <p></p>
    <p>Vervang die simboliese lettertipe met'n Unicode-lettertipe in die bronwoorddokument:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Of voeg'n ActualText inskrywing by die problematiese karakters in die uitset PDF dokument:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}