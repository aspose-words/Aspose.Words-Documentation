---
title: Varování při ukládání do PDF/A a PDF/UA
second_title: Aspose.Words pro C++
articleTitle: Upozornění na problémy s přístupností při ukládání do PDF/A a PDF/UA
linktitle: Upozornění na problémy s přístupností při ukládání do PDF/A a PDF/UA
description: "PDF/A a PDF/UA ukládají požadavky na přístupnost týkající se obsahu dokumentu. Při ukládání do PDF/A nebo PDF/UA v C++ a problém porušuje dodržování předpisů, je vydáno varování."
type: docs
weight: 39
url: /cs/cpp/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Formáty PDF/A a PDF/UA ukládají řadu požadavků na přístupnost souvisejících s obsahem dokumentu, které nelze splnit při automatickém převodu z Word na PDF. Tyto požadavky jsou popsány v předchozím článku *"Working with PDF/A or PDF/UA"*. Nyní jsou vydávána varování pro některé z těchto problémů.

Varování se vydávají při ukládání do jednoho z formátů PDF/A nebo PDF/UA a problém porušuje dodržování předpisů. Například varování o chybějícím názvu dokumentu bude vydáno při ukládání do PDF/UA a nebude vydáno při ukládání do PDF/A.

Všechna varování jsou **WarningType.MinorFormattingLoss** a **WarningSource.Pdf**. Zde je seznam nových hodnot varování popisu:

| Popis varovná hodnota | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Název dokumentu chybí. To porušuje požadavky na dodržování předpisů. Výstupní dokument nebude plně kompatibilní." |  | {{< emoticons/tick >}} |
| "Dokument obsahuje nadpisy, které úrovně nejsou po sobě jdoucí. To porušuje požadavky na dodržování předpisů. Výstupní dokument nebude plně kompatibilní." |  | {{< emoticons/tick >}} |
| "V dokumentu jsou tvary bez alternativního textu. To porušuje požadavky na dodržování předpisů. Výstupní dokument nebude plně kompatibilní." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "V dokumentu jsou tabulky bez alternativního textu. To porušuje požadavky na dodržování předpisů. Výstupní dokument nebude plně kompatibilní." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "V dokumentu jsou hypertextové odkazy bez alternativního textu. To porušuje požadavky na dodržování předpisů. Výstupní dokument nebude plně kompatibilní." |  | {{< emoticons/tick >}} |
| "V dokumentu jsou tabulky bez řádku/sloupce záhlaví. To porušuje požadavky na dodržování předpisů. Výstupní dokument nebude plně kompatibilní." |  | {{< emoticons/tick >}} |
| "Dokument obsahuje znaky Unicode PUA. To porušuje požadavky na dodržování předpisů. Výstupní dokument nebude plně kompatibilní." | {{< emoticons/tick >}} |  |
| "Dokument obsahuje .notdef glyfy. To porušuje požadavky na dodržování předpisů. Výstupní dokument nebude plně kompatibilní." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
