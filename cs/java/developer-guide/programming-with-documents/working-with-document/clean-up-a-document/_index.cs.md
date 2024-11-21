---
title: Vyčistit dokument Java
second_title: Aspose.Words místo Java
articleTitle: Vyčistit dokument
linktitle: Vyčistit dokument
description: "Odstraňte nepoužité nebo duplikované informace ke snížení velikosti výstupu a doby zpracování. Odstraňte nepoužité styly, nepoužité vestavěné styly, duplikáty stylů nebo nepoužité seznamy pomocí Java."
type: docs
weight: 30
url: /cs/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Někdy můžete potřebovat odstranit nepoužité nebo duplikované informace ke snížení velikosti výstupního dokumentu a doby zpracování.

Zatímco můžete najít a odstranit nevyužitá data, jako jsou styly nebo seznamy, nebo duplikovat informace ručně, bude mnohem pohodlnější, aby to pomocí funkcí a schopností poskytnutých Aspose.Words.

The [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) třída umožňuje určit možnosti pro čištění dokumentů. Chcete-li odstranit duplikát stylu nebo jen nepoužité styly nebo seznamy z dokumentu, můžete použít [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) metoda.

## Odstranit nepoužité informace z dokumentu

Můžete použít [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) a [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) vlastnosti pro detekci a odstranění stylů, které jsou označeny jako "nepoužité."

Můžete použít [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) vlastnost odhalit a odstranit seznamy a definice seznamu, které jsou označeny jako "nepoužité."

Následující příklad kódu ukazuje, jak odstranit pouze nepoužité styly z dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Odstranit dvojí informace z dokumentu

Můžete také použít [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) vlastnost nahradit všechny duplikátní styly originálem a odstranit duplikáty z dokumentu.

Následující příklad kódu ukazuje, jak odstranit duplikát stylů z dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
