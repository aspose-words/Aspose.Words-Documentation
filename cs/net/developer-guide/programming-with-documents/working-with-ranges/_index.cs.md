---
title: Práce s rozsahy v C#
second_title: Aspose.Words místo .NET
articleTitle: Práce s rozsahy
linktitle: Práce s rozsahy
description: "Úvod do rozsahu funkce v Aspose.Words místo .NET."
type: docs
weight: 130
url: /cs/net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

In Aspose.Words, Range je ploché okno do jiného stromu-jako model dokumentu.

{{% /alert %}}

Pokud jste pracovali s Microsoft Word Automatizace, pravděpodobně víte, že jedním z hlavních nástrojů pro zkoumání a úpravu obsahu dokumentu je **Range** objekt. **Range** je jako "okno" do obsahu dokumentu a formátování.

Aspose.Words má také [Range](https://reference.aspose.com/words/net/aspose.words/range/) třída a je navržen tak, aby vypadal a jednal podobně jako **Range** tro Microsoft Word. I když **Range** nemůže pokrýt libovolnou část dokumentu a nemá **Start** a **End**, můžete přistupovat k rozsahu pokrytému jakýmkoliv uzelem dokumentu včetně [Document](https://reference.aspose.com/words/net/aspose.words/document/) sám. Jinými slovy, každý uzel má svůj vlastní rozsah. • **Range** objekt umožňuje přístup a úpravu textu, záložek a formulářových polí v rozsahu.

## Získat prostý text

Použijte [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) vlastnost získat prostý, neformátovaný text rozsahu.

Následující příklad kódu ukazuje, jak získat prostý, neformátovaný text rozsahu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Smazat text

Rozsah umožňuje vymazat všechny znaky rozsahu voláním [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/).

Následující příklad kódu ukazuje, jak odstranit všechny znaky v rozsahu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
