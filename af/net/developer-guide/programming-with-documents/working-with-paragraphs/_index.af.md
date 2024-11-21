---
title: Werk Met Paragrawe in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk Met Paragrawe
linktitle: Werk Met Paragrawe
description: "Voeg'n paragraaf in'n dokument C#. Stel paragraafstyle in C#. Werk met paragraaf styl skeier C#. Manipuleer paragraaf knoop met behulp van C#."
type: docs
weight: 210
url: /af/net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

'n paragraaf is'n stel karakters wat in'n logiese blok gekombineer word en eindig met'n spesiale karakter – a *paragraph break*. In Aspose.Words word'n paragraaf verteenwoordig deur die [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) klas.

## Voeg'n Paragraaf in

Om'n nuwe paragraaf in die dokument in te voeg, moet jy eintlik'n paragraaf breekkarakter daarin invoeg. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) voeg nie net'n string teks in die dokument nie, maar voeg ook'n paragraafonderbreking by.

Die huidige lettertipe formatering word ook gespesifiseer deur die [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) eienskap, en die huidige paragraaf formatering word bepaal deur die [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) eienskap. In die volgende afdeling gaan ons in meer besonderhede oor paragraafformatering.

Die volgende kode voorbeeld toon hoe om'n paragraaf in'n dokument in te voeg:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Formaat Paragraaf

Huidige paragraaf formatering word verteenwoordig deur die [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) voorwerp wat teruggestuur word deur die [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) eienskap. Hierdie voorwerp bevat verskeie paragraaf formatering eienskappe beskikbaar in Microsoft Word. Jy kan maklik'n paragraaf se formatering terugstel Na sy standaard Normale styl, links-in lyn, geen inkeping, geen spasiëring, geen grense, geen skadu deur [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/) te bel.

Die volgende kode voorbeeld toon hoe om paragraaf formatering stel:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Pas Paragraafstyl Toe

Sommige formatering voorwerpe, soos **Font** of **ParagraphFormat**, ondersteun style. Een ingeboude of gebruiker-gedefinieerde styl word verteenwoordig deur'n [Style](https://reference.aspose.com/words/net/aspose.words/style/) voorwerp, wat die toepaslike styl eienskappe soos naam, basis styl, lettertipe, styl paragraaf formatering, en so aan bevat.

Daarbenewens, die **Style** voorwerp blootstel die [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/) eiendom, wat die locale-onafhanklike styl identifiseerder verteenwoordig deur die [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/) opsomming waarde. Die feit is dat die name van die ingeboude style in Microsoft Word gelokaliseer is vir verskillende tale. Deur die stylidentifiseerder te gebruik, kan u die korrekte styl vind, ongeag die dokumenttaal. Die opsomming waardes ooreenstem met die ingeboude Microsoft Word style soos *Normal*, *Heading 1*, *Heading 2* en so aan. Alle gebruiker-gedefinieerde style is ingestel op die **StyleIdentifier.User** opsomming waarde.

Die volgende kode voorbeeld toon hoe om'n paragraaf styl toe te pas:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Voeg Stylskeier in Om Verskillende Paragraafstyle Te Plaas

'n styl skeiding kan bygevoeg word aan die einde van'n paragraaf met behulp van die sleutelbord kortpad Ctrl+Alt+Enter in Microsoft Word. Met hierdie funksie kan u twee verskillende paragraafstyle in dieselfde logiese gedrukte paragraaf gebruik. As u wil hê dat'n teks aan die begin van'n spesifieke opskrif in die inhoudsopgawe moet verskyn, maar nie wil hê dat die hele opskrif in die inhoudsopgawe moet verskyn nie, kan u hierdie funksie gebruik.

Die volgende kode voorbeeld toon hoe om'n styl skeier in te voeg om verskillende paragraaf style te akkommodeer:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Identifiseer Paragraaf Styl Skeier

Aspose.Words stel die [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) openbare eiendom op die `Paragraph` klas bloot om'n paragraaf met'n styl skeiding te identifiseer, soos in die voorbeeld hieronder getoon:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Pas Grense en Skadu toe op'n Paragraaf

Grens in Aspose.Words word verteenwoordig deur die [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) klas – dit is'n versameling van [Border](https://reference.aspose.com/words/net/aspose.words/border/) voorwerpe wat verkry word deur indeks of deur grens tipe. Die grens tipe word op sy beurt verteenwoordig deur die [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/) opsomming. Sommige opsomming waardes van toepassing op verskeie of net een dokument element. Byvoorbeeld, **BorderType.Bottom** is van toepassing op'n paragraaf of tabel sel, terwyl **BorderType.DiagonalDown** spesifiseer'n diagonale rand in'n tabel sel net.

Beide die randversameling en elke afsonderlike rand het soortgelyke eienskappe soos kleur, lynstyl, lynbreedte, afstand van teks en opsionele skaduwee. Hulle word verteenwoordig deur eiendomme met dieselfde naam. U kan verskillende soorte grense kry deur eiendomswaardes te kombineer. Daarbenewens kan die **BorderCollection** en **Border** voorwerpe jou toelaat om hierdie waardes te herstel na hul standaard waardes deur die [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/) metode te bel.

{{% alert color="primary" %}}

Let daarop dat wanneer die grens eienskappe is teruggestel na hul standaard waardes, die grens word onsigbaar.

{{% /alert %}}

Aspose.Words het ook die [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) klas wat skadu eienskappe vir dokument elemente bevat. Jy kan die gewenste skadu tekstuur en kleure wat toegepas word op die agtergrond en voorgrond van'n element met behulp van die [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/) opsomming waarde stel. **TextureIndex** laat jou ook toe om verskillende patrone op die **Shading** voorwerp toe te pas. Byvoorbeeld, om die agtergrond kleur vir'n dokument element stel, gebruik die **TextureIndex.TextureSolid** waarde en stel die voorgrond skadu kleur soos toepaslik.

Die volgende kode voorbeeld toon hoe om grense en skadu aan'n paragraaf toe te pas:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Tel Paragraaflyne

As u die aantal reëls in'n paragraaf vir enige Word-dokument wil tel, kan die volgende kodemonster gebruik word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}
