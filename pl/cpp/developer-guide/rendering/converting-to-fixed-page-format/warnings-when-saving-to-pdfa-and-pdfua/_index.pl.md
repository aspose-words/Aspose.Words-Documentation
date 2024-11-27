---
title: Ostrzeżenia podczas zapisywania do PDF/A i PDF/UA
second_title: Aspose.Words dla C++
articleTitle: Ostrzeżenia dotyczące problemów z ułatwieniami dostępu podczas zapisywania w PDF/A i PDF/UA
linktitle: Ostrzeżenia dotyczące problemów z ułatwieniami dostępu podczas zapisywania w PDF/A i PDF/UA
description: "PDF/A i PDF/UA nakładają wymagania dotyczące dostępności związane z zawartością dokumentu. Podczas zapisywania w PDF/A lub PDF/UA w C++, a problem narusza zgodność, wydawane jest Ostrzeżenie."
type: docs
weight: 39
url: /pl/cpp/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Formaty PDF/A i PDF/UA nakładają szereg wymagań dotyczących dostępności związanych z zawartością dokumentu, których nie można spełnić podczas automatycznej konwersji z Word na PDF. Wymagania te zostały opisane w poprzednim artykule *"Working with PDF/A or PDF/UA"*. Teraz wydawane są Ostrzeżenia dotyczące niektórych z tych problemów.

Ostrzeżenia są wydawane podczas zapisywania w jednym z formatów PDF/A lub PDF/UA, a problem narusza zgodność. Na przykład ostrzeżenie o brakującym tytule dokumentu zostanie wydane podczas zapisywania do PDF/UA i nie zostanie wydane podczas zapisywania do PDF/A.

Wszystkie ostrzeżenia są **WarningType.MinorFormattingLoss** i **WarningSource.Pdf**. Oto lista nowych wartości ostrzegawczych opisu:

| Opis wartość ostrzegawcza | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Brakuje tytułu dokumentu. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." |  | {{< emoticons/tick >}} |
| "Dokument zawiera nagłówki, których poziomy nie są kolejne. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." |  | {{< emoticons/tick >}} |
| "W dokumencie są kształty bez tekstu alternatywnego. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "W dokumencie znajdują się tabele bez tekstu alternatywnego. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "W dokumencie znajdują się hiperłącza bez tekstu alternatywnego. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." |  | {{< emoticons/tick >}} |
| "W dokumencie znajdują się tabele bez wiersza/kolumny nagłówka. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." |  | {{< emoticons/tick >}} |
| "Dokument zawiera znaki Unicode PUA. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." | {{< emoticons/tick >}} |  |
| "Dokument zawiera .notdef glify. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
