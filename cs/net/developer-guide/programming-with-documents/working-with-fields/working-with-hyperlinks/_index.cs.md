---
title: Práce s Hyperlinks in C#
second_title: Aspose.Words místo .NET
articleTitle: Přidat nebo upravit hypertextové odkazy
linktitle: Přidat nebo upravit hypertextové odkazy
description: "Jak přidat hypertextový odkaz do dokumentu C# podání Aspose.Words místo .NET."
type: docs
weight: 50
url: /cs/net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Hypertextové spojení Microsoft Word Dokumenty jsou `HYPERLINK` pole. In Aspose.Words, hypertextové odkazy jsou implementovány prostřednictvím [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) třída.

## Vložit hypertextový odkaz

Použijte [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) způsob vložení hypertextového odkazu do dokumentu. Tato metoda přijímá tři parametry:

1. Text odkazu, který má být zobrazen v dokumentu
2. Cíl odkazu (URL nebo název záložky uvnitř dokumentu)
3. Boolean parametr, který by měl být true pokud `URL` je název záložky uvnitř dokumentu

• **InsertHyperlink** metoda vždy přidává apostrofy na začátku a na konci URL

{{% alert color="primary" %}}

Všimněte si, že je třeba zadat formátování písma pro text zobrazení hyperlinku explicitně pomocí `Font` majetek.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vložit hypertextový odkaz do dokumentu pomocí [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Nahradit nebo upravit hypertextové odkazy

Hyperlink in Microsoft Word Dokumenty jsou pole. Pole v dokumentu Word, jak jsme již řekli, je komplexní struktura skládající se z více uzlů, které zahrnují start pole, kód pole, oddělovač pole, výsledek pole a konec pole. Pole mohou být vnořena, obsahovat bohatý obsah a rozpětí více odstavců nebo sekcí v dokumentu.

Chcete-li nahradit nebo upravit hypertextové odkazy, je třeba najít hypertextové odkazy v dokumentu a nahradit buď jejich text, URL nebo obojí.

Následující příklad kódu ukazuje, jak najít všechny hypertextové odkazy v dokumentu Word a mění jejich `URL` a název displeje:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
