---
title: Tabel splitsen in C++
second_title: Aspose.Words voor C++
articleTitle: Split Table
linktitle: Split Table
description: "Tabel splitsen in C++. Een tabel splitsen in twee afzonderlijke tabellen C++."
type: docs
weight: 100
url: /nl/cpp/split-table/
timestamp: 2024-01-27-14-07-04
---

Een tabel, weergegeven in het Aspose.Words Documentobjectmodel, bestaat uit onafhankelijke rijen en cellen, waardoor het gemakkelijk is om een tabel te splitsen.

Om een tabel te manipuleren om deze in twee tabellen te splitsen, hoeven we alleen maar enkele rijen van de oorspronkelijke tabel naar de nieuwe te verplaatsen. Om dit te doen, moeten we de rij kiezen waarmee we de tafel willen splitsen.

We kunnen twee tabellen maken van de oorspronkelijke tabel door deze eenvoudige stappen te volgen:

1. Maak een kloon van de tabel zonder de kinderen te klonen om de verplaatste rijen te behouden en ze na de oorspronkelijke tabel in te voegen
2. Begin bij de opgegeven rij en verplaats alle volgende rijen naar deze tweede tabel

Het volgende codevoorbeeld laat zien hoe u een tabel in twee tabellen op een specifieke rij kunt splitsen:

{{< gist "aspose-words-gists" "29ce7710cab8c3ef18e912a5813e0d36" "split-table.h" >}}
