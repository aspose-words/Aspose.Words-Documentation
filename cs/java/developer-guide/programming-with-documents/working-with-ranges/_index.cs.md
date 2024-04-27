---
title: Práce s rozsahy v Java
second_title: Aspose.Words místo Java
articleTitle: Práce s rozsahy
linktitle: Práce s rozsahy
description: "Úvod do rozsahu funkce v Aspose.Words místo Java."
type: docs
weight: 130
url: /cs/java/working-with-ranges/
---

{{% alert color="primary" %}}

In Aspose.Words, Range je ploché okno, které je jinak stromově podobné vzoru dokumentu.

{{% /alert %}}

Pokud jste pracovali s Microsoft Word Automatizace, pravděpodobně víte, že jedním z hlavních nástrojů pro zkoumání a úpravu obsahu dokumentu je `Range` objekt. Rozsah je jako "okno" do obsahu dokumentu a formátování.

Aspose.Words má také [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) třída a je navržen tak, aby vypadal a jednat podobně jako **Range** v Microsoft Word. I když **Range** nemůže pokrýt libovolnou část dokumentu a nemá **Start** a **End**, můžete přistupovat k rozsahu, na který se vztahuje jakýkoli uzel dokumentu včetně [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) sám. Jinými slovy, každý uzel má svůj vlastní rozsah. The **Range** objekt umožňuje přístup a úpravu textu, záložek a formulářových polí v rozsahu.

## Získávání prostého textu

Použijte [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) vlastnost získat plain, neformátovaný text rozsahu.

Následující příklad kódu ukazuje, jak získat prostý, neformátovaný text rozsahu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Smazat text

The `Range` třída umožňuje vymazání všech znaků rozsahu voláním [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

Následující příklad kódu ukazuje, jak odstranit všechny znaky rozsahu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Soubor vzorku tohoto příkladu si můžete stáhnout z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 