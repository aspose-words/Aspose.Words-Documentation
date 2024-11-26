---
title: Waarschuwingen bij Opslaan naar PDF/A en PDF/UA
second_title: Aspose.Words voor C++
articleTitle: Waarschuwingen voor toegankelijkheidsproblemen bij het opslaan naar PDF/A en PDF/UA
linktitle: Waarschuwingen voor toegankelijkheidsproblemen bij het opslaan naar PDF/A en PDF/UA
description: "PDF/A en PDF/UA stellen toegankelijkheidseisen met betrekking tot documentinhoud. Wanneer het opslaan naar PDF/A of PDF/UA in C++ en het probleem de naleving schendt, wordt een waarschuwing afgegeven."
type: docs
weight: 39
url: /nl/cpp/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A en PDF/UA formats stellen een aantal toegankelijkheidseisen met betrekking tot documentinhoud waaraan niet kan worden voldaan bij automatische conversie van Word naar PDF. Deze vereisten zijn beschreven in het vorige artikel *"Working with PDF/A or PDF/UA"*. Nu worden waarschuwingen afgegeven voor sommige van deze problemen.

Waarschuwingen worden afgegeven bij het opslaan in een van de indelingen PDF/A of PDF/UA en het probleem is in strijd met de naleving. De waarschuwing over ontbrekende documenttitel wordt bijvoorbeeld afgegeven wanneer u op PDF/UA opslaat en niet wanneer u op PDF/A opslaat.

Alle waarschuwingen zijn van **WarningType.MinorFormattingLoss** en **WarningSource.Pdf**. Hier is een lijst van de nieuwe beschrijving waarschuwingswaarden:

| Beschrijving waarschuwingswaarde | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Documenttitel ontbreekt. Dit schendt de nalevingsvereisten. Het uitvoerdocument zal niet volledig conform zijn." |  | {{< emoticons/tick >}} |
| "Het document bevat koppen die niet opeenvolgend zijn. Dit is in strijd met de nalevingsvereisten. Het uitvoerdocument zal niet volledig compliant zijn." |  | {{< emoticons/tick >}} |
| "Er zijn vormen zonder alternatieve tekst in het document. Dit is in strijd met de nalevingsvereisten. Het uitvoerdocument zal niet volledig compliant zijn." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Er zijn tabellen zonder alternatieve tekst in het document. Dit is in strijd met de nalevingsvereisten. Het uitvoerdocument zal niet volledig compliant zijn." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Er zijn hyperlinks zonder alternatieve tekst in het document. Dit is in strijd met de nalevingsvereisten. Het uitvoerdocument zal niet volledig compliant zijn." |  | {{< emoticons/tick >}} |
| "Er zijn tabellen zonder koprij / kolom in het document. Dit is in strijd met de nalevingsvereisten. Het uitvoerdocument zal niet volledig compliant zijn." |  | {{< emoticons/tick >}} |
| "Het document bevat Unicode PUA - tekens. Dit is in strijd met de nalevingsvereisten. Het uitvoerdocument zal niet volledig compliant zijn." | {{< emoticons/tick >}} |  |
| "Het document bevat .notdef glyphs. Dit is in strijd met de nalevingsvereisten. Het uitvoerdocument zal niet volledig compliant zijn." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
