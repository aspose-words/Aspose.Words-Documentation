---
title: Práce s rozsahy v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s rozsahy
linktitle: Práce s rozsahy
description: "Úvod do funkce rozsahu v Aspose.Words pro C++."
type: docs
weight: 130
url: /cs/cpp/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

V Aspose.Words je rozsah "plochým oknem" do jinak stromového modelu dokumentu.

{{% /alert %}}

Pokud jste pracovali s automatizací Microsoft Word, pravděpodobně víte, že jedním z hlavních nástrojů pro zkoumání a úpravu obsahu dokumentu je objekt **Range**. **Range** je jako "okno" do obsahu dokumentu a formátování.

Aspose.Words má také třídu [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) a je navržen tak, aby vypadal a jednal podobně jako **Range** v Microsoft Word. Ačkoli **Range** nemůže pokrýt libovolnou část dokumentu a nemá **Start** a **End**, můžete přistupovat k rozsahu pokrytému jakýmkoli uzlem dokumentu, včetně samotného [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Jinými slovy, každý uzel má svůj vlastní rozsah. Objekt **Range** umožňuje přístup a úpravu textu, záložek a polí formuláře v rozsahu.

## Načíst Prostý Text

Použijte vlastnost [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) k načtení prostého, neformátovaného textu rozsahu.

Následující příklad kódu ukazuje, jak získat prostý, neformátovaný text rozsahu:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Mazání Textu

Rozsah umožňuje odstranění všech znaků rozsahu voláním [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

Následující příklad kódu ukazuje, jak odstranit všechny znaky rozsahu:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

Ukázkový soubor tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
