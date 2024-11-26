---
title: Inleiding tot de velden in Java
second_title: Aspose.Words voor Java
articleTitle: Inleiding tot de velden
linktitle: Inleiding tot de velden
description: "Velden functie in details, veldcodes en veldresultaten uitgelegd in Aspose.Words voor Java."
type: docs
weight: 10
url: /nl/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words is een klasse bibliotheek ontworpen voor server-side verwerking van Microsoft Word documenteert en ondersteunt velden op de volgende manieren:

- alle velden in een document worden bewaard tijdens open/opslaan en conversies
- het is mogelijk de resultaten van de meeste velden bij te werken

In dit artikel zullen we meer te weten komen over veldstructuur, de velden die in Aspose.Words, en details over het werken met dergelijke velden.

## Veldstructuur

Een veld bestaat uit:

- De veldstart- en scheidingsknooppunten worden gebruikt om de inhoud van de veldcode te omvatten (normaal gesproken als platte tekst).
- De veldscheider en het veldeinde omvatten het veldresultaat. Dit kan bestaan uit verschillende soorten content, variërend van tekstreeksen tot paragrafen tot tabellen.
- Sommige velden kunnen geen scheidingsteken hebben wat betekent dat de gehele inhoud de veldcode vormt.
- De veldcode definieert het gedrag van het veld en bestaat uit de veldidentificatie en vaak andere parameters zoals veldnaam en switches.
- Het veldresultaat bevat de meest recente evaluatie van het veld. Deze waarde wordt opgeslagen in het veld resultaat en is wat wordt weergegeven aan de gebruiker. Sommige velden hebben mogelijk geen veldresultaat, zodat er niets in het document wordt weergegeven. Ook sommige velden kunnen nog niet worden bijgewerkt, dus zal ook geen veldresultaat hebben.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

De inhoud van de veldcode wordt opgeslagen als [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) tussen [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) en [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). Het veld resultaat wordt opgeslagen tussen de **FieldSeparator** en [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) knooppunten en kunnen bestaan uit verschillende soorten inhoud. Normaal gesproken bevat het veldresultaat alleen tekst die bestaat uit Run knooppunten, maar het is mogelijk dat de FieldEnd knooppunt zich in een compleet andere paragraaf, en dus het maken van het veld resultaat bestaat uit [Logische Nodesniveaus in een document](/words/nl/java/logical-levels-of-nodes-in-a-document/) zoals **Table** en **Paragraph** Knooppunten ook.

Hier ziet u hoe een veld wordt opgeslagen in Aspose.Words door gebruik te maken van het voorbeeld van "DocumentExplorer." [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Velden Aspose.Words Document Object Model (DOM)

Wanneer een document geladen wordt Aspose.Words de velden van het document in de Aspose.Words Document Object Model als een reeks afzonderlijke componenten (nodes). Een enkel veld wordt geladen als een verzameling van **FieldStart**, **FieldSeparator** en **FieldEnd** knooppunten samen met de inhoud tussen deze knooppunten. Als een veld geen veldresultaat heeft dan is er geen **FieldSeparator** Node. Al deze knooppunten zijn altijd inline (als kinderen van [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) of [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

In Aspose.Words elk van de **FieldXXX** nodes afkomstig van [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). Deze klasse biedt een eigenschap om het type veld dat wordt weergegeven door de opgegeven knooppunt te controleren via de [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) eigendom. Bijvoorbeeld `FieldType.FieldMergeField` vertegenwoordigt een merge-veld in het document.

{{% alert color="primary" %}}

Er zijn een aantal specifieke velden die bestaan in een Word-document die niet worden geïmporteerd in Aspose.Words als verzameling van **FieldXXX** knooppunten. Bijvoorbeeld, `LINK` veld en `INCLUDEPICTURE` veld worden geïmporteerd in Aspose.Words als a [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) object. Dit object biedt eigenschappen om te werken met de beeldgegevens die normaal worden opgeslagen in deze velden. Importeren `INCLUDEPICTURE` veld als **FieldXXX** de [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) optie moet worden opgegeven als **true**.

Formuliervelden worden ook ingevoerd in Aspose.Words als hun eigen speciale klasse. De [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) klasse vertegenwoordigt een formulierveld in een Word-document en biedt extra methoden die specifiek zijn voor een formulierveld.

{{% /alert %}}

## Ondersteunde velden

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
- `TOC` (inclusief TOT en TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Verfijnd veld ontleden

Aspose.Words volgt de weg Microsoft Word verwerkt velden en verwerkt als gevolg daarvan correct:

- geneste velden:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- veldargument kan het resultaat zijn van een genest veld
- velden kunnen zowel binnen een veldcode als in het veldresultaat worden genest
- spaties/geen spaties, citaten/geen aanhalingstekens, ontsnappingstekens in velden enz.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- velden die meerdere alinea's bestrijken

### Formulevelden

Aspose.Words een zeer serieuze uitvoering van de formulemotor en ondersteunt het volgende:

- rekenkundige en logische exploitanten:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- functies:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- verwijzingen naar bladwijzers:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- nummeropmaakschakelaars:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

De volgende functies in expressies worden ondersteund: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` en `COMPARE` Velden

Slechts enkele van de `IF` uitdrukkingen die Aspose.Words kan gemakkelijk berekenen moet u een idee geven van hoe krachtig deze functie is:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` en `TIME` Velden

Aspose.Words ondersteunt alle datum en tijd formattering switches beschikbaar in Microsoft Word, Enkele voorbeelden zijn:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Velden

Aspose.Words stelt geen beperking van de complexiteit van Mail Merge velden in uw documenten en ondersteunt geneste `IF` en formule velden en kan zelfs de merge veld te berekenen met behulp van een formule.

Enkele voorbeelden van Mail Merge velden die Aspose.Words ondersteunt:

- Mail merge veldschakelaars:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- samengevoegde velden in een formule:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Bereken de naam van het merge-veld op runtime:
  `MERGEFIELD { `ALS` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- voorwaardelijke overgang naar de volgende record in de gegevensbron:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Formaat wisselen

Een veld in een document kan formatteringsschakelaars bevatten die aangeven hoe de resulterende waarde geformatteerd moet worden. Aspose.Words ondersteunt de volgende format switches:

- datum en tijd formatteren
- nummeropmaak
- \\\\\\\* Caps
- \\\\\\\* FirstCap
- \\\\\\\* Lager
- \\\\\\\* Boven
- \\\\\\\\* CHARFORMAT-formaat resultaat volgens het eerste teken van de veldcode
- \\\\\\\\* MERGEFORMAT-formaat resultaat volgens hoe het oude resultaat is geformatteerd

### Date en nummeropmaak in velden

Wanneer Aspose.Words berekent een veldresultaat, het moet vaak een string verwerken in een getal of datum waarde en ook om het terug te formatteren naar een string. Standaard Aspose.Words gebruikt de huidige draadcultuur voor het verwerken en formatteren bij het berekenen van veldwaarden tijdens veldupdates en mail merge. Er zijn ook opties in de vorm van de [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) klasse die verdere controle mogelijk maakt over welke cultuur wordt gebruikt tijdens veldupdate%

* standaard de [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) eigenschap is ingesteld op [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) welke velden formatteren met de huidige draadcultuur
* deze eigenschap kan ingesteld worden op [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) dus de taal die is ingesteld uit de veldcode van het veld wordt gebruikt voor het formatteren in plaats daarvan

### Formatteren met de huidige discussiecultuur

Om de cultuur die tijdens veldberekening wordt gebruikt te controleren, stel gewoon de **CurrentCulture** eigendom aan een cultuur van uw keuze voordat het beroep veldberekening.

Het volgende voorbeeld van code laat zien hoe je de cultuur kunt veranderen die gebruikt wordt in opmaakvelden tijdens update:

VOORBEELD (gebruik de publieke wrapper CurrentThreadSettings.getLocale() en setLocale() in plaats van de private `Thread.CurrentThread`.CurrentCulture)

Het gebruik van de huidige cultuur om velden te formatteren stelt een systeem in staat om eenvoudig en consequent te controleren hoe alle velden in het document worden geformatteerd tijdens veldupdate.

### Opmaak met de cultuur in het document

Aan de andere kant, Microsoft Word formatteert elk individueel veld op basis van de taal van de tekst die in het veld wordt gevonden (in het bijzonder, de runs van de veldcode). Soms tijdens het bijwerken van het veld kan dit het gewenste gedrag zijn, bijvoorbeeld als je documenten hebt geglobaliseerd die inhoud bevatten bestaande uit vele verschillende talen en zou willen dat elke velden om de locale gebruikt uit de tekst te eren. Aspose.Words ondersteunt ook deze functionaliteit.

De [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) klasse geeft a [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) eigenschap die leden bevat die kunnen worden gebruikt om te controleren hoe velden worden bijgewerkt in het document.

Het volgende voorbeeld van code laat zien hoe te specificeren waar de cultuur gebruikt voor datumopmaak tijdens veldupdate en Mail Merge wordt gekozen uit:

VOORBEELD
