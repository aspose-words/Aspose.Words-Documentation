---
title: Varování Při úsporách na PDF/A a PDF/UA
second_title: Aspose.Words místo .NET
articleTitle: Výstrahy o přístupnosti při ukládání do PDF/A a PDF/UA
linktitle: Výstrahy o přístupnosti při ukládání do PDF/A a PDF/UA
description: "PDF/A a PDF/UA ukládají požadavky na přístupnost související s obsahem dokumentu. Při ukládání do PDF/A nebo PDF/UA v C# a problém porušuje dodržování, je vydáno varování."
type: docs
weight: 29
url: /cs/net/warnings-when-saving-to-pdfa-and-pdfua/
---

Formáty PDF/A a PDF/UA ukládají řadu požadavků na přístupnost týkajících se obsahu dokumentu, které nelze splnit při automatickém převodu z Word do PDF. Tyto požadavky jsou popsány v předchozím článku *"Práce s PDF/A nebo PDF/UA"*. Nyní jsou pro některé z těchto problémů vydána varování.

Varování se vydává při ukládání do jednoho z formátů PDF/A nebo PDF/UA a problém porušuje dodržování. Například varování o chybějícím názvu dokumentu bude vydáno při uložení do PDF/UA a nebude vydáno při uložení do PDF/A.

Všechna varování [WarningType](https://reference.aspose.com/words/net/aspose.words/warningtype/)**.MinorFormattingLoss** a [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/)**. Pdf**. Zde je seznam nových varovných hodnot popisu:

|  Varovná hodnota popisu |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  Název dokumentu chybí. To porušuje požadavky na dodržování předpisů. Výstupový dokument nebude plně v souladu." |                          |   {{< emoticons/tick >}}  |
|  "Dokument obsahuje nadpisy, které úrovně nejsou po sobě jdoucí. To porušuje požadavky na dodržování předpisů. Výstupový dokument nebude plně v souladu." |                          |   {{< emoticons/tick >}}  |
|  "V dokumentu jsou tvary bez alt textu. To porušuje požadavky na dodržování předpisů. Výstupový dokument nebude plně v souladu." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "V dokumentu jsou stoly bez textu. To porušuje požadavky na dodržování předpisů. Výstupový dokument nebude plně v souladu." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "V dokumentu jsou hypertextové odkazy. To porušuje požadavky na dodržování předpisů. Výstupový dokument nebude plně v souladu." |                          |   {{< emoticons/tick >}}  |
|  "V dokumentu jsou tabulky bez záhlaví/sloupce. To porušuje požadavky na dodržování předpisů. Výstupový dokument nebude plně v souladu." |                          |   {{< emoticons/tick >}}  |
|  "Dokument obsahuje znaky Unicode PUA. To porušuje požadavky na dodržování předpisů. Výstupový dokument nebude plně v souladu." |   {{< emoticons/tick >}}  |                          |
|  "Dokument obsahuje .notdef glyphs. To porušuje požadavky na dodržování předpisů. Výstupový dokument nebude plně v souladu." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |