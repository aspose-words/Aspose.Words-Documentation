---
title: Práce s hypertextovými odkazy v C++
second_title: Aspose.Words pro C++
articleTitle: Přidání nebo úprava hypertextových odkazů
linktitle: Přidání nebo úprava hypertextových odkazů
description: "Jak přidat hypertextový odkaz do dokumentu pomocí Aspose.Words pro C++."
type: docs
weight: 180
url: /cs/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Hypertextový odkaz v dokumentech Microsoft Word je pole `HYPERLINK`. V Aspose.Words jsou hypertextové odkazy implementovány prostřednictvím třídy [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/).

## Vložení hypertextového odkazu

Pomocí metody [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) vložte hypertextový odkaz do dokumentu. Tato metoda přijímá tři parametry:

1. Text odkazu, který se má zobrazit v dokumentu
2. Cíl odkazu (URL nebo název záložky uvnitř dokumentu)
3. Booleovský parametr, který by měl být pravdivý, pokud `URL` je název záložky uvnitř dokumentu

Metoda **InsertHyperlink** vždy přidává apostrofy na začátek a konec URL.

{{% alert color="primary" %}}

Všimněte si, že musíte zadat formátování písma pro text zobrazení hypertextového odkazu explicitně pomocí vlastnosti `Font`.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vložit hypertextový odkaz do dokumentu pomocí [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Nahradit nebo upravit hypertextové odkazy

Hypertextový odkaz v dokumentech Microsoft Word je pole. Pole v dokumentu Word je složitá struktura skládající se z více uzlů, které zahrnují začátek pole, kód pole, oddělovač pole, výsledek pole a konec pole. Pole lze vnořit, obsahovat bohatý obsah a překlenout více odstavců nebo oddílů v dokumentu.

Třída `FieldHyperlink` implementuje pole `HYPERLINK`.

Následující příklad kódu ukazuje, jak najít všechny hypertextové odkazy v Word dokumentu a změní jejich `URL` a zobrazovaný název:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
