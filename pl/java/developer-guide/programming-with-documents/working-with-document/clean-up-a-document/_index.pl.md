---
title: Czyszczenie dokumentu w Java
second_title: Aspose.Words zamiast Java
articleTitle: Czyszczenie dokumentu
linktitle: Czyszczenie dokumentu
description: "Usunąć niewykorzystane lub duplikowane informacje w celu zmniejszenia rozmiaru i czasu przetwarzania. Usuń niewykorzystane style, niewykorzystane style built- in, duplikaty style lub niewykorzystane listy za pomocą Java."
type: docs
weight: 30
url: /pl/java/clean-up-a-document/
---

Czasami może być konieczne usunięcie niewykorzystanych lub duplikatów informacji w celu zmniejszenia rozmiaru dokumentu wyjściowego i czasu przetwarzania.

Podczas gdy można znaleźć i usunąć niewykorzystane dane, takie jak style lub listy, lub powielać informacje ręcznie, będzie o wiele wygodniej to zrobić za pomocą funkcji i możliwości dostarczonych przez Aspose.Words.

W [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) klasa pozwala określić opcje czyszczenia dokumentów. Aby usunąć duplikaty stylów lub tylko nieużywane style lub listy z dokumentu, można użyć [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) Metoda.

## Usuń niewykorzystane informacje z dokumentu

Można użyć [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) oraz [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) właściwości do wykrywania i usuwania stylów, które są oznaczone jako "nieużywane".

Można użyć [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) właściwość do wykrywania i usuwania list i definicji list oznaczonych jako "niewykorzystane".

Poniższy przykład kodu pokazuje jak usunąć tylko nieużywane style z dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Usuń powielone informacje z dokumentu

Można również użyć [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) właściwość do zastąpienia wszystkich duplikatów stylami oryginału i usunięcia duplikatów z dokumentu.

Poniższy przykład kodu pokazuje jak usunąć duplikaty stylów z dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
