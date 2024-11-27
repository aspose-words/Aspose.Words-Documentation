---
title: Przelicz między jednostkami miary w C++
second_title: Aspose.Words dla C++
articleTitle: Konwersja Między Jednostkami Miary
linktitle: Konwersja Między Jednostkami Miary
description: "Aspose.Words dla C++ może pomóc w konwersji między jednostkami miary, na przykład cale na punkty i punkty na cale, piksele na punkty, punkty na piksele."
type: docs
weight: 20
url: /pl/cpp/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Większość właściwości obiektu podanych w Aspose.Words API, które reprezentują pewien pomiar, taki jak szerokość lub wysokość, marginesy i różne odległości, akceptuje wartości w punktach, gdzie 1 cal równa się 72 punktom. Czasami nie jest to wygodne i punkty należy przeliczyć na inne jednostki.

Aspose.Words zapewnia klasę [ConvertUtil](https://reference.aspose.com/words/cpp/class/aspose.words.convert_util), która zapewnia funkcje pomocnicze do konwersji między różnymi jednostkami miary. Umożliwia konwersję cali, pikseli i milimetrów na punkty, punktów na cale i piksele oraz konwersję pikseli z jednej rozdzielczości na drugą.Konwersję pikseli na punkty i odwrotnie można wykonać przy rozdzielczości 96 dpi (punktów na cal) lub określonej rozdzielczości dpi.

Klasa **ConvertUtil** jest szczególnie przydatna przy ustawianiu różnych właściwości strony, ponieważ na przykład cale są bardziej powszechnymi jednostkami miary niż punktami.

Poniższy przykład kodu pokazuje, jak określić właściwości strony w calach:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}

