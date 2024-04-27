---
title: Ostrzeżenia podczas zapisywania do PDF / A i PDF / UA
second_title: Aspose.Words zamiast Java
articleTitle: Ostrzeżenia o dostępności podczas zapisywania do PDF / A i PDF / UA
linktitle: Ostrzeżenia o dostępności podczas zapisywania do PDF / A i PDF / UA
description: "PDF / A i PDF / UA nakładają wymogi dostępności związane z treścią dokumentu. Podczas zapisywania do PDF / A lub PDF / UA w Java i problem narusza zgodność, wydaje się ostrzeżenie."
type: docs
weight: 29
url: /pl/java/warnings-when-saving-to-pdfa-and-pdfua/
---

Formaty PDF / A i PDF / UA nakładają szereg wymogów dostępności związanych z treścią dokumentu, których nie można spełnić podczas automatycznej konwersji Word na PDF. Wymagania te zostały opisane w poprzednim artykule * "Working with PDF / A or PDF / UA" *. Na niektóre z tych problemów wydawane są ostrzeżenia.

Ostrzeżenia są wydawane przy zapisywaniu do jednego z formatów PDF / A lub PDF / UA, a problem narusza zgodność. Na przykład ostrzeżenie o brakującym tytule dokumentu zostanie wydane przy zapisie do PDF / UA i nie zostanie wydane przy zapisie do PDF / A.

Wszystkie ostrzeżenia są [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**. MinorFormattingLoss** oraz [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**. Pdf**. Oto lista nowych wartości ostrzeżeń Opis:

|  Opis wartości ostrzegawczej |  PDF / A |  PDF / UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Brakuje tytułu dokumentu. To narusza wymogi zgodności. Dokument wyjściowy nie będzie w pełni zgodny" |                          |   {{< emoticons/tick >}}  |
|  "Dokument zawiera nagłówki, których poziomy nie są kolejne. To narusza wymogi zgodności. Dokument wyjściowy nie będzie w pełni zgodny" |                          |   {{< emoticons/tick >}}  |
|  "W dokumencie są kształty bez tekstu alt. To narusza wymogi zgodności. Dokument wyjściowy nie będzie w pełni zgodny" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "W dokumencie są tabele bez tekstu alt. To narusza wymogi zgodności. Dokument wyjściowy nie będzie w pełni zgodny" |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "W dokumencie są hiperlinki bez tekstu alt. To narusza wymogi zgodności. Dokument wyjściowy nie będzie w pełni zgodny" |                          |   {{< emoticons/tick >}}  |
|  "W dokumencie są tabele bez nagłówka / kolumny. To narusza wymogi zgodności. Dokument wyjściowy nie będzie w pełni zgodny" |                          |   {{< emoticons/tick >}}  |
|  "Dokument zawiera znaki Unicode PUA. To narusza wymogi zgodności. Dokument wyjściowy nie będzie w pełni zgodny" |   {{< emoticons/tick >}}  |                          |
|  "Dokument zawiera .notdef glyphb. To narusza wymogi zgodności. Dokument wyjściowy nie będzie w pełni zgodny " |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
