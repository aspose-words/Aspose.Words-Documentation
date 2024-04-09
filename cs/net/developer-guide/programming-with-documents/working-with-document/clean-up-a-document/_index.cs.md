---
title: Vyčistit dokument v C#
second_title: Aspose.Words místo .NET
articleTitle: Vyčistit dokument
linktitle: Vyčistit dokument
description: "Odstraňte nepoužité nebo duplikované informace ke snížení velikosti výstupu a doby zpracování pomocí C#. Odstraňte nepoužité styly, nepoužité vestavné styly, duplikáty stylů nebo nepoužité seznamy."
type: docs
weight: 30
url: /cs/net/clean-up-a-document/
---

Někdy můžete potřebovat odstranit nepoužité nebo duplikované informace ke snížení velikosti výstupního dokumentu a času zpracování.

Zatímco můžete najít a odstranit nevyužitá data, jako jsou styly nebo seznamy, nebo duplikovat informace ručně, bude mnohem pohodlnější, aby to pomocí funkcí a schopností poskytnutých Aspose.Words.

• [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) třída umožňuje určit možnosti pro čištění dokumentů. Chcete-li odstranit duplikát stylů nebo jen nepoužité styly nebo seznamy z dokumentu, můžete použít [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/) metoda.

## Odstranit nepoužité informace z dokumentu

Můžete použít [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) a [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) vlastnosti pro detekci a odstranění stylů, které jsou označeny jako "nepoužité."

Můžete použít [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) vlastnost odhalit a odstranit seznamy a definice seznamu, které jsou označeny jako "nepoužité."

Následující příklad kódu ukazuje, jak odstranit pouze nepoužité styly z dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Odstranit dvojí informace z dokumentu

Můžete také použít [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) vlastnost nahradit všechny duplikátní styly originálem a odstranit duplikáty z dokumentu.

Následující příklad kódu ukazuje, jak odstranit duplikát stylů z dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
