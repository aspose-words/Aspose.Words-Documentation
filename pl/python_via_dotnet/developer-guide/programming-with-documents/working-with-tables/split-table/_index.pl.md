---
title: Podziel tabelę w Python
second_title: Aspose.Words dla Python
articleTitle: Podziel tabelę
linktitle: Podziel tabelę
description: "Podziel tabelę w Python. Jak podzielić jedną tabelę na dwie oddzielne tabele Python."
type: docs
weight: 100
url: /pl/python-net/split-table/
timestamp: 2024-01-27-14-07-04
---

Tabela reprezentowana w formacie Aspose.Words Document Object Model składa się z niezależnych wierszy i komórek, co ułatwia dzielenie tabeli.

Aby manipulować tabelą i podzielić ją na dwie tabele, wystarczy przenieść niektóre wiersze z oryginalnej tabeli do nowej. W tym celu musimy wybrać wiersz, według którego chcemy podzielić tabelę.

Możemy utworzyć dwie tabele z oryginalnej tabeli, wykonując następujące proste kroki:

1. Utwórz klon tabeli bez klonowania dzieci, aby zachować przeniesione wiersze i wstaw je po oryginalnej tabeli
2. Zaczynając od określonego wiersza, przenieś wszystkie kolejne wiersze do drugiej tabeli

Poniższy przykład kodu pokazuje, jak podzielić tabelę na dwie tabele w określonym wierszu:

{{< gist "aspose-words-gists" "d31be78b25b463dd4eb31c85c60fc549" "split-table.py" >}}
