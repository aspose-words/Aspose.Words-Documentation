---
title: Práce s tvary v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Práce se tvary
linktitle: Práce se tvary
description: "Vytvořit a spravovat tvary, ole objekty v dokumentu pomocí Python."
type: docs
weight: 280
url: /cs/python-net/working-with-shapes/
---

Toto téma pojednává o tom, jak pracovat programově s tvary pomocí Aspose.Words.

Tvary v Aspose.Words představuje objekt v kresbové vrstvě, jako je AutoShape, textbox, freeform, OLE objekt, ActiveX ovládání, nebo obraz. Dokument Word může obsahovat jeden nebo více různých tvarů. Tvary dokumentu jsou zastoupeny [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) třída.

## Vkládání tvarů pomocí tvůrce dokumentů

Do dokumentu můžete vložit inline tvar se zadaným typem a velikostí a volně plovoucím tvarem se zadanou polohou, velikostí a textovým zábalem. [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) metoda. • [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) metoda umožňuje vložení tvaru DML do modelu dokumentu. Dokument musí být uložen ve formátu, který podporuje tvary DML, jinak budou tyto uzly převedeny do tvaru VML, zatímco uložení dokumentů.

Následující příklad kódu ukazuje, jak vložit tyto typy tvarů do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Nastavit poměr Aspect Locked

Použití Aspose.Words, můžete určit, zda je poměr stran tvaru a stran uzamčen [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) majetek.

Následující příklad kódu ukazuje, jak pracovat s **AspectRatioLocked** vlastnost:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Nastavit tvar rozložení v buňce

Můžete také určit, zda je tvar zobrazen uvnitř tabulky nebo mimo ní pomocí [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) majetek.

Následující příklad kódu ukazuje, jak pracovat s **IsLayoutInCell** vlastnost:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Vytvořit Snip Corner Rectangle

Můžete vytvořit střih rohový obdélník pomocí Aspose.Words. Typy tvarů jsou [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded), a [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

Tvar DML je vytvořen pomocí [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) metoda s těmito typy tvarů. Tyto typy nelze použít k vytvoření tvarů VML. Pokuste se vytvořit tvar pomocí veřejného stavitele [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) třída zvyšuje výjimku "NotSupportedException."

Následující příklad kódu ukazuje, jak vložit tento typ tvarů do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Získat aktuální tvar Hranice bodů

Použití Aspose.Words API, můžete získat umístění a velikost tvaru obsahující blok v bodech, vzhledem k kotvě nejvyššího tvaru. K tomu použijte [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/) majetek.

Následující příklad kódu ukazuje, jak pracovat s **BoundsInPoints** vlastnost:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Upřesnit vertikální kotvu

Můžete zadat text vertikální zarovnání ve tvaru pomocí [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/) majetek.

Následující příklad kódu ukazuje, jak pracovat s **VerticalAnchor** vlastnost:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Detekovat chytré Tvar umění

Aspose.Words také umožňuje zjistit, zda má tvar `SmartArt` objekt. K tomu použijte [má_smart_art vlastnost](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/) majetek.

Následující příklad kódu ukazuje, jak pracovat s **HasSmartArt** vlastnost:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Vložit vodorovně Článek do dokumentu

Můžete vložit vodorovný tvar pravidla do dokumentu pomocí [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) metoda.

Následující příklad kódu ukazuje, jak to udělat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API poskytuje [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) vlastnost přístupu k vlastnostem vodorovného tvaru pravidla. • [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) třída odhaluje základní vlastnosti jako [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) atd. pro formátování horizontálního pravidla.

Následující příklad kódu ukazuje, jak nastavit [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Vložit OLE Objekt jako ikona

Aspose.Words API poskytuje **Shape. insert_ole_objekt_as_icon** funkce vložení vloženého nebo připojeného OLE objektu jako ikony do dokumentu. Tato funkce umožňuje určit ikonový soubor a popisek. • `OLE` typ objektu se zjistí pomocí přípony souboru.

Následující příklad kódu ukazuje, jak nastavit vložení OLE objektu jako ikony do dokumentu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Maximální velikost ikony musí být 32x32 pro správný displej.

{{% /alert %}}

## Importuje tvary s matematickým XML jako tvary do DOM

Můžete použít [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) vlastnost převést tvary s RovniceXML na Office Math objekty. Výchozí hodnota této vlastnosti odpovídá chování MS Word, tj. tvary s rovnicí XML nejsou převedeny na objekty Office Math.

Následující příklad kódu ukazuje, jak převést tvary na Office Math objekty:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
