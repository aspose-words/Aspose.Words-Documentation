---
title: Praca ze znakiem wodnym w C++
second_title: Aspose.Words dla C++
articleTitle: Praca ze znakiem wodnym
linktitle: Praca ze znakiem wodnym
type: docs
description: "Manipulacja znakiem wodnym dokumentu przy użyciu C++."
weight: 340
url: /pl/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

W tym temacie omówiono programową pracę ze znakiem wodnym przy użyciu Aspose.Words. Znak wodny to obraz tła wyświetlany za tekstem w dokumencie. Znak wodny może zawierać tekst lub obraz reprezentowany przez klasę [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## Dodawanie znaku wodnego do dokumentu

W Microsoft Word Znak wodny można łatwo wstawić do dokumentu za pomocą polecenia Wstaw Znak wodny. Aspose.Words zapewnia klasę [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) do dodawania lub usuwania znaku wodnego w dokumentach. Aspose.Words zapewnia wyliczenie [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)definiujące trzy możliwe typy znaków wodnych (tekst, obraz i brak) do pracy.

### Dodaj Tekstowy Znak Wodny

Poniższy przykład kodu pokazuje, jak wstawić tekstowy znak wodny do dokumentu, definiując [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) przy użyciu metody [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Dodaj Znak Wodny Obrazu

Poniższy przykład kodu pokazuje, jak wstawić znak wodny obrazu do dokumentu, definiując [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) przy użyciu metody [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

Znak wodny można również wstawić za pomocą klasy kształtu. Bardzo łatwo jest wstawić dowolny kształt lub obraz do nagłówka lub stopki, a tym samym utworzyć znak wodny dowolnego możliwego typu. Poniższy przykład kodu wstawia znak wodny do dokumentu Word.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Usuń znak wodny z dokumentu

Klasa [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) zapewnia metodę usuwania, aby usunąć znak wodny z dokumentu.

Poniższy przykład kodu pokazuje, jak usunąć znak wodny z dokumentów:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Jeśli znaki wodne są dodawane za pomocą obiektu klasy [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), aby usunąć znak wodny z dokumentu, musisz ustawić tylko nazwę kształtu znaku wodnego podczas wstawiania, a następnie usunąć kształt znaku wodnego za pomocą przypisanej nazwy.

Poniższy przykład kodu pokazuje, jak ustawić nazwę kształtu znaku wodnego i usunąć go z dokumentu:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Dodaj znak wodny w komórce tabeli

Czasami musisz wstawić znak wodny / obraz do komórki tabeli i wyświetlić go poza tabelą, możesz użyć właściwości [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/). Ta Właściwość pobiera lub ustawia flagę wskazującą, czy kształt jest wyświetlany wewnątrz tabeli, czy poza nią. Zauważ, że ta właściwość działa tylko wtedy, gdy zoptymalizujesz dokument dla Microsoft Word 2010 przy użyciu metody [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

Poniższy przykład kodu pokazuje, jak korzystać z tej właściwości:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
