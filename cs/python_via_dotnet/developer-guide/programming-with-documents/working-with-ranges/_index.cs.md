---
title: Práce s rozsahy v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce s rozsahy
linktitle: Práce s rozsahy
description: "Práce s rozsahy v dokumentu pomocí Python."
type: docs
weight: 130
url: /cs/python-net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

In Aspose.Words, a [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) je ploché okno v jinak stromovitém modelu dokumentu.

{{% /alert %}}

Pokud jste pracovali s Microsoft Word Automatizace, pravděpodobně víte, že jedním z hlavních nástrojů pro zkoumání a úpravu obsahu dokumentu je [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) objekt. [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) je jako "okno" do obsahu dokumentu a formátování. Aspose.Words má také [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) třída a je navržen tak, aby vypadal a jednal podobně jako **Range** tro Microsoft Word. I když **Range** nemůže pokrýt libovolnou část dokumentu a nemá **Start** a **End**, můžete přistupovat k rozsahu pokrytému jakýmkoliv uzelem dokumentu včetně [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) sám. Jinými slovy, každý uzel má svůj vlastní rozsah. • [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) objekt umožňuje přístup a úpravu textu, záložek a formulářových polí v rozsahu.

## Získat prostý text

Použijte [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) vlastnost získat prostý, neformátovaný text rozsahu.

Následující příklad kódu ukazuje, jak získat prostý, neformátovaný text rozsahu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Stahování textu

Rozsah umožňuje vymazat všechny znaky rozsahu voláním [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

Následující příklad kódu ukazuje, jak odstranit všechny znaky v rozsahu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
