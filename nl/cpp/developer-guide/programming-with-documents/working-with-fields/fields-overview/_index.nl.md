---
title: Overzicht velden in C++
second_title: Aspose.Words voor C++
articleTitle: Overzicht Velden
linktitle: Overzicht Velden
description: "Velden worden weergegeven in details, veldcodes en veldresultaten die worden uitgelegd in Aspose.Words voor C++."
type: docs
weight: 10
url: /nl/cpp/fields-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words is een klassenbibliotheek die is ontworpen voor server-side verwerking van Microsoft Word documenten en ondersteunt velden op de volgende manieren:

- alle velden in een document blijven behouden tijdens openen / opslaan en conversies
- het is mogelijk om de resultaten van de meeste velden bij te werken

In dit artikel zullen we meer te weten komen over veldstructuur, de velden die worden ondersteund in Aspose.Words en details over het werken met dergelijke velden.

## Velden Structuur

Een veld bestaat uit::

- De veldstart-en scheidingsknooppunten worden gebruikt om de inhoud te omvatten die de veldcode vormt (normaal gesproken als gewone tekst).
- De veldscheiding en het veldeinde omvatten het velderesultaat. Dit kan bestaan uit verschillende soorten inhoud, variërend van tekst tot alinea ' s tot tabellen.
- Sommige velden hebben mogelijk geen scheidingsteken, wat betekent dat de volledige inhoud de veldcode vormt.
- De veldcode definieert het gedrag van het veld en bestaat uit de veldidentificatie en vaak andere parameters zoals veldnamen en schakelaars.
- Het veldresultaat bevat de meest recente evaluatie van het veld. Deze waarde wordt opgeslagen in het veldresultaat en wordt weergegeven aan de gebruiker. Sommige velden hebben mogelijk geen veldresultaten, waardoor er niets in het document wordt weergegeven. Evenzo zijn sommige velden mogelijk nog niet bijgewerkt en hebben ze daarom ook geen veldresultaat.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

De inhoud die de veldcode vormt, wordt opgeslagen als [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) knooppunten tussen de [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) en [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). Het veldresultaat wordt opgeslagen tussen de **FieldSeparator** en [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) knooppunten en kan bestaan uit verschillende soorten inhoud. Normaal gesproken bevat het velderesultaat alleen tekst die bestaat uit **Run** knooppunten, maar het is mogelijk dat de **FieldEnd** knoop zich in een compleet andere alinea bevindt, waardoor het velderesultaat bestaat uit [nodes op blokniveau](/words/cpp/logical-levels-of-nodes-in-a-document/) zoals **Table** en **Paragraph** nodes ook.

Hier is een weergave van hoe een veld wordt opgeslagen in Aspose.Words met behulp van het voorbeeld "*DocumentExplorer"*.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Velden in het Aspose.Words Document Object Model (DOM)

Wanneer een document in Aspose.Words wordt geladen, worden de velden van het document in de [Aspose.Words Document Object Model](/words/cpp/aspose-words-document-object-model/) als een set van afzonderlijke componenten (nodes). Een enkel veld wordt geladen als een verzameling van **FieldStart**, **FieldSeparator** en **FieldEnd** knooppunten samen met de inhoud tussen deze knooppunten. Als een veld geen veldresultaat heeft, zal er geen **FieldSeparator** knooppunt zijn. Al deze knooppunten worden altijd inline gevonden (Als kinderen van [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) of [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

In Aspose.Words is elk van de **FieldXXX** knooppunten afgeleid van [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). Deze klasse biedt een eigenschap om het type veld te controleren dat wordt weergegeven door het opgegeven knooppunt via de eigenschap [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/). Bijvoorbeeld **FieldType.FieldMergeField** staat voor een samenvoegveld in het document.

{{% alert color="primary" %}}

Er zijn bepaalde velden in een Word - document die niet in Aspose.Words zijn geïmporteerd als een verzameling van **FieldXXX** - knooppunten. Bijvoorbeeld, het `LINK` veld en `INCLUDEPICTURE` veld worden geïmporteerd in Aspose.Words als een `Shape` object. Dit object biedt eigenschappen om te werken met de afbeeldingsgegevens die normaal in deze velden zijn opgeslagen. Om `INCLUDEPICTURE` veld te importeren als **FieldXXX** knooppunten moet de optie [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) opgegeven worden als **true**.

Formuliervelden worden ook geïmporteerd in Aspose.Words als hun eigen speciale klasse. De klasse [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) vertegenwoordigt een formulierveld in een Word document en biedt aanvullende methoden die specifiek zijn voor een formulierveld.

{{% /alert %}}

## Ondersteunde Velden

Berekening van de volgende velden wordt ondersteund in de huidige versie van Aspose.Words:

- = (formule)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Geavanceerde Veldparsing

Aspose.Words volgt de manier waarop Microsoft Word velden verwerkt en verwerkt daardoor correct:

- geneste velden:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- veldargument kan het resultaat zijn van een genest veld
- velden kunnen zowel in een veldcode als in het veldresultaat worden genesteld
- spaties / geen spaties, aanhalingstekens / geen aanhalingstekens, escape-tekens in velden enz.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- velden met meerdere alinea ' s

### Formuleveld

Aspose.Words biedt een zeer serieuze implementatie van de formula engine en ondersteunt de volgende:

- rekenkundige en logische operatoren:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- functie:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- verwijzingen naar bladwijzers:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- aantal opmaakschakelaars:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

De volgende functies in uitdrukkingen worden ondersteund: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Slechts enkele van de `IF` uitdrukkingen die Aspose.Words gemakkelijk kan berekenen, zouden u een idee moeten geven van hoe krachtig deze functie is:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words ondersteunt alle datum - en tijdopmaakschakelaars die beschikbaar zijn in Microsoft Word, enkele voorbeelden zijn::

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge velden

Aspose.Words legt geen limiet op aan de complexiteit van Mail Merge velden in uw documenten en ondersteunt geneste `IF` en formulevelden en kan zelfs de naam van het samenvoegveld berekenen met behulp van een formule.

Enkele voorbeelden van Mail Merge velden die Aspose.Words ondersteunt:

- Mail merge veldschakelaars:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- geneste samenvoegvelden in een formule:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- bereken de naam van het veld samenvoegen tijdens runtime:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- voorwaardelijk verplaatsen naar de volgende record in de gegevensbron:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Formaatschakelaars

Een veld in een document kan opmaakschakelaars hebben die aangeven hoe de resulterende waarde moet worden opgemaakt. Aspose.Words ondersteunt de volgende opmaakschakelaars:

- @ - datum-en tijdopmaak
- \\\# - nummeropmaak
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* Lower
- \\\\\\\\* Upper
- \\\\\\\\* CHARFORMAT - resultaat opmaken volgens het eerste teken van de veldcode
- \\\\\\\\* MERGEFORMAT - resultaat opmaken volgens hoe het oude resultaat is opgemaakt

### Datum - en nummeropmaak in Velden

Wanneer Aspose.Words een veldresultaat berekent, moet het vaak een tekenreeks ontleden in een getal - of datumwaarde en ook om het terug te formatteren naar een string.By standaard Aspose.Words gebruikt de huidige threadcultuur om parsing en opmaak uit te voeren bij het berekenen van veldwaarden tijdens veldupdate en mail merge. Er zijn ook opties in de vorm van de [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/) - klasse die verdere controle mogelijk maakt over welke cultuur wordt gebruikt tijdens het bijwerken van het veld.

- standaard is de eigenschap [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) ingesteld op [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) welke velden opmaakt met de huidige threadcultuur
- deze eigenschap kan worden ingesteld op [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/), zodat de taal die is ingesteld uit de veldcode van het veld in plaats daarvan wordt gebruikt voor het opmaken

### Formatteren met de cultuur van de huidige Thread

Om de cultuur te bepalen die tijdens de veldberekening wordt gebruikt, stelt u de eigenschap **CurrentCulture** in op een cultuur van uw keuze voordat u de veldberekening oproept.

Het volgende codevoorbeeld laat zien hoe u de cultuur kunt wijzigen die wordt gebruikt in opmaakvelden tijdens de update:

EXAMPLE

Door de huidige cultuur te gebruiken om velden te formatteren, kan een systeem eenvoudig en consistent bepalen hoe alle velden in het document worden geformatteerd tijdens het bijwerken van velden.

### Opmaak met behulp van de cultuur in het Document

Aan de andere kant maakt Microsoft Word elk afzonderlijk veld op op basis van de taal van de tekst die in het veld wordt gevonden (met name de runs van de veldcode). Soms tijdens veldupdate kan dit het gewenste gedrag zijn, bijvoorbeeld als u geglobaliseerde documenten hebt die inhoud bevatten die uit veel verschillende talen bestaat en u wilt dat elk veld de taalinstelling respecteert die in de tekst wordt gebruikt. Aspose.Words ondersteunt ook deze functionaliteit.

De klasse [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) biedt een eigenschap [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/) die leden bevat die kunnen worden gebruikt om te bepalen hoe velden in het document worden bijgewerkt.

Het volgende codevoorbeeld toont hoe u kunt opgeven waar de cultuur die wordt gebruikt voor datumopmaak tijdens veldupdate en Mail Merge is gekozen uit:

EXAMPLE
