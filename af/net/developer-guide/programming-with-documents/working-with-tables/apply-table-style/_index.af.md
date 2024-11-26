---
title: Verander Tabelstyl In Word-Dokumente
second_title: Aspose.Words vir .NET
articleTitle: Pas Tabelstyl Toe
linktitle: Pas Tabelstyl Toe
description: "Gevorderde tabel formatering C#. Skep'n tabelstyl met C#. Pas tabel styl C# toe."
type: docs
weight: 80
url: /af/net/working-with-tablestyle/
timestamp: 2024-02-02-12-07-36
---

'n tabel styl definieer'n stel van formatering wat maklik toegepas kan word om'n tabel. Formatering soos grense, skadu, uitlijning en lettertipe kan in'n tabelstyl gestel word en op baie tabelle toegepas word vir'n konsekwente voorkoms.

Aspose.Words ondersteun die toepassing van'n tabel styl om'n tabel en ook lees eienskappe van enige tabel styl. Tabelstyle word bewaar tydens laai en stoor op die volgende maniere:

- Tabelstyle in DOCX en WordML formate word bewaar wanneer laai en stoor na hierdie formate
- Tabelstyle word bewaar wanneer u in DOC - formaat laai en stoor (maar nie na enige ander formaat nie)
- Wanneer uitvoer na ander formate, lewering of drukwerk, tabel style uitgebrei word na direkte formatering in die tabel, sodat al die formatering bewaar word

## Skep'n Tafelstyl

Die gebruiker kan'n nuwe styl skep en dit by style collection voeg. Die [Add](https://reference.aspose.com/words/net/aspose.words/stylecollection/add/) metode word gebruik om'n nuwe tabel styl te skep.

Die volgende kode voorbeeld toon hoe om'n nuwe gebruiker gedefinieerde tabel styl te skep:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## Kopieer'n Bestaande Tabelstyl

Indien nodig, kan u'n tabelstyl wat reeds in'n sekere dokument bestaan, in u stylversameling kopieer deur die `AddCopy` - metode te gebruik.

Dit is belangrik om te weet dat die gekoppelde style ook met hierdie kopiëring gekopieer word.

Die volgende kode voorbeeld toon hoe om'n styl van een dokument na'n ander dokument invoer:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## Pas'n Bestaande Tabelstyl toe

Aspose.Words verskaf'n [TableStyle](https://reference.aspose.com/words/net/aspose.words/tablestyle/) geërf van die [Style](https://reference.aspose.com/words/net/aspose.words/style/) klas. **TableStyle** vergemaklik die gebruiker om verskillende stylopsies toe te pas soos skadu, vulling, inkeping, [CellSpacing](https://reference.aspose.com/words/net/aspose.words/tablestyle/cellspacing/) en [Font](https://reference.aspose.com/words/net/aspose.words/style/font/), ens.

Daarbenewens, Aspose.Words bied die [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) klas en'n paar eienskappe van die `Table` klas om te spesifiseer watter tabel styl ons sal werk met: [Style](https://reference.aspose.com/words/net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words.tables/table/styleidentifier/), [StyleName](https://reference.aspose.com/words/net/aspose.words.tables/table/stylename/), en [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words bied ook [ConditionalStyle](https://reference.aspose.com/words/net/aspose.words/conditionalstyle/) klas wat spesiale formatering toegepas op'n gebied van'n tabel met'n toegewys tabel styl, en die [ConditionalStyleCollection](https://reference.aspose.com/words/net/aspose.words/conditionalstylecollection/) wat'n versameling van **ConditionalStyle** voorwerpe verteenwoordig. Hierdie versameling bevat'n permanente stel items wat een item verteenwoordig vir elke waarde van die [ConditionalStyleType](https://reference.aspose.com/words/net/aspose.words/conditionalstyletype/) opsomming tipe. Die **ConditionalStyleType** opsomming definieer alle moontlike tabel gebiede waarop voorwaardelike formatering kan gedefinieer word in'n tabel styl.

In hierdie geval kan voorwaardelike opmaak gedefinieer word vir alle moontlike tabel area gedefinieer onder die ConditionalStyleType opsomming tipe.

Die volgende kode voorbeeld toon hoe om voorwaardelike formatering vir kop ry van die tabel te definieer:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

U kan ook kies op watter tabeldele style toegepas moet word, soos eerste kolom, laaste kolom, gestreepte rye. Hulle word in die [TableStyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/tablestyleoptions/) opsomming gelys en word toegepas deur die [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/) eienskap. Die **TableStyleOptions** opsomming laat'n bitwise kombinasie van hierdie eienskappe toe.

Die volgende kode voorbeeld toon hoe om'n nuwe tabel met'n tabel styl toegepas te skep:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

Die foto's hieronder toon'n voorstelling van die **Table Styles** in Microsoft Word en hul ooreenstemmende eienskappe in Aspose.Words.

![formatting-table-style-aspose-words-net](applying-formatting-10.png)

## Neem Formatering van Tafelstyl En Pas Dit Toe As Direkte Formatering

Aspose.Words bied ook die [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/net/aspose.words/document/expandtablestylestodirectformatting/) metode om formatering gevind op'n tabel styl te neem en brei dit uit op die rye en selle van die tabel as direkte formatering. Probeer formatering kombineer met tafelstyl en selstyl.

{{% alert color="primary" %}}

Hierdie metode sal nie enige ander formatering wat reeds op die tabel toegepas is deur'n ry of selformaat oorskryf nie.

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om die formatering uit te brei van style na tabel rye en selle as direkte formatering:

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}
