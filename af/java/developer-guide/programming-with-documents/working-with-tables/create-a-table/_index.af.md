---
title: Hoe Om'n Tabel in JavaTe Skep
second_title: Aspose.Words vir Java
articleTitle: Skep'n Tabel
linktitle: Skep'n Tabel
description: "Verskillende maniere om tabelle in u dokument te skep met Java."
type: docs
weight: 20
url: /af/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words laat gebruikers toe om tabelle in'n dokument van nuuts af te skep en bied verskeie verskillende metodes om dit te doen. Hierdie artikel bied besonderhede oor hoe om geformateerde tabelle by u dokument te voeg deur elke metode te gebruik, asook'n vergelyking van elke metode aan die einde van die artikel.

## Verstek Tabel Style

Die nuutgeskepte tabel kry standaardwaardes soortgelyk aan die wat in Microsoft Wordgebruik word:

| Tabel Eienskap | Verstek in Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | `1/2 pt` |
| Grens Kleur | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |
{{% alert color="primary" %}}

'n tabel kan inlyn wees as dit styf geplaas is, of dryf as dit op enige plek op die bladsy geplaas kan word. By verstek skep Aspose.Words altyd inlyn tabelle.

{{% /alert %}}

## Skep'n Tabel met DocumentBuilder

In Aspose.Words kan gebruikers'n tabel in'n dokument skep met behulp van die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Die basiese algoritme vir die skep van'n tabel is soos volg:

1. Begin die tabel met [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. Voeg'n sel by die tabel met [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) - dit begin outomaties'n nuwe ry
3. Gebruik opsioneel die [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) eienskap om selformatering te spesifiseer
4. Voeg die selinhoud in met behulp van die toepaslike **DocumentBuilder** metodes soos [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), en ander
5. Herhaal stappe 2-4 totdat die ry voltooi is
6. Roep [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) om die huidige ry te beëindig
7. Opsioneel, gebruik die [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) eienskap om ry formatering spesifiseer
8. Herhaal stappe 2-7 totdat die tabel voltooi is
9. Bel [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) om die tafel klaar te bou

{{% alert color="primary" %}}

Belangrike besonderhede:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) kan ook binne'n sel genoem word, in watter geval dit die skepping van'n geneste tabel binne die sel begin.
- Nadat jy [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) gebel het, word'n nuwe sel geskep, en enige inhoud wat jy byvoeg met behulp van ander metodes van die [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) klas sal by die huidige sel gevoeg word. Om'n nuwe sel op dieselfde ry te skep, bel **InsertCell** weer.
- As **InsertCell** onmiddellik na [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) en die einde van'n ry genoem word, sal die tabel op'n nuwe ry voortgaan.
- Die [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) metode om die tabel te beëindig moet slegs een keer genoem word nadat **EndRow** geroep is. Roep **EndTable** beweeg die wyser van die huidige sel na die posisie onmiddellik na die tabel.

{{% /alert %}}

Die proses om'n tabel te skep, kan duidelik in die volgende prentjie gesien word:

![creating-table-process](creating-table-process.jpg)

Die volgende kode voorbeeld toon hoe om'n eenvoudige tabel te skep met behulp van **DocumentBuilder** met standaard formatering:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

Die volgende kode voorbeeld toon hoe om'n geformateerde tabel te skep met behulp van DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

Die volgende kode voorbeeld toon hoe om'n geneste tabel te voeg met behulp van DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Skep'n Tabel via DOM (Dokumentobjekmodel)

Jy kan tabelle direk in die DOM invoeg deur'n nuwe [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) knoop by'n spesifieke posisie by te voeg.

Let asseblief daarop dat onmiddellik na die tabelknoop skepping, die tabel self heeltemal leeg sal wees, dit wil sê dit bevat nog nie rye en selle nie. Om rye en selle in'n tabel in te voeg, voeg die toepaslike [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) en [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) kind knope by die DOM.

{{% alert color="primary" %}}

Hierdie metode van die skep van'n tabel gebruik dieselfde tabel standaard as wanneer die gebruik van die **DocumentBuilder**.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om'n nuwe tabel van nuuts af te bou deur die toevoeging van die toepaslike kind nodes om die dokument boom:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Skep'n Tabel van HTML

Aspose.Words ondersteun die invoeging van inhoud in'n dokument van'n HTML bron met behulp van die [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) metode. Die insette kan'n volle HTML bladsy of net'n gedeeltelike uittreksel wees.

Met behulp van hierdie **InsertHtml** metode, kan gebruikers tabelle in die dokument invoeg via tabel etikette soos `<table>`, `<tr>`, `<td>`.

Die volgende kode voorbeeld toon hoe om'n tabel in'n dokument van'n string wat HTML tags:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Voeg'n Kopie Van'n Bestaande Tabel in

Daar is dikwels tye wanneer jy'n tabel moet skep gebaseer op'n reeds bestaande tabel in'n dokument. Die maklikste manier om'n tabel te dupliseer terwyl al die formatering behou word, is om die Tabel-knooppunt te kloon met behulp van die [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) - metode.

Dieselfde tegniek kan gebruik word om kopieë van'n bestaande ry of sel by'n tabel te voeg.

Die volgende kode voorbeeld toon hoe om'n tabel te dupliseer met behulp van node konstruktors:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om die laaste ry van'n tabel te kloon en voeg dit by die tabel:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

As u na tabelle in'n dokument kyk wat dinamies groei met elke rekord uit u databron, word die bogenoemde metode nie aanbeveel nie. In plaas daarvan word die gewenste uitset makliker bereik deur Mail merge met streke te gebruik. Jy kan meer leer oor hierdie tegniek in die [Mail Merge Met Streke](/words/java/types-of-mail-merge-operations/) afdeling.

## Vergelyk Maniere Om'n Tabel Te Skep

Aspose.Words bied verskeie metodes om nuwe tabelle in'n dokument te skep. Elke metode het sy eie voordele en nadele, so die keuse van wat om te gebruik hang dikwels af van die spesifieke situasie.

Kom ons kyk van naderby na hierdie maniere om tabelle te skep en vergelyk hul voor-en nadele:

| Metode | Voordele | Nadele |
| :- | :- | :- |
| Deur `DocumentBuilder` | Die standaardmetode vir die invoeging van tabelle en ander dokumentinhoud | Soms moeilik om baie variëteite van tabelle te skep op dieselfde tyd met dieselfde bouer geval |
| Deur DOM | Pas in beter met omliggende kode wat nodes direk in die DOM skep en invoeg sonder om'n **DocumentBuilder**te gebruik | Die tabel word "leeg" geskep: voordat u die meeste bewerkings uitvoer, moet u [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) skakel om ontbrekende kindknope te skep |
| Van HTML | Kan'n nuwe tabel van HTML bron met behulp van tags soos skep `<table>`, `<tr>`, `<td>` | Nie alle moontlike Microsoft Word tabel formate kan toegepas word op HTML |
| Kloning van'n bestaande tabel | U kan'n kopie van'n bestaande tabel skep terwyl u alle ry-en selformatering behou | Die toepaslike kind nodes moet verwyder word voordat die tabel gereed is vir gebruik |
