---
title: Tabela podzielona Java
second_title: Aspose.Words zamiast Java
articleTitle: Tabela podzielona
linktitle: Tabela podzielona
description: "Tabela podzielona Java. Jak podzielić jedną tabelę na dwie oddzielne tabele Java."
type: docs
weight: 100
url: /pl/java/split-table/
---

Tabela, reprezentowana w Aspose.Words Document Object Model, składa się z niezależnych wierszy i komórek, co ułatwia podział tabeli.

Aby manipulować stołem, aby podzielić go na dwie tabele, musimy przenieść niektóre wiersze z oryginalnej tabeli na nową. Aby to zrobić, musimy wybrać wiersz, w którym chcemy podzielić stół.

Możemy stworzyć dwie tabele z oryginalnej tabeli poprzez następujące proste kroki:

1. Utwórz klon tabeli bez klonowania dzieci, aby utrzymać przeniesione wiersze i umieścić je po pierwotnej tabeli
2. Począwszy od określonego wiersza, przenieś wszystkie kolejne wiersze do tej drugiej tabeli

Poniższy przykład kodu pokazuje jak podzielić tabelę na dwie tabele w określonym wierszu:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}
