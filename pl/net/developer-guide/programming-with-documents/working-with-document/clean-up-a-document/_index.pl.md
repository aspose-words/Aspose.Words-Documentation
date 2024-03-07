---
title: Oczyść dokument w C#
second_title: Aspose.Words dla .NET
articleTitle: Oczyść dokument
linktitle: Oczyść dokument
description: "Usuń nieużywane lub zduplikowane informacje, aby zmniejszyć rozmiar wyjściowy i czas przetwarzania za pomocą C#. Usuń nieużywane style, nieużywane style wbudowane, zduplikowane style lub nieużywane listy."
type: docs
weight: 30
url: /pl/net/clean-up-a-document/
---

Czasami może być konieczne usunięcie nieużywanych lub zduplikowanych informacji, aby zmniejszyć rozmiar dokumentu wyjściowego i czas przetwarzania.

Chociaż możesz znaleźć i usunąć nieużywane dane, takie jak style lub listy, lub ręcznie zduplikowane informacje, znacznie wygodniej będzie to zrobić, korzystając z funkcji i możliwości zapewnianych przez Aspose.Words.

Klasa [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) umożliwia określenie opcji czyszczenia dokumentów. Aby usunąć z dokumentu zduplikowane style lub po prostu nieużywane style lub listy, możesz użyć metody [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/).

## Usuń nieużywane informacje z dokumentu

Możesz użyć właściwości [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) i [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/), aby wykryć i usunąć style oznaczone jako "nieużywane".

Za pomocą właściwości [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) można wykrywać i usuwać listy i definicje list oznaczone jako "nieużywane".

Poniższy przykład kodu pokazuje, jak usunąć z dokumentu tylko nieużywane style:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Usuń zduplikowane informacje z dokumentu

Możesz także użyć właściwości [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/), aby zastąpić wszystkie zduplikowane style oryginalnym i usunąć duplikaty z dokumentu.

Poniższy przykład kodu pokazuje, jak usunąć zduplikowane style z dokumentu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
