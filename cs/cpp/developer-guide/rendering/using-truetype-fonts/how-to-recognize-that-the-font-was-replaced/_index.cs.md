---
title: Jak rozpoznat, že písmo bylo nahrazeno v C++
second_title: Aspose.Words pro C++
articleTitle: Jak rozpoznat, že písmo bylo nahrazeno
linktitle: Jak rozpoznat, že písmo bylo nahrazeno
description: "Pokud si nejste jisti, proč se rozložení dokumentu změnilo nebo proč určité písmo nevypadá podle očekávání, mohou vám pomoci zprávy s upozorněním na nahrazení písma."
type: docs
weight: 13
url: /cs/cpp/how-to-recognize-that-the-font-was-replaced/
timestamp: 2024-09-24-14-35-44
---

Někdy může být nejasné, proč se rozložení dokumentu změnilo nebo proč některé písmo nevypadá podle očekávání. V takových případech přicházejí na pomoc výstražné zprávy o nahrazení písem implementované rozhraním IWarningCallback. Mají typ varování [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) a standardní formát textu popisu, "Font' <OriginalFont> ' Nebyl nalezen. Místo toho použijte písmo '<SubstitutionFont>'. Důvod: <Reason>", s následujícími důvody:

- "Alternativní název z dokumentu" - pro nahrazení [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "fontconfig substituce" - pro substituci podle pravidla font config
- "nahrazení tabulky" - pro nahrazení pravidlem tabulky
- "font info substituce" - pro nahrazení podle pravidla font info
- "výchozí náhrada písma" – pro náhradu výchozím pravidlem písma
- "první dostupné písmo" - pro nahrazení prvním dostupným písmem
