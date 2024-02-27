---
title: Praca ze znakiem wodnym w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca ze znakiem wodnym
linktitle: Praca ze znakiem wodnym
description: "Twórz i zarządzaj znakami wodnymi w dokumencie za pomocą Python."
type: docs
weight: 340
url: /pl/python-net/working-with-watermark/
---

W tym temacie omówiono sposób programowej pracy ze znakiem wodnym przy użyciu formatu Aspose.Words. Znak wodny to obraz tła wyświetlany za tekstem w dokumencie. Znak wodny może zawierać tekst lub obraz reprezentowany przez klasę [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Spróbuj online**

Możesz wypróbować tę funkcjonalność w naszym [Bezpłatny znak wodny dokumentu online](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Jak dodać znak wodny do dokumentu

W Microsoft Word znak wodny można łatwo wstawić do dokumentu za pomocą polecenia Wstaw znak wodny. Aspose.Words udostępnia klasę [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) do dodawania lub usuwania znaku wodnego w dokumentach. Aspose.Words udostępnia wyliczenie [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) definiujące trzy możliwe typy znaków wodnych ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image) i [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)), z którymi można pracować

### Dodaj tekstowy znak wodny

Poniższy przykład kodu demonstruje, jak wstawić tekstowy znak wodny do dokumentu, definiując [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) przy użyciu metody [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Dodaj znak wodny obrazu

Poniższy przykład kodu demonstruje, jak wstawić obrazowy znak wodny do dokumentu, definiując [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) przy użyciu metody [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

Znak wodny można również wstawić za pomocą klasy kształtu. Bardzo łatwo jest wstawić dowolny kształt lub obraz do nagłówka lub stopki i w ten sposób utworzyć znak wodny dowolnego możliwego typu.

Poniższy przykład kodu wstawia znak wodny do dokumentu programu Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Tutaj](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}


## Usuń znak wodny z dokumentu

Klasa [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) udostępnia metodę usuwania służącą do usuwania znaku wodnego z dokumentu.

Poniższy przykład kodu pokazuje, jak usunąć znak wodny z dokumentów:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Jeżeli znaki wodne dodawane są przy pomocy obiektu klasy [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) to aby usunąć znak wodny z dokumentu należy podczas wstawiania ustawić jedynie nazwę kształtu znaku wodnego i następnie usunąć kształt znaku wodnego o przypisaną nazwę.

Poniższy przykład kodu pokazuje, jak ustawić nazwę kształtu znaku wodnego i usunąć go z dokumentu:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Dodaj znak wodny w komórce tabeli

Czasami trzeba wstawić znak wodny/obrazek do komórki tabeli i wyświetlić go poza tabelą, można użyć właściwości [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/). Ta właściwość pobiera lub ustawia flagę wskazującą, czy kształt jest wyświetlany wewnątrz tabeli, czy poza nią. Należy pamiętać, że ta właściwość działa tylko w przypadku optymalizacji dokumentu dla formatu Microsoft Word 2010 przy użyciu metody [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/).

Poniższy przykład kodu pokazuje, jak używać tej właściwości:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
