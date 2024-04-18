---
title: Tabel splitsen in Python
second_title: Aspose.Words voor Python
articleTitle: Tabel splitsen
linktitle: Tabel splitsen
description: "Tabel in splitsen Python. Hoe een tabel in twee afzonderlijke tabellen te splitsen Python."
type: docs
weight: 100
url: /nl/python-net/split-table/
---

Een tabel in de Aspose.Words Document Object Model, is opgebouwd uit onafhankelijke rijen en cellen, waardoor het gemakkelijk is om een tabel te splitsen.

Om een tabel te manipuleren om het in twee tafels op te splitsen, moeten we enkele rijen verplaatsen van de oorspronkelijke tabel naar de nieuwe. Om dit te doen, moeten we de rij kiezen waarmee we de tafel willen delen.

We kunnen twee tabellen van de oorspronkelijke tabel maken door deze eenvoudige stappen te volgen:

1. Maak een kloon van de tafel zonder de kinderen te klonen om de verplaatste rijen te houden en plaats ze na de oorspronkelijke tabel
2. Vanaf de opgegeven rij, alle volgende rijen naar deze tweede tabel verplaatsen

Het volgende voorbeeld van code laat zien hoe een tabel in twee tabellen op een specifieke rij moet worden gesplitst:

{{< gist "aspose-words-gists" "d31be78b25b463dd4eb31c85c60fc549" "split-table.py" >}}
