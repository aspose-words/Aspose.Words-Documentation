---
title: Praca ze znakiem wodnym w C#
second_title: Aspose.Words dla .NET
articleTitle: Praca ze znakiem wodnym
linktitle: Praca ze znakiem wodnym
description: "Dokumentuj manipulację znakiem wodnym za pomocą C#."
type: docs
weight: 340
url: /pl/net/working-with-watermark/
timestamp: 2024-05-02-11-51-44
---

W tym temacie omówiono sposób programowej pracy ze znakiem wodnym przy użyciu formatu Aspose.Words. Znak wodny to obraz tła wyświetlany za tekstem w dokumencie. Znak wodny może zawierać tekst lub obraz reprezentowany przez klasę [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Spróbuj online**

Możesz wypróbować tę funkcjonalność w naszym [Bezpłatny znak wodny dokumentu online](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Dodaj znak wodny do dokumentu

W Microsoft Word znak wodny można łatwo wstawić do dokumentu za pomocą polecenia Wstaw znak wodny. Aspose.Words udostępnia klasę [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) do dodawania lub usuwania znaku wodnego w dokumentach. Aspose.Words udostępnia [Typ znaku wodnego](https://reference.aspose.com/words/net/aspose.words/watermark/type/)enumeration definiujący trzy możliwe typy znaków wodnych (tekst, obraz i brak), z którymi można pracować

### Dodaj tekstowy znak wodny

Poniższy przykład kodu demonstruje, jak wstawić tekstowy znak wodny do dokumentu, definiując [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) przy użyciu metody [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Dodaj znak wodny obrazu

Poniższy przykład kodu demonstruje, jak wstawić obrazowy znak wodny do dokumentu, definiując [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) przy użyciu metody [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

Znak wodny można również wstawić za pomocą klasy kształtu. Bardzo łatwo jest wstawić dowolny kształt lub obraz do nagłówka lub stopki i w ten sposób utworzyć znak wodny dowolnego możliwego typu.

Poniższy przykład kodu wstawia znak wodny do dokumentu programu Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

Możesz pobrać przykładowy plik tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Usuń znak wodny z dokumentu

Klasa [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) udostępnia metodę usuwania służącą do usuwania znaku wodnego z dokumentu.

Poniższy przykład kodu pokazuje, jak usunąć znak wodny z dokumentów:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Jeżeli znaki wodne dodawane są przy pomocy obiektu klasy [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) to aby usunąć znak wodny z dokumentu należy podczas wstawiania ustawić jedynie nazwę kształtu znaku wodnego i następnie usunąć kształt znaku wodnego o przypisaną nazwę.

Poniższy przykład kodu pokazuje, jak ustawić nazwę kształtu znaku wodnego i usunąć go z dokumentu:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Dodaj znak wodny do komórki tabeli

Czasami trzeba wstawić znak wodny/obrazek do komórki tabeli i wyświetlić go poza tabelą, można użyć właściwości [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/). Ta właściwość pobiera lub ustawia flagę wskazującą, czy kształt jest wyświetlany wewnątrz tabeli, czy poza nią. Należy pamiętać, że ta właściwość działa tylko w przypadku optymalizacji dokumentu dla formatu Microsoft Word 2010 przy użyciu metody [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/).

Poniższy przykład kodu pokazuje, jak używać tej właściwości:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
