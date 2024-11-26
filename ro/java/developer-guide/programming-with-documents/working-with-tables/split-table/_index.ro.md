---
title: Masă împărțită în Java
second_title: Aspose.Words pentru Java
articleTitle: Masă Împărțită
linktitle: Masă Împărțită
description: "Masă împărțită în Java. Cum se împarte un tabel în două tabele separate Java."
type: docs
weight: 100
url: /ro/java/split-table/
timestamp: 2024-01-27-14-07-04
---

Un tabel, reprezentat în modelul obiectului Document Aspose.Words, este alcătuit din rânduri și celule independente, facilitând împărțirea unui tabel.

Pentru a manipula un tabel pentru a-l împărți în două tabele, trebuie doar să mutăm unele dintre rândurile de la tabelul original la cel nou. Pentru a face acest lucru, trebuie să alegem rândul prin care dorim să împărțim masa.

Putem crea două tabele din tabelul original urmând acești pași simpli:

1. Creați o clonă a tabelului fără a clona copiii pentru a păstra rândurile mutate și introduceți-le după tabelul original
2. Începând de la rândul specificat, mutați toate rândurile ulterioare în acest al doilea tabel

Următorul exemplu de cod arată cum să împărțiți un tabel în două tabele pe un anumit rând:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}
