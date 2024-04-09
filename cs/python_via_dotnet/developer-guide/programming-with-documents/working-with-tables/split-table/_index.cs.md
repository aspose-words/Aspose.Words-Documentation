---
title: Rozdělený stůl Python
second_title: Aspose.Words místo Python
articleTitle: Rozdělený stůl
linktitle: Rozdělený stůl
description: "Rozdělit stůl v Python. Jak rozdělit jednu tabulku na dvě samostatné tabulky Python."
type: docs
weight: 100
url: /cs/python-net/split-table/
---

Tabulka zastoupená v Aspose.Words Document Object Model, se skládá z nezávislých řad a buněk, takže je snadné rozdělit stůl.

Abychom zmanipulovali stůl, abychom jej rozdělili na dva stoly, stačí přesunout některé řádky z původního stolu na nový. K tomu si musíme vybrat řádek, podle kterého chceme rozdělit stůl.

Můžeme vytvořit dvě tabulky z původní tabulky podle těchto jednoduchých kroků:

1. Vytvořit klon tabulky bez klonování dětí, aby se pohybovaly řádky a vložit je po původní tabulce
2. Začínáme ve stanoveném řádku, přesuňte všechny následující řádky do této druhé tabulky

Následující příklad kódu ukazuje, jak rozdělit tabulku na dvě tabulky na konkrétní řádek:

{{< gist "aspose-words-gists" "d31be78b25b463dd4eb31c85c60fc549" "split-table.py" >}}
