---
title: Przelicz między jednostkami pomiarowymi w Java
second_title: Aspose.Words zamiast Java
articleTitle: Przelicz Pomiar jednostek
linktitle: Przelicz Pomiar jednostek
description: "Aspose.Words zamiast Java może pomóc w konwersji między jednostkami pomiarowymi, na przykład, cale do punktów i punktów do cali, piksele do punktów, punkty do pikseli."
type: docs
weight: 20
url: /pl/java/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

Większość właściwości obiektu dostarczonych w Aspose.Words API które reprezentują pewne pomiary, takie jak szerokość lub wysokość, marginesy i różne odległości, akceptują wartości w punktach, gdzie 1 cal równa się 72 punkty. Czasami nie jest to wygodne i punkty należy przeliczyć na inne jednostki.

Aspose.Words zapewnia [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) klasa zapewniająca funkcje pomocnicze do konwersji między różnymi jednostkami pomiarowymi. Umożliwia konwersję cali, pikseli i milimetrów do punktów, punktów do cali i pikseli oraz konwersję pikseli z jednej rozdzielczości do drugiej. Konwersja pikseli na punkty i odwrotnie może być wykonywana przy 96 dpi (kropki na cal) rozdzielczości lub określonej rozdzielczości dpi.

W **ConvertUtil** klasa jest szczególnie przydatna przy ustawianiu różnych właściwości strony, ponieważ, na przykład, cale są bardziej powszechne jednostek pomiarowych niż punkty.

Poniższy przykład kodu pokazuje jak określić właściwości strony w calach:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
