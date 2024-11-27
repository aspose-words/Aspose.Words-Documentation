---
title: Praca z kształtami w C++
second_title: Aspose.Words dla C++
articleTitle: Praca z kształtami
linktitle: Praca z kształtami
type: docs
description: "Wprowadzenie do shape markup language, tworzenie kształtów różnych typów za pomocą C++."
weight: 280
url: /pl/cpp/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

W tym temacie omówiono programową pracę z kształtami przy użyciu Aspose.Words.

Kształty w Aspose.Words reprezentują obiekt w warstwie rysunku, taki jak AutoShape, pole tekstowe, dowolny kształt, OLE obiekt, formant ActiveX lub obraz. Dokument Word może zawierać jeden lub więcej różnych kształtów. Kształty dokumentu są reprezentowane przez klasę [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## Wstaw Kształt Za Pomocą Narzędzia Do Tworzenia Dokumentów

Możesz wstawić kształt inline z określonym typem i rozmiarem oraz swobodnie pływający kształt z określoną pozycją, rozmiarem i typem zawijania tekstu do dokumentu przy użyciu metody [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). Metoda **InsertShape** umożliwia wstawienie kształtu DML do modelu dokumentu. Dokument musi być zapisany w formacie, który obsługuje kształty DML, w przeciwnym razie takie węzły zostaną przekonwertowane na kształt VML podczas zapisywania dokumentu.

Poniższy przykład kodu pokazuje, jak wstawić te typy kształtów do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Ustaw Współczynnik Proporcji Zablokowany

Za pomocą Aspose.Words można określić, czy współczynnik kształtu jest zablokowany przez właściwość [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

Poniższy przykład kodu pokazuje, jak pracować z właściwością **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Ustaw Układ Kształtu W Komórce

Możesz także określić, czy kształt jest wyświetlany wewnątrz tabeli, czy poza nią, używając właściwości [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

Poniższy przykład kodu pokazuje, jak pracować z właściwością **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Utwórz Prostokąt Narożny Snip

Możesz utworzyć prostokąt narożny snip za pomocą Aspose.Words. Typy kształtów to *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* i *DiagonalCornersRounded.*

Kształt DML jest tworzony przy użyciu metody **InsertShape** z tymi typami kształtów. Tych typów nie można używać do tworzenia kształtów VML. Próba utworzenia kształtu przy użyciu publicznego konstruktora klasy " Shape "podnosi wyjątek" NotSupportedException".

Poniższy przykład kodu pokazuje, jak wstawić tego typu kształty do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Uzyskaj Rzeczywiste Punkty Granic Kształtu

Używając Aspose.Words API, możesz uzyskać lokalizację i rozmiar kształtu zawierającego blok w punktach, w stosunku do kotwicy najwyższego kształtu. Aby to zrobić, użyj właściwości [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

Poniższy przykład kodu pokazuje, jak pracować z właściwością **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Format Reguły Poziomej

Aspose.Words API zapewnia Właściwość [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) umożliwiającą dostęp do właściwości kształtu reguły poziomej. Klasa **HorizontalRuleFormat** ujawnia podstawowe właściwości, takie jak wysokość, kolor, odcień itp. do formatowania reguły poziomej.

Poniższy przykład kodu pokazuje, jak ustawić **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Wstaw obiekt OLE jako ikonę

Aspose.Words API zapewnia **Shape** → **InsertOleObjectAsIcon** funkcję wstawiania osadzonego lub połączonego obiektu OLE jako ikony do dokumentu. Ta funkcja umożliwia określenie pliku ikony i podpisu. Typ obiektu `OLE` jest wykrywany przy użyciu rozszerzenia pliku.

Poniższy przykład kodu pokazuje, jak ustawić obiekt insert OLE jako ikonę w dokumencie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

Maksymalny rozmiar ikony musi wynosić 32x32 dla prawidłowego wyświetlania.

{{% /alert %}}
