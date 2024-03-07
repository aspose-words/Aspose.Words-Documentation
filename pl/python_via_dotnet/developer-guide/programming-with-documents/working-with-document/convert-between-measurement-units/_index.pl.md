---
title: Konwersja między jednostkami miary
second_title: Aspose.Words dla Python via .NET
articleTitle: Konwersja między jednostkami miary
linktitle: Konwersja między jednostkami miary
description: "Aspose.Words dla Python via .NET może pomóc w konwertowaniu jednostek miary, na przykład cali na punkty i punkty na cale, piksele na punkty, punkty na piksele."
type: docs
weight: 20
url: /pl/python-net/convert-between-measurement-units/
---

Większość właściwości obiektu dostępnych w Aspose.Words API, które reprezentują pewne wymiary, takie jak szerokość lub wysokość, marginesy i różne odległości, akceptuje wartości w punktach, gdzie 1 cal równa się 72 punktom. Czasami nie jest to wygodne i punkty należy przeliczyć na inne jednostki.

Aspose.Words udostępnia klasę [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/), która zapewnia funkcje pomocnicze do konwersji pomiędzy różnymi jednostkami miary. Umożliwia konwersję cali, pikseli i milimetrów na punkty, punktów na cale i piksele oraz konwersję pikseli z jednej rozdzielczości na drugą. Konwersję pikseli na punkty i odwrotnie można przeprowadzić przy rozdzielczości 96 dpi (punktów na cal) lub określonej rozdzielczości dpi.

Klasa [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) jest szczególnie przydatna przy ustawianiu różnych właściwości strony, ponieważ na przykład cale są bardziej popularną jednostką miary niż punkty.

Poniższy przykład kodu pokazuje, jak określić właściwości strony w calach:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}
