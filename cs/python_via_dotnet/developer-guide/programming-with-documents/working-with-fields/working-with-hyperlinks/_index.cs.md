---
title: Práce s hypertextovými odkazy
second_title: Aspose.Words místo Python via .NET
articleTitle: Přidat nebo upravit hypertextové odkazy
linktitle: Přidat nebo upravit hypertextové odkazy
description: "Přidat, nahradit nebo upravit hypertextový odkaz v dokumentu pomocí Python."
type: docs
weight: 50
url: /cs/python-net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Hypertextové spojení Microsoft Word Dokumenty jsou `HYPERLINK` pole. In Aspose.Words, hypertextové odkazy jsou implementovány prostřednictvím [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) třída.

## Vložení hypertextového odkazu

Použijte [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) způsob vložení hypertextového odkazu do dokumentu. Tato metoda přijímá tři parametry:

1. Text odkazu, který má být zobrazen v dokumentu
2. Cíl odkazu (URL nebo název záložky uvnitř dokumentu)
3. Boolean parametr, který by měl být true pokud `URL` je název záložky uvnitř dokumentu

• **InsertHyperlink** metoda vždy přidává apostrofy na začátku a na konci URL.

{{% alert color="primary" %}}

Všimněte si, že je třeba zadat formátování písma pro text zobrazení hyperlinku explicitně pomocí `Font` majetek.

{{% /alert %}}

Následující příklad kódu ukazuje, jak vložit hypertextový odkaz do dokumentu pomocí [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Nahradit nebo upravit hypertextové odkazy

Hyperlink in Microsoft Word Dokumenty jsou pole. Pole v dokumentu Word je komplexní struktura skládající se z více uzlů, které zahrnují start pole, kód pole, oddělovač pole, výsledek pole a konec pole. Pole mohou být vnořena, obsahovat bohatý obsah a rozpětí více odstavců nebo sekcí v dokumentu

Chcete-li nahradit nebo upravit hypertextové odkazy, je třeba najít hypertextové odkazy v dokumentu a nahradit buď jejich text, URL nebo obojí.

Následující příklad kódu ukazuje, jak najít všechny hypertextové odkazy v dokumentu Word a mění jejich `URL` a název displeje:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
