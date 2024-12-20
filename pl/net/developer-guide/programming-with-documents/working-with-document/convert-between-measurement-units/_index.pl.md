---
title: Konwersja między jednostkami miary w C#
second_title: Aspose.Words dla .NET
articleTitle: Konwersja między jednostkami miary
linktitle: Konwersja między jednostkami miary
description: "Aspose.Words dla .NET może pomóc w konwertowaniu jednostek miary, na przykład cali na punkty i punkty na cale, piksele na punkty, punkty na piksele przy użyciu formatu C#."
type: docs
weight: 20
url: /pl/net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Większość właściwości obiektu dostępnych w Aspose.Words API, które reprezentują pewne wymiary, takie jak szerokość lub wysokość, marginesy i różne odległości, akceptuje wartości w punktach, gdzie 1 cal równa się 72 punktom. Czasami nie jest to wygodne i punkty należy przeliczyć na inne jednostki.

Aspose.Words udostępnia klasę [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/), która zapewnia funkcje pomocnicze do konwersji pomiędzy różnymi jednostkami miary. Umożliwia konwersję:

- cale, piksele i milimetry na punkty
- wskazuje cale i piksele
- pikseli z jednej rozdzielczości na drugą

Konwersję pikseli na punkty i odwrotnie można przeprowadzić przy rozdzielczości 96 dpi (punktów na cal) lub określonej rozdzielczości dpi.

Klasa **ConvertUtil** jest szczególnie przydatna przy ustawianiu różnych właściwości strony, ponieważ na przykład cale są bardziej popularną jednostką miary niż punkty.

Poniższy przykład kodu pokazuje, jak określić właściwości strony w calach:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
