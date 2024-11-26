---
title: Waarschuwingen bij opslaan naar PDF/A en PDF/UA
second_title: Aspose.Words voor Python
articleTitle: Waarschuwingen over toegankelijkheid bij opslaan naar PDF/A en PDF/UA
linktitle: Waarschuwingen over toegankelijkheid bij opslaan naar PDF/A en PDF/UA
description: "PDF/A en PDF/UA stellen toegankelijkheidseisen met betrekking tot documentinhoud. Bij het opslaan naar PDF/A of PDF/UA in Python en de kwestie schendt de naleving, een waarschuwing wordt gegeven."
type: docs
weight: 29
url: /nl/python-net/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A en PDF/UA-formaten leggen een aantal toegankelijkheidseisen op met betrekking tot documentinhoud waaraan niet kan worden voldaan tijdens automatische conversie van Word naar PDF. Deze eisen worden beschreven in het vorige artikel *"Werken met PDF/A of PDF/UA"*. Voor sommige van deze problemen worden nu waarschuwingen gegeven.

Waarschuwingen worden gegeven bij het opslaan naar een van de PDF/A of PDF/UA formaten en het probleem schendt naleving. Bijvoorbeeld, de waarschuwing over ontbrekende document titel zal worden gegeven bij het opslaan naar PDF/UA en zal niet worden gegeven wanneer opslaan naar PDF/A.

Alle waarschuwingen zijn [WarningType](https://reference.aspose.com/words/python-net/aspose.words/warningtype/)**.MinorFormattingLoss** en [WarningSource](https://reference.aspose.com/words/python-net/aspose.words/warningsource/)**. Pdf**. Hier is een lijst van de nieuwe beschrijving waarschuwingswaarden:

|  Beschrijving van de waarschuwingswaarde |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Het document bevat rubrieken die niet opeenvolgend zijn. Dit schendt de nalevingseisen. Het uitvoerdocument zal niet volledig conform zijn." |                          |   {{< emoticons/tick >}}  |
|  "Er zijn vormen zonder alt tekst in het document. Dit schendt de nalevingseisen. Het uitvoerdocument zal niet volledig conform zijn." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Er zijn tabellen zonder alt tekst in het document. Dit schendt de nalevingseisen. Het uitvoerdocument zal niet volledig conform zijn." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Het document bevat Unicode PUA tekens. Dit schendt de nalevingseisen. Het uitvoerdocument zal niet volledig conform zijn." |   {{< emoticons/tick >}}  |                          |
|  "Het document bevat .notdef glyphs. Dit schendt de nalevingseisen. Het uitvoerdocument zal niet volledig conform zijn." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
