---
title: Rozdělit tabulku v C++
second_title: Aspose.Words pro C++
articleTitle: Rozdělená Tabulka
linktitle: Rozdělená Tabulka
description: "Rozdělit tabulku v C++. Jak rozdělit jednu tabulku na dvě samostatné tabulky C++."
type: docs
weight: 100
url: /cs/cpp/split-table/
timestamp: 2024-01-27-14-07-04
---

Tabulka reprezentovaná v modelu objektu Aspose.Words dokumentu se skládá z nezávislých řádků a buněk, což usnadňuje rozdělení tabulky.

Chcete-li manipulovat s tabulkou a rozdělit ji na dvě tabulky, stačí přesunout některé řádky z původní tabulky do nové. K tomu musíme vybrat řádek, kterým chceme tabulku rozdělit.

Můžeme vytvořit dvě tabulky z původní tabulky podle těchto jednoduchých kroků:

1. Vytvořte klon tabulky bez klonování dětí, abyste udrželi přesunuté řádky a vložili je za původní tabulku
2. Počínaje zadaným řádkem přesuňte všechny následující řádky do této druhé tabulky

Následující příklad kódu ukazuje, jak rozdělit tabulku na dvě tabulky na konkrétním řádku:

{{< gist "aspose-words-gists" "29ce7710cab8c3ef18e912a5813e0d36" "split-table.h" >}}
