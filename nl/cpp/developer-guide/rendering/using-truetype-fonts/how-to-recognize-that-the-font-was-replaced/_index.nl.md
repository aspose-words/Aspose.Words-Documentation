---
title: Hoe te herkennen dat het lettertype is vervangen in C++
second_title: Aspose.Words voor C++
articleTitle: Hoe te herkennen dat het lettertype is vervangen
linktitle: Hoe te herkennen dat het lettertype is vervangen
description: "Als u niet zeker weet waarom de lay-out van een document is gewijzigd of waarom een bepaald lettertype er niet uitziet zoals verwacht, kunnen waarschuwingsberichten voor lettertypesubstitutie helpen."
type: docs
weight: 13
url: /nl/cpp/how-to-recognize-that-the-font-was-replaced/
timestamp: 2024-09-24-14-35-44
---

Soms is het onduidelijk waarom de lay-out van het document is gewijzigd of waarom een bepaald lettertype er niet uitziet zoals verwacht. In dergelijke gevallen komen waarschuwingsberichten voor lettertypesubstitutie die door de interface IWarningCallback zijn geïmplementeerd, te hulp. Ze hebben het Waarschuwingstype [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) en het standaard beschrijvingstekstformaat, "Font' <OriginalFont> ' is niet gevonden. Gebruik in plaats daarvan het lettertype' <SubstitutionFont>'. Reden: <Reason>", met de volgende redenen:

- "alternatieve naam uit het document" – voor vervanging door [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "fontconfig substitutie" – voor substitutie door fontconfiguratieregel
- "tabelvervanging" - voor vervanging door tabelregel
- "font info substitution" – voor substitutie door font info-regel
- "standaard lettertypevervanging" – voor vervanging door standaardlettertyperegel
- "eerste beschikbare lettertype" – voor vervanging met het eerste beschikbare lettertype
