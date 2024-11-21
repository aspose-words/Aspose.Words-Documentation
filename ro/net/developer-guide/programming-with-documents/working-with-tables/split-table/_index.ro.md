---
title: Split Table în C#
second_title: Aspose.Words pentru .NET
articleTitle: Split Table
linktitle: Split Table
description: "Împărți tabel în C#. Cum să împărți o masă într-una două mese separate C #."
type: docs
weight: 100
url: /ro/net/split-table/
timestamp: 2024-01-27-14-07-04
---

O masă, reprezentată în Aspose.Words Document Object Model, este alcătuită din rânduri și celule independente, făcând ușor de împărțit o masă.

Pentru a manipula o masă pentru a o împărți în două mese, avem doar nevoie să mutăm unele rânduri din masa originală către cea nouă. Pentru asta avem nevoie să alegem rândul după care vrem să împărțim tabelul.

Putem crea două tabele din tabelul original urmând acești pași simpli:

1. Creează o clonă a tabelului fără a clona copiii pentru a păstra rândurile mutate și a le introduce după tabelul original
2. Începe de la rândul specificat, mută toate rândurile ulterioare în această a doua tabelă

Exemplul următor de cod arată cum să împărțiți o tabelă în două tabele pe un rând specific:

{{< gist "aspose-words-gists" "4ab56c5443822fa44f4cac1f45af32b7" "split-table.cs" >}}
