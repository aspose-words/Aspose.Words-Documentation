---
title: Jak utworzyć kod kreskowy
second_title: Aspose.Words dla .NET
articleTitle: Wygeneruj niestandardowy obraz kodu kreskowego
linktitle: Wygeneruj niestandardowy obraz kodu kreskowego
description: "Przykład generowania kształtu kodu kreskowego przy użyciu C#."
type: docs
weight: 350
url: /pl/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words posiada interfejs do generowania niestandardowych kodów kreskowych, co sprawia, że bardzo łatwo jest używać razem Aspose.Words i [Aspose.BarCode](https://products.aspose.com/barcode/net/) do renderowania obrazów kodów kreskowych w dokumentach wyjściowych. Na przykład możesz załadować dokument DOC, OOXML lub RTF zawierający pole `DISPLAYBARCODE` do Aspose.Words, zapewnić implementację niestandardowego generatora kodów kreskowych i zapisać w ustalonych formatach strony, takich jak PDF, XPS itp.

Typowe pole `DISPLAYBARCODE` ma następującą składnię:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

Poniżej znajduje się przykładowy generator kodu wykorzystujący `Aspose.BarCode` API. Ten przykład pokazuje, jak wstawić obrazy kodów kreskowych w pozycji pola `DISPLAYBARCODE` w dokumencie programu Word przy użyciu formatów Aspose.Words i `Aspose.BarCode` API:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
