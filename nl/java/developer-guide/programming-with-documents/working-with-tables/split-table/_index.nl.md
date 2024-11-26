---
title: Tabel splitsen in Java
second_title: Aspose.Words voor Java
articleTitle: Tabel splitsen
linktitle: Tabel splitsen
description: "Tabel in splitsen Java. Hoe een tabel in twee afzonderlijke tabellen te splitsen Java."
type: docs
weight: 100
url: /nl/java/split-table/
timestamp: 2024-01-27-14-07-04
---

Een tabel in de Aspose.Words Document Object Model, is samengesteld uit onafhankelijke rijen en cellen, waardoor het gemakkelijk is om een tabel te splitsen.

Om een tabel te manipuleren om het in twee tafels te splitsen, moeten we enkele rijen verplaatsen van de oorspronkelijke tabel naar de nieuwe. Om dit te doen, moeten we de rij kiezen waarmee we de tafel willen delen.

We kunnen twee tabellen uit de oorspronkelijke tabel maken door deze eenvoudige stappen te volgen:

1. Maak een kloon van de tafel zonder de kinderen te klonen om de verplaatste rijen te houden en plaats ze na de oorspronkelijke tabel
2. Vanaf de opgegeven rij, alle volgende rijen naar deze tweede tabel verplaatsen

Het volgende voorbeeld van code laat zien hoe je een tabel in twee tabellen op een specifieke rij opsplitst:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}
