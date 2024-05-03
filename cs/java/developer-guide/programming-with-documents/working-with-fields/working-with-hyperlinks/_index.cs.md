---
title: Práce s Hyperlinks in Java
second_title: Aspose.Words místo Java
articleTitle: Přidat nebo upravit hypertextové odkazy
linktitle: Přidat nebo upravit hypertextové odkazy
description: "Jak přidat hypertextový odkaz do dokumentu pomocí Java."
type: docs
weight: 50
url: /cs/java/working-with-hyperlinks/
---

Hypertextové spojení Microsoft Word Dokumenty jsou `HYPERLINK` pole. In Aspose.Words, hypertextové odkazy jsou implementovány prostřednictvím [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) třída.

## Vložit hyperlink

Použijte [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) způsob vložení hypertextového odkazu do dokumentu. Tato metoda přijímá tři parametry:

1. Text odkazu, který má být zobrazen v dokumentu
2. Cíl odkazu (URL nebo název záložky uvnitř dokumentu)
3. Boolean parametr, který by měl být true pokud `URL` je název záložky uvnitř dokumentu

The **InsertHyperlink** metoda vždy přidává apostrofy na začátku a na konci URL

{{% alert color="primary" %}}

Všimněte si, že je třeba zadat formátování písma pro text zobrazení hyperlinku explicitně pomocí `Font` majetek.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vložit hypertextový odkaz do dokumentu pomocí [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Nahradit nebo upravit hypertextové odkazy

Hyperlink in Microsoft Word Dokumenty jsou pole. Pole v dokumentu Word, jak jsme již řekli, je komplexní struktura skládající se z více uzlů, které zahrnují start pole, kód pole, oddělovač pole, výsledek pole a konec pole. Pole mohou být vnořena, obsahovat bohatý obsah a rozpětí více odstavců nebo sekcí v dokumentu.

Chcete-li nahradit nebo upravit hypertextové odkazy, je třeba najít hypertextové odkazy v dokumentu a nahradit buď jejich text, URL nebo obojí.

Následující příklad kódu ukazuje, jak najít všechny hypertextové odkazy v dokumentu Word a mění jejich `URL` a název displeje:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
