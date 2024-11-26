---
title: Podziel tabelę w C#
second_title: Aspose.Words dla .NET
articleTitle: Podziel tabelę
linktitle: Podziel tabelę
description: "Podziel tabelę w C#. Jak podzielić jedną tabelę na dwie oddzielne tabele C#."
type: docs
weight: 100
url: /pl/net/split-table/
timestamp: 2024-01-27-14-07-04
---

Tabela reprezentowana w formacie Aspose.Words Document Object Model składa się z niezależnych wierszy i komórek, co ułatwia dzielenie tabeli.

Aby manipulować tabelą i podzielić ją na dwie tabele, wystarczy przenieść niektóre wiersze z oryginalnej tabeli do nowej. W tym celu musimy wybrać wiersz, według którego chcemy podzielić tabelę.

Możemy utworzyć dwie tabele z oryginalnej tabeli, wykonując następujące proste kroki:

1. Utwórz klon tabeli bez klonowania dzieci, aby zachować przeniesione wiersze i wstaw je po oryginalnej tabeli
2. Zaczynając od określonego wiersza, przenieś wszystkie kolejne wiersze do drugiej tabeli

Poniższy przykład kodu pokazuje, jak podzielić tabelę na dwie tabele w określonym wierszu:

{{< gist "aspose-words-gists" "4ab56c5443822fa44f4cac1f45af32b7" "split-table.cs" >}}
