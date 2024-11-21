---
title: Werk Met Paragrawe in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Werk Met Paragrawe
linktitle: Werk Met Paragrawe
description: "Voeg paragraaf in en spesifiseer die opmaak daarvan in'n dokument met Python."
type: docs
weight: 210
url: /af/python-net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

'n paragraaf is'n stel karakters wat in'n logiese blok gekombineer word en eindig met'n spesiale karakter – a *paragraph break*. In Aspose.Words word'n paragraaf verteenwoordig deur die [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) klas.

## Voeg'n Paragraaf in

Om'n nuwe paragraaf in die dokument in te voeg, moet jy eintlik'n paragraaf breekkarakter daarin invoeg. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) voeg'n string teks in die dokument sowel, maar bykomend, dit voeg'n paragraaf breek.

Die huidige lettertipe formatering word ook gespesifiseer deur die [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) eienskap en die huidige paragraaf formatering word bepaal deur die [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) eienskap.

Die volgende kode voorbeeld toon hoe om'n paragraaf in'n dokument in te voeg:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Formaat Paragraaf

Huidige paragraaf formatering word verteenwoordig deur'n [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) voorwerp wat teruggestuur word deur die [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) eienskap. Hierdie voorwerp bevat verskeie paragraaf formatering eienskappe beskikbaar in Microsoft Word. U kan die paragraafformatering maklik terugstel Na standaard Na Normale styl, links in lyn, geen inkeping, geen spasiëring, geen grense en geen skadu deur [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/) te skakel.

Die volgende kode voorbeeld toon hoe om paragraaf formatering stel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Pas'n Paragraafstyl toe

Sommige formatering voorwerpe soos [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) of [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) ondersteun style. 'n enkele ingeboude of gebruiker gedefinieerde styl word verteenwoordig deur'n [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) voorwerp wat die ooreenstemmende styl eienskappe soos naam, basis styl, lettertipe en paragraaf formatering van die styl, en so aan bevat.

Verder, 'n [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) voorwerp bied die [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) eienskap wat'n locale-onafhanklike styl identifiseerder verteenwoordig deur'n [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/) opsomming waarde terugkeer. Die punt is dat die name van ingeboude style in Microsoft Word gelokaliseer is vir verskillende tale. Deur'n stylidentifiseerder te gebruik, kan jy die korrekte styl vind, ongeag die dokumenttaal. Die opsomming waardes ooreenstem met die Microsoft Word ingeboude style soos Normale, Heading 1, Heading 2 ens. Alle gebruiker-gedefinieerde style word die [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user) waarde toegeken.

Die volgende kode voorbeeld toon hoe om'n paragraaf styl toe te pas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Voeg Stylskeier in Om Verskillende Paragraafstyle Te Plaas

'n styl skeiding kan bygevoeg word aan die einde van'n paragraaf met behulp van die Ctrl + Alt + Enter Sleutelbord Kortpad in MS Woord. Hierdie funksie laat twee verskillende paragraafstyle toe wat in een logiese gedrukte paragraaf gebruik word. As jy'n teks van die begin van'n spesifieke opskrif wil hê om in'n Inhoudsopgawe te verskyn, maar nie die hele opskrif in die Inhoudsopgawe wil hê nie, kan jy hierdie funksie gebruik.

Die volgende kode voorbeeld toon hoe om'n styl skeier in te voeg om verskillende paragraaf style te akkommodeer:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Identifiseer Paragraaf Styl Skeier

Aspose.Words bied'n openbare eiendom [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) in'n [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) klas kan identifiseer Styl Skeiding Paragraaf soos getoon in die voorbeeld hieronder gegee:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Pas Grense en Skadu toe op'n Paragraaf

Grense word verteenwoordig deur die [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Dit is'n versameling van [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) voorwerpe wat verkry word deur indeks of deur grens tipe. Grens tipe word verteenwoordig deur die [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/) opsomming. Sommige waardes van die opsomming is van toepassing op verskeie of slegs een dokument element. Byvoorbeeld, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) is van toepassing op'n paragraaf of tabel sel terwyl [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) spesifiseer die diagonale rand in'n tabel sel net.

Beide die randversameling en elke afsonderlike rand het soortgelyke eienskappe soos kleur, lynstyl, lynbreedte, afstand van teks en opsionele skaduwee. Hulle word verteenwoordig deur eiendomme met dieselfde naam. U kan verskillende soorte grense bereik deur die eiendomswaardes te kombineer. Daarbenewens, beide [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) en [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) voorwerpe toelaat dat jy hierdie waardes te herstel na verstek deur die roeping van die [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/) metode.

{{% alert color="primary" %}}

Let daarop dat wanneer die grens eienskappe is teruggestel na hul standaard waardes, die grens word onsigbaar.

{{% /alert %}}

Aspose.Words het ook die [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) klas bevat skadu eienskappe vir dokument elemente. U kan die gewenste skadu-tekstuur en die kleure wat op die agtergrond en voorgrond van die element toegepas word, instel.

Die skadu tekstuur is ingestel met'n [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) opsomming waarde wat die toepassing van verskeie patrone op die [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) voorwerp toelaat. Byvoorbeeld, om'n agtergrond kleur vir'n dokument element stel, gebruik die [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) waarde en stel die voorgrond skadu kleur soos toepaslik. Hieronder voorbeeld toon hoe om grense en skadu aan'n paragraaf toe te pas.

Die volgende kode voorbeeld toon hoe om grense en skadu aan'n paragraaf toe te pas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
