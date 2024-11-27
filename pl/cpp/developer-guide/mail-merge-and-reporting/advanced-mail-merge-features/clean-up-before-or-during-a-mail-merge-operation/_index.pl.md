---
title: Czyszczenie przed lub w trakcie operacji Mail Merge
second_title: Aspose.Words dla C++
articleTitle: Czyszczenie przed lub w trakcie operacji Mail Merge
linktitle: Czyszczenie przed lub w trakcie operacji Mail Merge
type: docs
description: "Zastosuj różne opcje czyszczenia i usuwania, takie jak usuwanie pól scalania przed wykonaniem operacji Mail Merge lub usuwanie nieużywanych regionów podczas operacji Mail Merge."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /pl/cpp/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words umożliwia stosowanie różnych opcji czyszczenia i usuwania, takich jak usuwanie pól scalania przed wykonaniem operacji Mail Merge lub usuwanie nieużywanych regionów podczas operacji Mail Merge. W tej sekcji wyjaśniono, jak usunąć scalone pola i jak skonfigurować opcję usuwania.

## Usuń Scalone Pola

Jeśli używasz jakiegoś długiego szablonu utworzonego przez kogoś innego, możesz chcieć usunąć wszystkie pola scalania, które już istnieją w tym szablonie przed wykonaniem operacji Mail Merge. Możesz użyć metody [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/), jeśli chcesz usunąć wszystkie pola scalania z dokumentu bez wykonywania operacji Mail Merge. Na tę metodę nie mają wpływu żadne opcje usuwania właściwości [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/), a jej wykonanie usuwa tylko scalone pola, a nie pola zawierające lub puste akapity.

Poniższy przykład kodu pokazuje, jak usunąć wszystkie pola scalania z szablonu bez wykonywania operacji Mail Merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## Skonfiguruj opcję `Removing`

Aspose.Words umożliwia usuwanie niezmergowanych pól, regionów i akapitów z szablonu podczas operacji Mail Merge przy użyciu opcji usuwania.

Użyj właściwości **CleanupOptions** wraz z wyliczeniem [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/), aby ustawić opcję usuwania. Określ, które elementy chcesz usunąć, wybierając następujące opcje (możesz połączyć więcej niż jedną):

* Usuń puste akapity
* Usuń nieużywane regiony
* Usuń nieużywane pola
* Usuń pola zawierające
* Usuń pola statyczne
* Usuń puste wiersze tabeli

Pole scalania można uznać za niezłączone w jednym z następujących warunków:

1. Jeśli pole Scal w źródle danych nie ma kolumny ani pola mapowania.
2. Jeśli pole scalania w źródle danych zawiera pole mapowania, ale dane mają wartość null.

{{% alert color="primary" %}}

Jeśli łączysz dane przy użyciu oddzielnych źródeł danych, te opcje usuwania zostaną włączone tylko przy ostatnim wywołaniu metody Mail Merge execute.

{{% /alert %}}

### Usuń Puste Akapity

Akapit zawierający tylko pola scalania będzie pusty, gdy proces Mail Merge usunie wszystkie pola scalania jako niezmergowane. Te puste akapity mogą dodać niechcianą przestrzeń i zmienić wygląd wygenerowanego raportu. Możesz napotkać dwie sytuacje z akapitami podczas operacji Mail Merge:

1. Pole Mail Merge zostanie scalone z pustymi danymi.
2. Pole scalania jest nieużywane i zostanie usunięte.

W obu sytuacjach opcja **RemoveEmptyParagraphs** automatycznie usunie puste akapity z dokumentu. Ponadto usunie pola scalania `TableStart` i TableEnd, jeśli reszta akapitu jest pusta.

Poniższy przykład kodu pokazuje, jak usunąć puste akapity:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Usuń Nieużywane Pola

Aspose.Words umożliwia usunięcie nieużywanych pól Mail Merge poprzez przypisanie flagi **RemoveUnusedFields** do **CleanupOptions**. Ta opcja usunie pola scalania, które nie mają odpowiednich danych w źródle danych.

Poniższy przykład kodu pokazuje, jak automatycznie usunąć nieużywane pola scalania z dokumentu podczas operacji Mail Merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### Usuwanie Pól Zawierających

Pole scalania może być zawarte w innym polu, takim jak pole **IF** lub pole formuły. Usuń to zewnętrzne pole, gdy pole scalania zostanie scalone lub usunięte z dokumentu.

Poniższy przykład kodu pokazuje, jak usunąć pola zawierające pola scalania z dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**Uwaga**

### Usuń Puste Wiersze Tabeli

Aspose.Words umożliwia usunięcie pustych wierszy tabeli poprzez przypisanie flagi **RemoveEmptyTableRows** do **CleanupOptions**. Ta opcja usunie wiersze tabeli zawierające puste pola scalania.

Poniższy przykład kodu pokazuje, jak usunąć puste wiersze tabeli zawierające regiony Mail Merge z dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}
