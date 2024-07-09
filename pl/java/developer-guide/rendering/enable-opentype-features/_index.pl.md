---
title: Włącz funkcje OpenType w Java
second_title: Aspose.Words zamiast Java
articleTitle: Włącz funkcje OpenType
linktitle: Włącz funkcje OpenType
description: "Zaawansowane funkcje typograficzne w Aspose.Words zamiast Java."
type: docs
weight: 25
url: /pl/java/enable-opentype-features/
---



OpenType jest format czcionki, wprowadzony w celu zapewnienia lepszego wsparcia dla języków międzynarodowych i systemów pisania w porównaniu do PostScript i TrueType. Cechy układu OpenType są powszechnie znane jako funkcje OpenType. Aspose.Words- Kształt.HarfBuzz pakiet zapewnia obsługę funkcji OpenType w Aspose.Words stosowania `HarfBuzz` silnik do kształtowania tekstu.

Aspose.Words jest zdolny do korzystania z zewnętrznych obiektów cieniowania tekstu. Shaper tekstowy reprezentuje czcionkę i oblicza informacje kształtujące tekst. Dokument zazwyczaj odnosi się do wielu czcionek, więc konieczne jest shaper tekstowy fabryki. Ten pakiet zawiera implementację fabryki Shaper tekstu wykorzystywane przez Aspose.Words.Layout.LayoutOptions.TextShaperFactory nieruchomości.

{{% alert color="primary" %}}

Kształtowanie tekstu jest wykonywane tylko przy eksporcie do PDF lub XPS formaty.

{{% /alert %}}

W typowej aplikacji pojedyncza instancja fabryki shapera tekstu jest dzielona między wszystkie instancje dokumentów. Zawsze, gdy jest tworzony plik czcionek. Parowanie pliku czcionki jest kosztowną operacją, dlatego zaleca się buforowanie. Aspose.Words narzędzia BasicTextShaper Klasy cache, które owija wprawianie w ruch fabryki cieniowania tekstu i buforuje przypadki wycieniowania tekstu zwracane przez opakowaną fabrykę.

Poniższy przykład kodu pokazuje jak włączyć obsługę funkcji OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
