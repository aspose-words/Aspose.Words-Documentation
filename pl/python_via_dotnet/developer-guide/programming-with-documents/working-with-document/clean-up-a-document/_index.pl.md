---
title: Oczyść dokument w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Oczyść dokument
linktitle: Oczyść dokument
description: "Usuń nieużywane lub zduplikowane informacje, aby zmniejszyć rozmiar wyjściowy i czas przetwarzania za pomocą Python. Usuń nieużywane style, nieużywane style wbudowane, zduplikowane style lub nieużywane listy."
type: docs
weight: 30
url: /pl/python-net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Czasami może być konieczne usunięcie nieużywanych lub zduplikowanych informacji, aby zmniejszyć rozmiar dokumentu wyjściowego i czas przetwarzania.

Chociaż możesz znaleźć i usunąć nieużywane dane, takie jak style lub listy, lub ręcznie zduplikowane informacje, znacznie wygodniej będzie to zrobić, korzystając z funkcji i możliwości zapewnianych przez Aspose.Words.

Klasa [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) umożliwia określenie opcji czyszczenia dokumentów. Aby usunąć z dokumentu zduplikowane style lub po prostu nieużywane style lub listy, możesz użyć metody [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/).

## Usuń nieużywane informacje z dokumentu

Możesz użyć właściwości [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) i [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/), aby wykryć i usunąć style oznaczone jako "nieużywane".

Za pomocą właściwości [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) można wykrywać i usuwać listy i definicje list oznaczone jako "nieużywane".

Poniższy przykład kodu pokazuje, jak usunąć z dokumentu tylko nieużywane style:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Usuń zduplikowane informacje z dokumentu

Możesz także użyć właściwości [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/), aby zastąpić wszystkie zduplikowane style oryginalnym i usunąć duplikaty z dokumentu.

Poniższy przykład kodu pokazuje, jak usunąć zduplikowane style z dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}
