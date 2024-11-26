---
title: Praca z kształtami w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Praca z kształtami
linktitle: Praca z kształtami
description: "Twórz i zarządzaj kształtami i obiektami w dokumencie za pomocą Python."
type: docs
weight: 280
url: /pl/python-net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

W tym temacie omówiono sposób programowej pracy z kształtami przy użyciu formatu Aspose.Words.

Kształty w formacie Aspose.Words reprezentują obiekt w warstwie rysunku, taki jak Autokształt, pole tekstowe, dowolny kształt, obiekt OLE, formant ActiveX lub obraz. Dokument programu Word może zawierać jeden lub więcej różnych kształtów. Kształty dokumentu są reprezentowane przez klasę [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Wstawianie kształtów za pomocą narzędzia Document Builder

Za pomocą metody [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) możesz wstawić do dokumentu kształt osadzony o określonym typie i rozmiarze oraz kształt swobodny o określonej pozycji, rozmiarze i typie zawijania tekstu. Metoda [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) umożliwia wstawienie kształtu DML do modelu dokumentu. Dokument musi zostać zapisany w formacie obsługującym kształty DML, w przeciwnym razie podczas zapisywania dokumentu takie węzły zostaną skonwertowane do kształtu VML.

Poniższy przykład kodu pokazuje, jak wstawić tego typu kształty do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Ustaw współczynnik proporcji zablokowany

Używając Aspose.Words, możesz określić, czy proporcje kształtu mają być blokowane poprzez właściwość [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/).

Poniższy przykład kodu pokazuje, jak pracować z właściwością **AspectRatioLocked**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Ustaw układ kształtu w komórce

Możesz także określić, czy kształt ma być wyświetlany wewnątrz tabeli, czy poza nią, za pomocą właściwości [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/).

Poniższy przykład kodu pokazuje, jak pracować z właściwością **IsLayoutInCell**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Utwórz prostokąt z narożnika Snip

Za pomocą Aspose.Words możesz utworzyć prostokąt z wyciętym narożnikiem. Typy kształtów to [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded) i [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

Dla tych typów kształtów kształt DML jest tworzony metodą [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/). Tych typów nie można używać do tworzenia kształtów VML. Próba utworzenia kształtu przy użyciu konstruktora publicznego klasy [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) wywołuje wyjątek "NotSupportedException".

Poniższy przykład kodu pokazuje, jak wstawić tego typu kształty do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Zdobądź rzeczywiste punkty granic kształtu

Używając Aspose.Words API, możesz uzyskać lokalizację i rozmiar kształtu zawierającego blok w punktach, w stosunku do kotwicy najwyższego kształtu. Aby to zrobić, użyj właściwości [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/).

Poniższy przykład kodu pokazuje, jak pracować z właściwością **BoundsInPoints**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Określ zaczepienie pionowe

Wyrównanie tekstu w pionie w kształcie można określić za pomocą właściwości [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/).

Poniższy przykład kodu pokazuje, jak pracować z właściwością **VerticalAnchor**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Wykryj kształt grafiki SmartArt

Aspose.Words pozwala również wykryć, czy kształt ma obiekt `SmartArt`. Aby to zrobić, użyj właściwości [has_smart_art właściwość](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/).

Poniższy przykład kodu pokazuje, jak pracować z właściwością **HasSmartArt**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Wstaw linię poziomą do dokumentu

Możesz wstawić kształt linii poziomej do dokumentu za pomocą metody [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/).

Poniższy przykład kodu pokazuje, jak to zrobić:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API udostępnia właściwość [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) umożliwiającą dostęp do właściwości kształtu linii poziomej. Klasa [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) udostępnia podstawowe właściwości, takie jak [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) itp., służące do formatowania linii poziomej.

Poniższy przykład kodu demonstruje, jak ustawić [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Wstaw obiekt OLE jako ikonę

Aspose.Words API udostępnia funkcję **Kształt.insert_ole_object_as_icon** umożliwiającą wstawienie osadzonego lub połączonego obiektu OLE jako ikony do dokumentu. Ta funkcja umożliwia określenie pliku ikony i podpisu. Typ obiektu `OLE` należy wykryć na podstawie rozszerzenia pliku.

Poniższy przykład kodu demonstruje, jak ustawić wstawianie obiektu OLE jako ikony w dokumencie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Aby ikona wyświetlała się prawidłowo, maksymalny rozmiar ikony musi wynosić 32x32.

{{% /alert %}}

## Importuj kształty z matematycznym XMLem jako kształty do DOM

Możesz użyć właściwości [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/), aby przekonwertować kształty za pomocą EquationXML na obiekty Office Math. Domyślna wartość tej właściwości odpowiada zachowaniu MS Word, tj. kształty z równaniami XML nie są konwertowane na obiekty matematyczne pakietu Office.

Poniższy przykład kodu pokazuje, jak konwertować kształty na obiekty pakietu Office Math:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
