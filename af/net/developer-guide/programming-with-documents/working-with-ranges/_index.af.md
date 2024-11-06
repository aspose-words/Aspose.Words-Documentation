---
title: Werk Met Reekse in C#
second_title: Aspose.Words vir .NET
articleTitle: Werk Met Reekse
linktitle: Werk Met Reekse
description: "Inleiding Tot Reeks funksie in Aspose.Words vir .NET."
type: docs
weight: 130
url: /af/net/working-with-ranges/
---

{{% alert color="primary" %}}

In Aspose.Words is'n Reeks'n "plat venster" in'n andersins boomagtige model van die dokument.

{{% /alert %}}

As jy met Microsoft Word Outomatisering gewerk het, weet jy waarskynlik dat een van die belangrikste gereedskap om dokumentinhoud te ondersoek en te verander die **Range** voorwerp is. **Range** is soos'n "venster" in die dokumentinhoud en formatering.

Aspose.Words het ook die [Range](https://reference.aspose.com/words/net/aspose.words/range/) klas en dit is ontwerp om te kyk en op te tree soortgelyk aan **Range** in Microsoft Word. Alhoewel **Range** nie'n arbitrêre gedeelte van'n dokument kan dek nie en nie'n **Start** en **End** het nie, kan jy toegang verkry tot die reeks wat deur enige dokumentknooppunt gedek word, insluitend die [Document](https://reference.aspose.com/words/net/aspose.words/document/) self. Met ander woorde, elke knoop het sy eie reeks. Met die **Range** - voorwerp kan u toegang tot teks, boekmerke en velde binne die reeks verkry en verander.

## Kry Skoon Teks

Gebruik die [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) eienskap om gewone, ongefomateerde teks van die reeks te haal.

Die volgende kode voorbeeld toon hoe om'n gewone, ongefomateerde teks van'n reeks te kry:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Skrap Teks

Range laat die verwydering van alle karakters van die reeks deur te bel [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/).

Die volgende kode voorbeeld toon hoe om al die karakters van'n reeks te verwyder:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}