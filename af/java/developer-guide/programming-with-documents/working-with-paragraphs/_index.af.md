---
title: Werk Met Paragrawe in Java
second_title: Aspose.Words vir Java
articleTitle: Werk Met Paragrawe
linktitle: Werk Met Paragrawe
description: "Paragraaf knoop manipulasie praktyke met behulp van Java."
type: docs
weight: 210
url: /af/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

'n paragraaf is'n stel karakters wat in'n logiese blok gekombineer word en eindig met'n spesiale karakter – a *paragraph break*. In Aspose.Words word'n paragraaf verteenwoordig deur die [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) klas.

## Voeg'n Paragraaf by

Om'n nuwe paragraaf in die dokument in te voeg, moet jy eintlik'n paragraaf breekkarakter daarin invoeg. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) voeg nie net'n string teks in die dokument nie, maar voeg ook'n paragraafonderbreking by.

Die huidige lettertipe formatering word ook gespesifiseer deur die [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) eienskap, en die huidige paragraaf formatering word bepaal deur die [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) eienskap. In die volgende afdeling gaan ons in meer besonderhede oor paragraafformatering.

Die volgende kode voorbeeld toon hoe om'n paragraaf in'n dokument in te voeg:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Formaat Paragraaf

Huidige paragraaf formatering word verteenwoordig deur die [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) voorwerp wat teruggestuur word deur die [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) eienskap. Hierdie voorwerp bevat verskeie paragraaf formatering eienskappe beskikbaar in Microsoft Word. Jy kan maklik'n paragraaf se formatering terugstel Na sy standaard Normale styl, links-in lyn, geen inkeping, geen spasiëring, geen grense, geen skadu deur [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting) te bel.

Die volgende kode voorbeeld toon hoe om paragraaf formatering stel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Pas Paragraafstyl Toe

Sommige formatering voorwerpe soos Lettertipe of ParagraphFormat ondersteun style. 'n enkele ingeboude of gebruiker-gedefinieerde styl word verteenwoordig deur'n [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) voorwerp wat die ooreenstemmende styl eienskappe soos naam, basis styl, lettertipe en paragraaf formatering van die styl, en so aan bevat.

Verder, 'n **Style** voorwerp bied die [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) eienskap wat'n locale-onafhanklike styl identifiseerder verteenwoordig deur'n **StyleIdentifier** opsomming waarde terugkeer. Die punt is dat die name van ingeboude style in Microsoft Word gelokaliseer is vir verskillende tale. Deur'n stylidentifiseerder te gebruik, kan jy die korrekte styl vind, ongeag die dokumenttaal. Die opsomming waardes ooreenstem met die Microsoft Word ingeboude style soos *Normal*, *Heading 1*, *Heading 2*, en so aan. Alle gebruiker-gedefinieerde style word die **StyleIdentifier.User value** toegeken.

Die volgende kode voorbeeld toon hoe om'n paragraaf styl toe te pas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Voeg Stylskeier in Om Verskillende Paragraafstyle Te Plaas

Die styl skeiding kan bygevoeg word aan die einde van'n paragraaf met behulp van die Ctrl + Alt + Enter Sleutelbord Kortpad in MS Woord. Hierdie funksie laat twee verskillende paragraafstyle toe wat in een logiese gedrukte paragraaf gebruik word. As jy'n teks van die begin van'n spesifieke opskrif wil hê om in'n Inhoudsopgawe te verskyn, maar nie die hele opskrif in die Inhoudsopgawe wil hê nie, kan jy hierdie funksie gebruik.

Die volgende kode voorbeeld toon hoe om'n styl skeier in te voeg om verskillende paragraaf style te akkommodeer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Pas Grense en Skadu toe op'n Paragraaf

Grens in Aspose.Words word verteenwoordig deur die [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) klas – dit is'n versameling van [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) voorwerpe wat verkry word deur indeks of deur grens tipe. Die `Border` tipe word verteenwoordig deur die [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) opsomming. Sommige waardes van die opsomming is van toepassing op verskeie of slegs een dokument element. Byvoorbeeld, **BorderType.Bottom** is van toepassing op'n paragraaf of tabel sel terwyl **BorderType.DiagonalDown** spesifiseer die diagonale rand in'n tabel sel net.

Beide die randversameling en elke afsonderlike rand het soortgelyke eienskappe soos kleur, lynstyl, lynbreedte, afstand van die teks en opsionele skaduwee. Hulle word verteenwoordig deur eiendomme met dieselfde naam. U kan verskillende soorte grense bereik deur die eiendomswaardes te kombineer. Daarbenewens, beide **BorderCollection** en **Border** voorwerpe toelaat dat jy hierdie waardes te herstel na verstek deur die roeping van die [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) metode.

{{% alert color="primary" %}}

Let daarop dat wanneer grens eienskappe is teruggestel na standaard waardes, die grens is onsigbaar.

{{% /alert %}}

Aspose.Words het ook die [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) klas bevat skadu eienskappe vir dokument elemente. U kan die gewenste skadu-tekstuur en die kleure wat op die agtergrond en voorgrond van die element toegepas word, instel.

Die skadu tekstuur is ingestel met die [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) opsomming waarde wat die toepassing van verskeie patrone op die **Shading** voorwerp toelaat. Byvoorbeeld, om'n agtergrond kleur vir'n dokument element stel, gebruik die `TextureIndex.TextureSolid` waarde en stel die voorgrond skadu kleur soos toepaslik. Die kode voorbeeld hieronder gegee toon hoe om grense en skadu aan'n paragraaf toe te pas.

Die volgende kode voorbeeld toon hoe om grense en skadu aan'n paragraaf toe te pas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
