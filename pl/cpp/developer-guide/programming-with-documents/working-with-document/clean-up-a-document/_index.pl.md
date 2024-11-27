---
title: Wyczyść dokument w C++
second_title: Aspose.Words dla C++
articleTitle: Wyczyść dokument
linktitle: Wyczyść dokument
description: "Usuń nieużywane lub zduplikowane informacje, aby zmniejszyć rozmiar wyjściowy i czas przetwarzania za pomocą C++. Usuń nieużywane style, nieużywane style wbudowane, zduplikowane style lub nieużywane listy."
type: docs
weight: 30
url: /pl/cpp/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Czasami może być konieczne usunięcie nieużywanych lub zduplikowanych informacji, aby zmniejszyć rozmiar dokumentu wyjściowego i czas przetwarzania.

Chociaż możesz ręcznie znajdować i usuwać nieużywane dane, takie jak style lub listy, lub powielać informacje, znacznie wygodniej będzie to zrobić za pomocą funkcji i możliwości dostarczonych przez Aspose.Words.

Klasa [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) umożliwia określenie opcji czyszczenia dokumentów. Aby usunąć zduplikowane style lub po prostu nieużywane style lub listy z dokumentu, możesz użyć metody [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/).

## Usuń nieużywane informacje z dokumentu

Możesz użyć właściwości [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) i [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) do wykrywania i usuwania stylów oznaczonych jako "nieużywane".

Możesz użyć właściwości [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) do wykrywania i usuwania list i definicji list oznaczonych jako "nieużywane".

Poniższy przykład kodu pokazuje, jak usunąć tylko nieużywane style z dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Usuwanie zduplikowanych informacji z dokumentu

Możesz także użyć właściwości [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/), aby zastąpić wszystkie zduplikowane style oryginalnym i usunąć duplikaty z dokumentu.

Poniższy przykład kodu pokazuje, jak usunąć zduplikowane style z dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
