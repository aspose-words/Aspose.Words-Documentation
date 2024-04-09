---
title: Vyčistit dokument v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Vyčistit dokument
linktitle: Vyčistit dokument
description: "Odstraňte nepoužité nebo duplikované informace ke snížení velikosti výstupu a doby zpracování pomocí Python. Odstraňte nepoužité styly, nepoužité vestavné styly, duplikáty stylů nebo nepoužité seznamy."
type: docs
weight: 30
url: /cs/python-net/clean-up-a-document/
---

Někdy můžete potřebovat odstranit nepoužité nebo duplikované informace ke snížení velikosti výstupního dokumentu a času zpracování.

Zatímco můžete najít a odstranit nevyužitá data, jako jsou styly nebo seznamy, nebo duplikovat informace ručně, bude mnohem pohodlnější, aby to pomocí funkcí a schopností poskytnutých Aspose.Words.

• [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) třída umožňuje určit možnosti pro čištění dokumentů. Chcete-li odstranit duplikát stylů nebo jen nepoužité styly nebo seznamy z dokumentu, můžete použít [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/) metoda.

## Odstranit nepoužité informace z dokumentu

Můžete použít [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) a [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) vlastnosti pro detekci a odstranění stylů, které jsou označeny jako "nepoužité."

Můžete použít [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) vlastnost odhalit a odstranit seznamy a definice seznamu, které jsou označeny jako "nepoužité."

Následující příklad kódu ukazuje, jak odstranit pouze nepoužité styly z dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Odstranit dvojí informace z dokumentu

Můžete také použít [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) vlastnost nahradit všechny duplikátní styly originálem a odstranit duplikáty z dokumentu.

Následující příklad kódu ukazuje, jak odstranit duplikát stylů z dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}