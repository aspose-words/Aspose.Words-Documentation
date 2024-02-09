---
title: Ostrzeżenia podczas zapisywania w formacie PDF/A i PDF/UA
second_title: Aspose.Words dla .NET
articleTitle: Ostrzeżenia o problemach z dostępnością podczas zapisywania w formacie PDF/A i PDF/UA
linktitle: Ostrzeżenia o problemach z dostępnością podczas zapisywania w formacie PDF/A i PDF/UA
description: "PDF/A i PDF/UA nakładają wymagania dostępności dotyczące zawartości dokumentu. Podczas zapisywania w formacie PDF/A lub PDF/UA w C# i problem narusza zgodność, pojawia się ostrzeżenie."
type: docs
weight: 29
url: /pl/net/warnings-when-saving-to-pdfa-and-pdfua/
---

Formaty PDF/A i PDF/UA nakładają szereg wymagań dostępności związanych z treścią dokumentu, których nie można spełnić podczas automatycznej konwersji z Worda do formatu PDF. Wymagania te opisano w poprzednim artykule *"Praca z PDF/A lub PDF/UA"*. Obecnie w przypadku niektórych z tych problemów wydawane są ostrzeżenia.

Podczas zapisywania w jednym z formatów PDF/A lub PDF/UA wyświetlane są ostrzeżenia, a problem narusza zgodność. Na przykład ostrzeżenie o braku tytułu dokumentu zostanie wyświetlone podczas zapisywania w formacie PDF/UA i nie zostanie wyświetlone podczas zapisywania w formacie PDF/A.

Wszystkie ostrzeżenia mają numery [WarningType](https://reference.aspose.com/words/net/aspose.words/warningtype/)**.MinorFormattingLoss** i [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/)**.Pdf**. Oto lista nowych wartości ostrzeżeń Opisu:

|  Opis wartości ostrzegawczej |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Brak tytułu dokumentu. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." |                          |   {{< emoticons/tick >}}  |
|  "Dokument zawiera nagłówki, których poziomy nie są następujące po sobie. Narusza to wymogi zgodności. Dokument wyjściowy nie będzie w pełni zgodny." |                          |   {{< emoticons/tick >}}  |
|  "W dokumencie znajdują się kształty bez tekstu alternatywnego. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "W dokumencie znajdują się tabele bez tekstu alternatywnego. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "W dokumencie znajdują się hiperłącza bez tekstu alternatywnego. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." |                          |   {{< emoticons/tick >}}  |
|  "W dokumencie znajdują się tabele bez wiersza/kolumny nagłówka. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." |                          |   {{< emoticons/tick >}}  |
|  "Dokument zawiera znaki PUA Unicode. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." |   {{< emoticons/tick >}}  |                          |
|  "Dokument zawiera pliki glyph .notdef. Narusza to wymagania zgodności. Dokument wyjściowy nie będzie w pełni zgodny." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |