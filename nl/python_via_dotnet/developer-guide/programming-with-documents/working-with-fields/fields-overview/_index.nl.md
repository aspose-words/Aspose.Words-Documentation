---
title: Velden Overzicht in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Overzicht velden
linktitle: Overzicht velden
description: "U kunt het veld wijzigen met behulp van Python. Velden van het document worden geladen in de Aspose.Words Document Object Model (DOM)."
type: docs
weight: 10
url: /nl/python-net/fields-overview/
timestamp: 2024-10-21-11-17-44
---


Meestal een veld, wanneer ingevoegd in Microsoft Word, bevat al een actuele waarde. Als het veld bijvoorbeeld een formule of een paginanummer is, bevat het een correcte berekende waarde voor de gegeven versie van het document. Maar als je een toepassing hebt die een document aanmaakt of wijzigt met velden (bijvoorbeeld twee documenten combineert of met gegevens bevolkt) dan moeten alle velden idealiter worden bijgewerkt om het document bruikbaar te maken.

Een veld bestaat uit:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- De veldstart- en scheidingsknooppunten worden gebruikt om de inhoud van de veldcode te omvatten (normaal gesproken als platte tekst)
- De veldscheiding en het veldeinde omvatten het veldresultaat. Dit kan bestaan uit verschillende soorten content, variërend van tekstreeksen tot paragrafen tot tabellen.
- Sommige velden kunnen geen scheidingsteken hebben wat betekent dat de gehele inhoud de veldcode vormt.
- De veldcode definieert het gedrag van het veld en bestaat uit de veldidentificatie en vaak andere parameters zoals veldnaam en switches.
- Het veldresultaat bevat de meest recente evaluatie van het veld. Deze waarde wordt opgeslagen in het veld resultaat en is wat wordt weergegeven aan de gebruiker. Sommige velden hebben mogelijk geen veldresultaat, zodat er niets in het document wordt weergegeven. Ook sommige velden kunnen nog niet worden bijgewerkt, dus zal ook geen veldresultaat hebben.

Hier is een overzicht van hoe een veld wordt opgeslagen in Aspose.Words door gebruik te maken van het voorbeeld van "DocumentExplorer." [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words is een klasse bibliotheek ontworpen voor server-side verwerking van Microsoft Word documenteert en ondersteunt velden op de volgende manieren:

- Alle velden in een document worden bewaard tijdens open/opslaan en conversies.
- Het is mogelijk om de resultaten van enkele van de meest populaire velden bij te werken.

## Velden in Microsoft Word

Velden in Microsoft Word documenten zijn complex. Er zijn meer dan 50 veldtypes (elk heeft zijn eigen resultaat berekeningsprocedure nodig), formules en expressies, bladwijzers en referenties, functies en diverse switches. Velden kunnen ook genest worden. Normaal gesproken wordt bij het openen van een document het veldresultaat (de waarde van het veld) getoond voor alle velden in het document. U kunt het weergeven van veldresultaat of veldcodes in schakelen Microsoft Word voor alle velden door in te drukken **ALT+F9**.

| Veldcode | Veldresultaat |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Velden invoegen in Microsoft Word

Een veld invoegen in Microsoft Word:

1. Klik op de **Insert** menu.
1. Klik op de **Quick Parts** keuzemenu
1. Selecteren **Field**
1. U krijgt een scherm gepresenteerd waarmee u de details van het veld kunt invoeren. Aan de linkerkant krijgt u een lijst van de mogelijke velden en aan de rechterkant is een scherm om de eigenschappen van het veld visueel te bewerken.<br/>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. Daarnaast kunt u de **Field Codes** knop waarmee u de veldcode direct kunt schrijven.<br/>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. Schakelaars kunnen ook worden ingevoegd met behulp van de **Options** knop<br/>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. Vul de gewenste velden in met de juiste informatie en druk vervolgens op **Ok**.
1. Het veld wordt ingevoegd in het document op de huidige cursorpositie.<br/>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Velden bijwerken in Microsoft Word

Een enkel veld bijwerken in Microsoft Word:

1. Verplaats de caret in het veld dat u wilt bijwerken.
1. Drukken **F9** om het veld bij te werken.

Alle velden in bijwerken Microsoft Word:

1. Drukken **Druk op Ctrl+A** om alle inhoud in het document te selecteren.
1. Drukken **F9** alle velden in de selectie bijwerken.

### Schakelen tussen weergave van veldcode en veldresultaat

Om veldcodes van één veld in te schakelen Microsoft Word:

1. Verplaats de caret naar het gewenste veld.
1. Drukken **SHIFT+F9** om de veldcode alleen voor dit veld te schakelen.

Veldcodes van alle velden in schakelen Microsoft Word:

1. Drukken **ALT+F9**

### Velden omzetten naar statische tekst in Microsoft Word

Een dynamisch veld omzetten naar statische tekst in Microsoft Word:

1. Verplaats de caret naar het veld dat je wilt converteren.
1. Drukken **Ctrl+Shift+F9** de velden omzetten naar statische tekst.

### Een veld verwijderen in Microsoft Word

Een veld in verwijderen Microsoft Word:

1. Selecteer de volledige inhoud van het veld. Als veldcodes worden weergegeven dan moeten ook de openings- en eindehaakjes worden geselecteerd.
1. Drukken **Delete** om het hele veld te verwijderen.

## Velden in Aspose.Words

Wanneer een document geladen wordt Aspose.Words de velden van het document worden geladen in de Aspose.Words Document Object Model als een reeks afzonderlijke componenten (nodes). Een enkel veld wordt geladen als een verzameling van [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) en [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) knooppunten samen met de inhoud tussen deze knooppunten. Als een veld geen veldresultaat heeft dan zal er geen [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) Node. Al deze knooppunten zijn altijd inline (als kinderen van [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) of [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

De inhoud van de veldcode wordt opgeslagen als [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) nodes tussen de [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) en [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Het veld resultaat wordt opgeslagen tussen de [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) en [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) knooppunten en kunnen bestaan uit verschillende soorten inhoud. Normaal gesproken bevat het veldresultaat alleen tekst die bestaat uit [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) knooppunten, maar het is mogelijk voor de [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) knooppunt te worden geplaatst in een volledig andere paragraaf, en dus het maken van het veld resultaat bestaat uit blok niveau knooppunten zoals [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) en [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Knooppunten ook.

In Aspose.Words elk van de **FieldXXX** nodes afkomstig van [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Deze klasse biedt een eigenschap om het type veld dat wordt weergegeven door de opgegeven knooppunt te controleren via de [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/) eigendom. Bijvoorbeeld [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) vertegenwoordigt een merge-veld in het document.

{{% alert color="primary" %}}

Er zijn een aantal specifieke velden die bestaan in een Word-document die niet worden geïmporteerd in Aspose.Words als verzameling van **FieldXXX** knooppunten. Bijvoorbeeld, `LINK` veld en `INCLUDEPICTURE` veld worden geïmporteerd in Aspose.Words als a [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) object. Dit object geeft eigenschappen om te werken met de beeldgegevens die normaal worden opgeslagen in deze velden.

Formuliervelden worden ook geïmporteerd in Aspose.Words als hun eigen speciale klasse. De [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) klasse vertegenwoordigt een formulierveld in een Word-document en biedt aanvullende methoden die specifiek zijn voor een formulierveld.

{{% /alert %}}

### Velden ondersteund tijdens bijwerken

Berekening van de volgende velden wordt ondersteund in de huidige versie van Aspose.Words:

- = (formuleveld)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (inclusief TOT en TOF)
- TC

### Verfijnde verwerking

Aspose.Words volgt de weg Microsoft Word verwerkt velden en verwerkt als gevolg daarvan correct:

- geneste velden
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Veldargument kan het resultaat zijn van een genest veld.
- Velden kunnen zowel binnen een veldcode als in het veldresultaat worden genest.
- Spaties/geen spaties, citaten/geen aanhalingstekens, ontsnappingstekens in velden enz.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Velden die over meerdere paragrafen gaan.

#### Formulevelden

Aspose.Words een zeer ernstige toepassing van de formulemotor en ondersteunt het volgende:

- Rekenkundige en logische operators:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Functies:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Verwijzingen naar bladwijzers:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Nummeropmaak schakelaars:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

De volgende functies in expressies worden ondersteund: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### `IF` en `COMPARE` Velden

Een deel van de `IF` uitdrukkingen die Aspose.Words kan gemakkelijk berekenen moet u een idee geven van hoe krachtig deze functie is:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### `DATE` en `TIME` Velden

Aspose.Words ondersteunt alle datum en tijd formattering switches beschikbaar in Microsoft Word, Enkele voorbeelden zijn:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Mail Merge Velden

Aspose.Words legt geen beperking op aan de complexiteit van Mail Merge velden in uw documenten en ondersteunt geneste `IF` en formule velden en kan zelfs berekenen de merge veld

Enkele voorbeelden van Mail Merge velden die Aspose.Words ondersteunt:

- Mail merge veldschakelaars:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- geneste velden samenvoegen in een formule:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Bereken de naam van het merge-veld op runtime:
  `MERGEFIELD { `ALS` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Voorwaardelijke overgang naar de volgende record in de gegevensbron:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### Formaatschakelaars

Een veld in een document kan formatteringsschakelaars bevatten die aangeven hoe de resulterende waarde geformatteerd moet worden. Aspose.Words ondersteunt de volgende format switches:

- @ - datum en tijd opmaak
- \\\# - nummeropmaak
- \\\\\\\\* Caps
- \\\\\\\\* EersteCap
- \\\\\\\\* Lager
- \\\\\\\\* Boven
- \\\\\\\\* CHARFORMAT-formaat resultaat volgens het eerste teken van de veldcode.
- \\\\\\\\\* MERGEFORMAT-formaat resultaat volgens hoe het oude resultaat is geformatteerd.

#### Date en nummeropmaak in velden

Wanneer Aspose.Words Berekent een veldresultaat, het moet vaak een string verwerken in een getal of datum waarde en ook om het terug te formatteren naar een string. Standaard Aspose.Words gebruikt de huidige draadcultuur voor het uitvoeren van ontleden en formatteren bij het berekenen van veldwaarden tijdens veldupdate en mail merge. Er zijn ook opties in de vorm van de [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) klasse die verdere controle mogelijk maakt over welke cultuur tijdens veldupdate wordt gebruikt.

- Standaard [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) eigenschap is ingesteld op [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) welke velden formatteren met behulp van de huidige draadcultuur.
- Deze eigenschap kan ingesteld worden op [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) dus de taal die is ingesteld uit de veldcode van het veld wordt gebruikt voor het formatteren in plaats daarvan.

#### Formatteren met de huidige discussiecultuur

Om de cultuur die tijdens veldberekening wordt gebruikt te controleren, gebruik je de **lokale.setlocale** methode om de cultuur van uw keuze te bepalen alvorens veldberekening aan te roepen.
Hieronder laat je zien hoe je de cultuur kunt veranderen die gebruikt wordt in het formatteren van velden tijdens de update.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Het gebruik van de huidige cultuur om velden te formatteren stelt een systeem in staat om eenvoudig en consequent te controleren hoe alle velden in het document worden geformatteerd tijdens veldupdate.

#### Formatteren met behulp van de cultuur in het document

Aan de andere kant, Microsoft Word formatteert elk individueel veld op basis van de taal van de tekst in het veld (in het bijzonder, de runs van de veldcode). Soms tijdens het bijwerken van het veld kan dit het gewenste gedrag zijn, bijvoorbeeld als je documenten hebt geglobaliseerd die inhoud bevatten bestaande uit vele verschillende talen en wil dat elke velden om de locale gebruikt uit de tekst te eren. Aspose.Words ondersteunt ook deze functionaliteit.

De [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) klasse geeft a [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) eigenschap die leden bevat die kunnen worden gebruikt om te controleren hoe velden worden bijgewerkt in het document. Hieronder laat u zien hoe u kunt aangeven waar de cultuur gebruikt voor datumopmaak tijdens veldupdate en Mail Merge is gekozen uit.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Het vinden van de veldcode en het veldresultaat

Een veld dat wordt ingevoegd met behulp van [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) geeft a [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) object. Dit is een gevel klasse die handige methoden biedt om snel dergelijke eigenschappen van een veld te vinden. Opmerking als u alleen op zoek bent naar de namen van merge velden in het document dan kunt u in plaats daarvan de ingebouwde methode gebruiken [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/). Onderstaand voorbeeld laat zien hoe namen van alle merge-velden in een document kunnen worden opgehaald.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Hoe verzamelvelden hernoemen

Onderstaand voorbeeld laat zien hoe je merge velden hernoemt in een Word-document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
