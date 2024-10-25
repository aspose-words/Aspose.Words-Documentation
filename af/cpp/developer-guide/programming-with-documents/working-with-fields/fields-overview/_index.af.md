---
title: Velde Oorsig in C++
second_title: Aspose.Words vir C++
articleTitle: Velde Oorsig
linktitle: Velde Oorsig
description: "Velde kenmerk in besonderhede, veldkodes en veldresultate verduidelik in Aspose.Words vir C++."
type: docs
weight: 10
url: /af/cpp/fields-overview/
---

Aspose.Words is'n klas biblioteek ontwerp vir bediener-kant verwerking van Microsoft Word dokumente en ondersteun velde in die volgende maniere:

- alle velde in'n dokument word bewaar tydens open / save en omskakelings
- dit is moontlik om resultate van die meeste velde te werk

In hierdie artikel sal ons meer leer oor veldstruktuur, die velde wat in Aspose.Words ondersteun word, en besonderhede van die werk met sulke velde.

## Veldstruktuur

'n veld bestaan uit:

- Die veld begin en skeiding nodes word gebruik om die inhoud wat die veld kode (gewoonlik as gewone teks) te omvat.
- Die veld skeiding en veld einde omvat die veld resultaat. Dit kan bestaan uit verskillende soorte inhoud wat wissel van teksreekse tot paragrawe tot tabelle.
- Sommige velde mag nie'n skeiding wat beteken dat die hele inhoud maak die veld kode.
- Die veldkode definieer die gedrag van die veld en bestaan uit die veld identifiseerder en dikwels ander parameters soos veld name en skakelaars.
- Die veldresultaat bevat die mees onlangse evaluering van die veld. Hierdie waarde is gestoor in die veld resultaat en is wat vertoon word aan die gebruiker. Sommige velde mag nie enige veld resultate het dus sal niks in die dokument vertoon. Net so kan sommige velde nog nie opgedateer word nie, daarom sal hulle ook geen veldresultaat hê nie.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

Die inhoud wat die veld kode maak gestoor as [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) nodes tussen die [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) en [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). Die veld resultaat is gestoor tussen die **FieldSeparator** en [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) nodes en kan bestaan uit verskillende tipes van inhoud. Gewoonlik bevat die veldresultaat net teks wat bestaan uit **Run** nodusse, maar dit is moontlik dat die **FieldEnd** node in'n heeltemal ander paragraaf geleë is, en sodoende die veldresultaat bestaan uit [blokvlak-knope](/words/cpp/logical-levels-of-nodes-in-a-document/) soos **Table** en **Paragraph** nodusse ook.

Hier is'n siening van hoe'n veld in Aspose.Words gestoor word deur die "*DocumentExplorer"* voorbeeld te gebruik.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Velde in die Aspose.Words Dokumentvoorwerpmodel (DOM)

Wanneer'n dokument in Aspose.Words gelaai word, word die velde van die dokument in die [Aspose.Words Dokument Voorwerp Model](/words/cpp/aspose-words-document-object-model/) as'n stel van afsonderlike komponente (nodes). 'n enkele veld word gelaai as'n versameling van **FieldStart**, **FieldSeparator** en **FieldEnd** nodusse saam met die inhoud tussen hierdie nodusse. As'n veld nie'n veldresultaat het nie, sal daar geen **FieldSeparator** - knooppunt wees nie. Al hierdie nodusse word altyd inlyn gevind (as kinders van [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) of [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

In Aspose.Words is elkeen van die **FieldXXX** nodusse afgelei van [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). Hierdie klas bied'n eienskap om die tipe veld wat deur die gespesifiseerde knoop deur die [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/) eienskap verteenwoordig word, te kontroleer. Byvoorbeeld **FieldType.FieldMergeField** verteenwoordig'n samesmelting veld in die dokument.

{{% alert color="primary" %}}

Daar is'n paar spesifieke velde wat bestaan in'n Word dokument wat nie ingevoer in Aspose.Words as'n versameling van **FieldXXX** nodes. Byvoorbeeld, die `LINK` veld en `INCLUDEPICTURE` veld word ingevoer in Aspose.Words as'n `Shape` voorwerp. Hierdie voorwerp bied eienskappe om te werk met die beeld data normaalweg gestoor in hierdie velde. Om `INCLUDEPICTURE` veld as **FieldXXX** nodes invoer die [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) opsie moet gespesifiseer word as **true**.

Vorm velde word ook ingevoer in Aspose.Words as hul eie spesiale klas. Die [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) klas verteenwoordig'n vorm veld in'n Word dokument en bied addisionele metodes wat spesifiek is vir'n vorm veld.

{{% /alert %}}

## Ondersteunde Velde

Berekening van die volgende velde word ondersteun in die huidige weergawe van Aspose.Words:

- = (formule)
`ADDRESSBLOCK`
`ASK`
`AUTHOR`
`AUTONUM`
`AUTONUMLGL`
`AUTONUMOUT`
`AUTOTEXT`
`BARCODE`
`COMMENTS`
`COMPARE`
`CREATEDATE`
`DATABASE`
`DATE`
`DISPLAYBARCODE`
`DOCPROPERTY`
`DOCVARIABLE`
`EDITTIME`
`EQ`
`FILENAME`
`FILESIZE`
`FILLIN`
`FORMCHECKBOX`
`FORMDROPDOWN`
`FORMTEXT`
`GLOSSARY`
`GOTOBUTTON`
`GREETINGLINE`
`HYPERLINK`
`IF`
`IMPORT`
`INCLUDE`
`INCLUDEPICTURE`
`INCLUDETEXT`
`INDEX`
`INFO`
`KEYWORDS`
`LASTSAVEDBY`
`LISTNUM`
`MACROBUTTON`
`MERGEBARCODE`
`MERGEFIELD`
`MERGEREC`
`MERGESEQ`
`NEXT`
`NEXTIF`
`NOTEREF`
`NUMCHARS`
`NUMPAGES`
`NUMWORDS`
`PAGE`
`PAGEREF`
`PRINTDATE`
`QUOTE`
`REF`
`REVNUM`
`SAVEDATE`
`SECTION`
`SECTIONPAGES`
`SEQ`
`SET`
`SHAPE`
`SKIPIF`
`STYLEREF`
`SUBJECT`
`SYMBOL`
`TEMPLATE`
`TIME`
`TITLE`
`TOA`
`TOC`
`USERADDRESS`
`USERINITIALS`
`USERNAME`

## Gevorderde Veld Ontleding

Aspose.Words volg die manier waarop Microsoft Word velde verwerk en as gevolg daarvan hanteer dit korrek:

- gesponsorde velde:
`IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- veld argument kan'n gevolg van'n geneste veld wees
- velde kan binne'n veldkode sowel as in die veldresultaat genesteer word
- spasies/geen spasies, aanhalingstekens/geen aanhalingstekens, ontsnap karakters in velde ens.:
`MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- velde wat oor verskeie paragrawe strek

### Formule Velde

Aspose.Words bied'n baie ernstige implementering van die formule enjin en ondersteun die volgende:

- aritmetiese en logiese operateurs:
`=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funksies:
`=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- verwysings na boekmerke:
`=IF(C>4, 5,ABS(A)*.76) +3.85`
- nommer formatering skakelaars:
`=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Die volgende funksies in uitdrukkings word ondersteun: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` En `COMPARE` Velde

Net'n paar van die `IF` uitdrukkings wat Aspose.Words maklik kan bereken, moet jou'n idee gee van hoe kragtig hierdie kenmerk is:

`IF 3 > 5.7^4+MAX(4,3) True False`
`IF "abcd" > "abc" True False`
`IF "?ab*" = "1abdsg" True False`
`IF 4 = "2*2" True False`
`COMPARE 3+5/34 < 4.6/3/2`

### `DATE` En `TIME` Velde

Aspose.Words ondersteun alle datum en tyd formatering skakelaars beskikbaar in Microsoft Word, 'n paar voorbeelde is:

`DATE @ "d-MMM-yy"`
`DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Velde

Aspose.Words stel geen beperking op die kompleksiteit van mail merge velde in jou dokumente en ondersteun geneste `IF` en formule velde en kan selfs bereken die samesmelting veld se naam met behulp van'n formule.

'n paar voorbeelde van mail merge velde wat Aspose.Words ondersteun:

- Mail merge veldskakelaars:
`MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- geneste saamvoeg velde in'n formule:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- bereken die naam van die merge-veld tydens looptyd:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- voorwaardelike skuif na volgende rekord in die databron:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Formaatskakelaars

'n veld in'n dokument kan formatering skakelaars wat spesifiseer hoe die gevolglike waarde moet geformateer word. Aspose.Words ondersteun die volgende formaat skakelaars:

- @ - datum en tyd formatering
- \\\# - getalformatering
- \\\\\\\\* Kappies
- \\\\\\\\* FirstCap
- \\\\\\\\* Laer
- \\\\\\\\* Boonste
- \\\\\\\\* CHARFORMAT - formaat resultaat volgens die eerste karakter van die veld kode
- \\\\\\\\* MERGEFORMAT - formateer resultaat volgens hoe die ou resultaat geformateer is

### Datum En Nommer Formatering In Velde

Wanneer Aspose.Words bereken'n veld resultaat, dit dikwels nodig het om'n string te ontleed in'n getal of datum waarde en ook om dit terug te formateer na'n string.By standaard Aspose.Words gebruik die huidige draadkultuur om ontleding en formatering uit te voer wanneer veldwaardes bereken word tydens veldopdatering en mail merge. Daar is ook opsies wat in die vorm van die [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/) klas wat verdere beheer oor watter kultuur gebruik word tydens veld update toelaat.

- by verstek is die [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) eienskap ingestel op [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) wat velde formateer met behulp van die huidige draad kultuur
- hierdie eienskap kan ingestel word op [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/) sodat die taal stel van die veld kode van die veld gebruik word vir formatering in plaas daarvan

### Formatering met Behulp Van Die Huidige Draad Se Kultuur

Om die kultuur wat tydens veldberekening gebruik word, te beheer, stel net die **CurrentCulture** eienskap op'n kultuur van jou keuse voordat jy veldberekening aanroep.

Die volgende kode voorbeeld toon hoe om die kultuur wat gebruik word in die formatering velde tydens update verander:

EXAMPLE

Die gebruik van die huidige kultuur om velde te formateer, laat'n stelsel toe om maklik en konsekwent te beheer hoe alle velde in die dokument geformateer word tydens veldopdatering.

### Formatering met Behulp Van Die Kultuur in Die Dokument

Aan die ander kant, Microsoft Word formateer elke individuele veld gebaseer op die taal van die teks wat in die veld gevind word (spesifiek, die loop van die veldkode). Soms tydens veldopdatering kan dit die gewenste gedrag wees, byvoorbeeld as jy geglobaliseerde dokumente het wat inhoud bevat wat uit baie verskillende tale bestaan en wil hê dat elke veld die ligging wat uit die teks gebruik word, moet eer. Aspose.Words ondersteun ook hierdie funksie.

Die [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) klas bied'n [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/) eienskap wat lede bevat wat gebruik kan word om te beheer hoe velde is opgedateer binne die dokument.

Die volgende kode voorbeeld toon hoe om te spesifiseer waar die kultuur wat gebruik word vir datum formatering tydens veld update en mail merge is gekies uit:

EXAMPLE