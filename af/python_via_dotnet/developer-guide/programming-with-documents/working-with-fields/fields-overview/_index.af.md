---
title: Velde Oorsig in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Velde Oorsig
linktitle: Velde Oorsig
description: "Jy kan toegang tot veld wysiging met behulp van Python. Velde van die dokument word gelaai in die Aspose.Words Document Object Model (DOM)."
type: docs
weight: 10
url: /af/python-net/fields-overview/
timestamp: 2024-10-21-11-17-44
---


Gewoonlik'n veld, wanneer ingevoeg in Microsoft Word, reeds bevat'n up-to-date waarde. Byvoorbeeld, as die veld'n formule of'n bladsy nommer is, sal dit'n korrekte berekende waarde vir die gegewe weergawe van die dokument bevat. Maar as jy'n aansoek wat genereer of verander'n dokument met velde (byvoorbeeld kombineer twee dokumente of vul met data) dan vir die dokument nuttig te wees, moet alle velde ideaal opgedateer word.

'n veld bestaan uit:

![fields-aspose-words](fields-overview-1.png)

- Die veldstart-en skeidingsknope word gebruik om die inhoud wat die veldkode uitmaak, te omvat (gewoonlik as gewone teks)
- Die veld skeiding en veld einde omvat die veld resultaat. Dit kan bestaan uit verskillende soorte inhoud wat wissel van teksreekse tot paragrawe tot tabelle.
- Sommige velde mag nie'n skeiding wat beteken dat die hele inhoud maak die veld kode.
- Die veldkode definieer die gedrag van die veld en bestaan uit die veld identifiseerder en dikwels ander parameters soos veld naam en skakelaars.
- Die veldresultaat bevat die mees onlangse evaluering van die veld. Hierdie waarde is gestoor in die veld resultaat en is wat vertoon word aan die gebruiker. Sommige velde mag nie enige veldresultaat hê nie, dus sal niks in die dokument vertoon word nie. Net so kan sommige velde nog nie opgedateer word nie, daarom sal hulle ook geen veldresultaat hê nie.

Hier is'n siening van hoe'n veld gestoor word in Aspose.Words deur die gebruik van die " *DocumentExplorer"* voorbeeld wat gevind kan word op [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](fields-overview-2.png)

Aspose.Words is'n klas biblioteek ontwerp vir bediener-kant verwerking van Microsoft Word dokumente en ondersteun velde in die volgende maniere:

- Alle velde in'n dokument word bewaar tydens open/save en omskakelings.
- Dit is moontlik om resultate van sommige van die gewildste velde op te dateer.

## Velde in Microsoft Word

Velde in Microsoft Word dokumente is kompleks. Daar is meer as 50 veld tipes (elkeen het sy eie resultaat berekening prosedure), formules en uitdrukkings, boekmerke en verwysings, funksies en verskeie skakelaars. Velde kan ook genesteer word. Gewoonlik wanneer'n dokument oopgemaak word, word die veldresultaat (die waarde van die veld) vir alle velde in die dokument vertoon. U kan die vertoning van veldresultaat of veldkodes in Microsoft Word vir alle velde wissel deur op **ALT+F9** te druk.

| Veldkode | Veldresultaat |
| :- | :- |
| ![field-code-result-aspose-words](fields-overview-3.png) | ![todo:image_alt_text](fields-overview-4.png) |

### Voeg Velde in Microsoft Word

Om'n veld in Microsoft Wordin te voeg:

1. Klik op die **Insert** - kieslys.
1. Klik op die **Quick Parts** aftreklys
1. Kies **Field**
1. U word aangebied met'n skerm waarmee u die besonderhede van die veld kan invoer. Aan die linkerkant kry u'n lys van die moontlike velde en aan die regterkant is'n skerm om die eienskappe van die veld visueel te wysig.<br>
![field-edit-aspose-words](fields-overview-5.png)
1. Daarbenewens kan u die **Field Codes** - knoppie druk waarmee u die veldkode direk kan uitskryf.<br>
![field-properties-aspose-words](fields-overview-6.png)
1. Skakelaars kan ook ingevoeg word deur die **Options** knoppie te gebruik<br>
![field-options-aspose-words](fields-overview-7.png)
1. Gebruik enige metode, vul die gewenste velde in met die toepaslike inligting en druk dan **Ok**.
1. Die veld is ingevoeg in die dokument by die huidige wyser posisie.<br>
![insert-field-aspose-words](fields-overview-8.png)

### Opdateer Velde in Microsoft Word

Om'n enkele veld in Microsoft Wordby te werk:

1. Skuif die karet in die veld wat jy wil opdateer.
1. Druk **F9** om die veld op te dateer.

Om alle velde in Microsoft Wordop te dateer:

1. Druk **Ctrl+A** om al die inhoud in die dokument te kies.
1. Druk **F9** om al die velde wat in die seleksie gevind word, op te dateer.

### Skakel tussen Vertoning Van Veldkode en Veldresultaat

Om veldkodes van'n enkele veld in Microsoft Wordte skakel:

1. Beweeg die karet in die verlangde veld.
1. Druk **SHIFT+F9** om die veldkode net vir hierdie veld te skakel.

Om veldkodes van alle velde in Microsoft Wordte wissel:

1. Druk **ALT+F9**

### Omskakeling Van Velde Na Statiese Teks in Microsoft Word

Om'n dinamiese veld om te skakel na statiese teks in Microsoft Word:

1. Skuif die karet in die veld wat jy wil omskep.
1. Druk **Ctrl+Shift+F9** om die velde na statiese teks om te skakel.

### Verwyder'n Veld in Microsoft Word

Om'n veld in Microsoft Wordte verwyder:

1. Kies die hele inhoud wat die veld uitmaak. As veldkodes vertoon word, moet die opening en einde braces ook gekies word.
1. Druk **Delete** om die hele veld te verwyder.

## Velde in Aspose.Words

Wanneer'n dokument in Aspose.Words gelaai word, word die velde van die dokument in die Aspose.Words Document Object Model gelaai as'n stel afsonderlike komponente (nodes). 'n enkele veld word gelaai as'n versameling van [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) en [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) nodusse saam met die inhoud tussen hierdie nodusse. As'n veld nie'n veldresultaat het nie, sal daar geen [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) - knooppunt wees nie. Al hierdie nodusse word altyd inlyn gevind (as kinders van [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) of [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

Die inhoud wat die veld kode maak gestoor as [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) nodes tussen die [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) en [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Die veld resultaat is gestoor tussen die [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) en [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) nodes en kan bestaan uit verskillende tipes van inhoud. Gewoonlik bevat die veldresultaat net teks wat bestaan uit [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) nodusse, maar dit is moontlik dat die [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) node in'n heeltemal ander paragraaf geleë is, en sodoende die veldresultaat bestaan uit blokvlakknope soos [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) en [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) nodusse.

In Aspose.Words is elkeen van die **FieldXXX** nodusse afgelei van [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Hierdie klas bied'n eienskap om die tipe veld wat deur die gespesifiseerde knoop deur die [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/) eienskap verteenwoordig word, te kontroleer. Byvoorbeeld [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) verteenwoordig'n samesmelting veld in die dokument.

{{% alert color="primary" %}}

Daar is'n paar spesifieke velde wat bestaan in'n Word dokument wat nie ingevoer in Aspose.Words as'n versameling van **FieldXXX** nodes. Byvoorbeeld, `LINK` veld en `INCLUDEPICTURE` veld word ingevoer in Aspose.Words as'n [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) voorwerp. Hierdie voorwerp bied eienskappe om te werk met die beeld data normaalweg gestoor in hierdie velde.

Vorm velde word ook ingevoer in Aspose.Words as hul eie spesiale klas. Die [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) klas verteenwoordig'n vorm veld in'n Word dokument en bied addisionele metodes wat spesifiek is vir'n vorm veld.

{{% /alert %}}

### Velde Ondersteun tydens Opdatering

Berekening van die volgende velde word ondersteun in die huidige weergawe van Aspose.Words:

- = (formule veld)
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
- `TOC` (including TOT and TOF)
- TC

### Gesofistikeerde Ontleding

Aspose.Words volg die manier waarop Microsoft Word velde verwerk en as gevolg daarvan hanteer dit korrek:

- Gesponsorde velde
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Veld argument kan'n gevolg van'n geneste veld wees.
- Velde kan binne'n veldkode sowel as in die veldresultaat genesteer word.
- Spasies/geen spasies, aanhalingstekens/geen aanhalingstekens, ontsnap karakters in velde ens.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Velde wat oor verskeie paragrawe strek.

#### Formule Velde

Aspose.Words bied'n baie ernstige implementering van die formule enjin en ondersteun die volgende:

- Aritmetiese en logiese operateurs:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Funksies:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Verwysings na boekmerke:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Nommer formatering skakelaars:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Die volgende funksies in uitdrukkings word ondersteun: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### `IF` and `COMPARE` Fields

Net'n paar van die `IF` uitdrukkings wat Aspose.Words maklik kan bereken, moet jou'n idee gee van hoe kragtig hierdie kenmerk is:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### `DATE` and `TIME` Fields

Aspose.Words ondersteun alle datum en tyd formatering skakelaars beskikbaar in Microsoft Word, 'n paar voorbeelde is:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Mail Merge Velde

Aspose.Words stel geen beperking op die kompleksiteit van mail merge velde in jou dokumente en ondersteun geneste `IF` en formule velde en kan selfs bereken die samesmelting veld se naam met behulp van'n formule.

'n paar voorbeelde van mail merge velde wat Aspose.Words ondersteun:

- Mail merge veldskakelaars:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Geneste saamvoeg velde in'n formule:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Bereken die naam van die merge-veld tydens looptyd:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Voorwaardelike skuif na volgende rekord in die databron:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### Formaatskakelaars

'n veld in'n dokument kan formatering skakelaars wat spesifiseer hoe die gevolglike waarde moet geformateer word. Aspose.Words ondersteun die volgende formaat skakelaars:

- @ - datum en tyd formatering
- \\\# - getalformatering
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* Lower
- \\\\\\\\* Upper
- \\\\\\\\* CHARFORMAT - formaat resultaat volgens die eerste karakter van die veld kode.
- \\\\\\\\* MERGEFORMAT - formateer resultaat volgens hoe die ou resultaat geformateer is.

#### Datum En Nommer Formatering In Velde

Wanneer Aspose.Words bereken'n veld resultaat, dit dikwels nodig het om'n string te ontleed in'n getal of datum waarde en ook om dit terug te formateer na'n string.By standaard Aspose.Words gebruik die huidige draadkultuur om ontleding en formatering uit te voer wanneer veldwaardes bereken word tydens veldopdatering en mail merge. Daar is ook opsies wat in die vorm van die [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) klas wat verdere beheer oor watter kultuur gebruik word tydens veld update toelaat.

- By verstek is die [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) eienskap ingestel op [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) wat velde formateer met behulp van die huidige draadkultuur.
- Hierdie eienskap kan ingestel word op [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) sodat die taal stel van die veld kode van die veld gebruik word vir formatering in plaas daarvan.

#### Formatering met Behulp Van Die Huidige Draad Se Kultuur

Om die kultuur wat tydens veldberekening gebruik word, te beheer, gebruik net die **locale.setlocale** - metode om die kultuur van u keuse in te stel voordat u veldberekening aanroep.
Hieronder voorbeeld toon hoe om die kultuur wat gebruik word in formatering velde tydens update verander.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Die gebruik van die huidige kultuur om velde te formateer, laat'n stelsel toe om maklik en konsekwent te beheer hoe alle velde in die dokument geformateer word tydens veldopdatering.

#### Formatering met Behulp Van Die Kultuur in Die Dokument

Aan die ander kant, Microsoft Word formateer elke individuele veld gebaseer op die taal van die teks wat in die veld gevind word (spesifiek, die loop van die veldkode). Soms tydens veldopdatering kan dit die gewenste gedrag wees, byvoorbeeld as jy geglobaliseerde dokumente het wat inhoud bevat wat uit baie verskillende tale bestaan en wil hê dat elke veld die ligging wat uit die teks gebruik word, moet eer. Aspose.Words ondersteun ook hierdie funksie.

Die [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) klas bied'n [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) eienskap wat lede bevat wat gebruik kan word om te beheer hoe velde is opgedateer binne die dokument. Hieronder voorbeeld toon hoe om te spesifiseer waar die kultuur wat gebruik word vir datum formatering tydens veld update en mail merge is gekies uit.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Vind Die Veldkode en Veldresultaat

'n veld wat ingevoeg met behulp van [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) gee'n [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) voorwerp. Dit is'n fa argentade klas wat nuttige metodes bied om vinnig sulke eienskappe van'n veld te vind. Let op as u slegs op soek is na die name van samesmeltingsvelde in die dokument, kan u eerder die ingeboude metode [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) gebruik. Hieronder voorbeeld toon hoe om name van alle saamvoeg velde in'n dokument te kry.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Hoe Om Merge Fields Te Hernoem

Hieronder voorbeeld toon hoe om te hernoem saamvoeg velde in'n Word dokument.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
