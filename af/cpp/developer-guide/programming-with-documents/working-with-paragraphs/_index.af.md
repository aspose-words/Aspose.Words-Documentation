---
title: Werk Met Paragrawe in C++
second_title: Aspose.Words vir C++
articleTitle: Werk Met Paragrawe
linktitle: Werk Met Paragrawe
description: "Paragraaf knoop manipulasie praktyke met behulp van C++."
type: docs
weight: 210
url: /af/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

'n paragraaf is'n stel karakters wat in'n logiese blok gekombineer word en eindig met'n spesiale karakter – a *paragraph break*. In Aspose.Words word'n paragraaf verteenwoordig deur die [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) klas.

## Voeg'n Paragraaf in

Om'n nuwe paragraaf in die dokument in te voeg, moet jy eintlik'n paragraaf breekkarakter daarin invoeg. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) voeg nie net'n string teks in die dokument nie, maar voeg ook'n paragraafonderbreking by.

Die huidige lettertipe formatering word ook gespesifiseer deur die [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) eienskap, en die huidige paragraaf formatering word bepaal deur die [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/) eienskap. In die volgende afdeling gaan ons in meer besonderhede oor paragraafformatering.

Die volgende kode voorbeeld toon hoe om'n paragraaf in'n dokument in te voeg:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Formaat Paragraaf

Huidige paragraaf formatering word verteenwoordig deur'n **ParagraphFormat** voorwerp wat teruggestuur word deur die **ParagraphFormat** eienskap. Hierdie voorwerp bevat verskeie paragraaf formatering eienskappe beskikbaar in Microsoft Word. U kan die paragraafformatering maklik terugstel na standaard Na Normale styl, links in lyn geen inkeping, geen spasiëring, geen grense en geen skadu deur [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/) te skakel.

Die volgende kode voorbeeld toon hoe om paragraaf formatering stel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Pas Paragraafstyl Toe

Sommige formatering voorwerpe soos Lettertipe of ParagraphFormat ondersteun style. 'n enkele ingeboude of gebruiker-gedefinieerde styl word verteenwoordig deur'n `Style` voorwerp wat die ooreenstemmende styl eienskappe soos naam, basis styl, lettertipe en paragraaf formatering van die styl, en so aan bevat.

Verder, 'n **Style** voorwerp bied die [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) eienskap wat'n locale-onafhanklike styl identifiseerder verteenwoordig deur die **StyleIdentifier** opsomming waarde terugkeer. Die punt is dat die name van ingeboude style in Microsoft Word gelokaliseer is vir verskillende tale. Deur'n stylidentifiseerder te gebruik, kan jy die korrekte styl vind, ongeag die dokumenttaal. Die opsomming waardes ooreenstem met die Microsoft Word ingeboude style soos *Normal*, *Heading 1*, *Heading 2* en so aan. Alle gebruiker-gedefinieerde style word die **StyleIdentifier.User** waarde toegeken.

Die volgende kode voorbeeld toon hoe om'n paragraaf styl toe te pas:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Voeg Stylskeier in Om Verskillende Paragraafstyle Te Plaas

Die styl skeiding kan bygevoeg word aan die einde van'n paragraaf met behulp van die Ctrl + Alt + Enter Sleutelbord Kortpad in MS Woord. Hierdie funksie laat twee verskillende paragraafstyle toe wat in een logiese gedrukte paragraaf gebruik word. As jy'n teks van die begin van'n spesifieke opskrif wil hê om in'n Inhoudsopgawe te verskyn, maar nie die hele opskrif in die Inhoudsopgawe wil hê nie, kan jy hierdie funksie gebruik.

Die volgende kode voorbeeld toon hoe om'n styl skeier in te voeg om verskillende paragraaf style te akkommodeer:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Identifiseer Paragraaf Styl Skeier

` `Aspose.Words bied'n openbare eiendom [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) in'n `Paragraph` klas kan identifiseer Styl Skeiding Paragraaf soos getoon in die voorbeeld hieronder gegee:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Pas Grense en Skadu toe op'n Paragraaf

Grens in Aspose.Words word verteenwoordig deur die [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) klas – dit is'n versameling van [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) voorwerpe wat verkry word deur indeks of deur grens tipe. Grens tipe word verteenwoordig deur die `BorderType` opsomming. Sommige waardes van die opsomming is van toepassing op verskeie of slegs een dokument element. Byvoorbeeld, **BorderType.Bottom** is van toepassing op'n paragraaf of tabel sel terwyl **BorderType.DiagonalDown** spesifiseer die diagonale rand in'n tabel sel net.

Beide die randversameling en elke afsonderlike rand het soortgelyke eienskappe soos kleur, lynstyl, lynbreedte, afstand van die teks en opsionele skaduwee. Hulle word verteenwoordig deur eiendomme met dieselfde naam. U kan verskillende soorte grense bereik deur die eiendomswaardes te kombineer. Daarbenewens, beide **BorderCollection** en **Border** voorwerpe toelaat dat jy hierdie waardes te herstel na verstek deur die roeping van die [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/) metode.

{{% alert color="primary" %}}

Let daarop dat wanneer die grens eienskappe is teruggestel na hul standaard waardes, die grens word onsigbaar.

{{% /alert %}}

Aspose.Words het ook die [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) klas bevat skadu eienskappe vir dokument elemente. U kan die gewenste skadu-tekstuur en die kleure wat op die agtergrond en voorgrond van die element toegepas word, instel.

Die skadu tekstuur is ingestel met'n [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) opsomming waarde wat die toepassing van verskeie patrone op die **Shading** voorwerp toelaat. Byvoorbeeld, om'n agtergrond kleur vir'n dokument element stel, gebruik die [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) waarde en stel die voorgrond skadu kleur soos toepaslik.

Die volgende kode voorbeeld toon hoe om grense en skadu aan'n paragraaf toe te pas:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
