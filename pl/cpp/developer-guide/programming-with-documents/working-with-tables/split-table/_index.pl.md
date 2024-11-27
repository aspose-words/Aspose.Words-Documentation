---
title: Podziel tabelę na C++
second_title: Aspose.Words dla C++
articleTitle: Tabela Dzielona
linktitle: Tabela Dzielona
description: "Podziel tabelę na C++. Jak podzielić jedną tabelę na dwie oddzielne tabele C++."
type: docs
weight: 100
url: /pl/cpp/split-table/
timestamp: 2024-01-27-14-07-04
---

Tabela reprezentowana w modelu obiektu dokumentu Aspose.Words składa się z niezależnych wierszy i komórek, co ułatwia dzielenie tabeli.

Aby manipulować tabelą w celu podzielenia jej na dwie tabele, wystarczy przenieść niektóre wiersze z oryginalnej tabeli do nowej. Aby to zrobić, musimy wybrać wiersz, według którego chcemy podzielić tabelę.

Możemy utworzyć dwie tabele z oryginalnej tabeli, wykonując te proste kroki:

1. Utwórz klon tabeli bez klonowania dzieci, aby zachować przesunięte wiersze i wstaw je po oryginalnej tabeli
2. Zaczynając od określonego wiersza, Przenieś wszystkie kolejne wiersze do tej drugiej tabeli

Poniższy przykład kodu pokazuje, jak podzielić tabelę na dwie tabele w określonym wierszu:

{{< gist "aspose-words-gists" "29ce7710cab8c3ef18e912a5813e0d36" "split-table.h" >}}
