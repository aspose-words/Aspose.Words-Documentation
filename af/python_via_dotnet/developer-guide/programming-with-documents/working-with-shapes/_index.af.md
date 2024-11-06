---
title: Werk Met Vorms in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Werk Met Vorms
linktitle: Werk Met Vorms
description: "Skep en bestuur vorms, ole voorwerpe in'n dokument met behulp van Python."
type: docs
weight: 280
url: /af/python-net/working-with-shapes/
---

Hierdie onderwerp bespreek hoe om programmaties te werk met vorms met behulp van Aspose.Words.

Die vorms in Aspose.Words verteenwoordig'n voorwerp in die tekeninglaag, soos'n AutoShape, teksboks, vrye vorm, OLE voorwerp, ActiveX beheer, of prentjie. 'n Word-dokument kan een of meer verskillende vorms bevat. Vorms van die dokument word verteenwoordig deur die [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) klas.

## Voeg Vorms In Met Behulp Van Dokumentbouer

Jy kan inlyn vorm met gespesifiseerde tipe en grootte en vry-swewende vorm met die gespesifiseerde posisie, grootte en teks wrap tipe in'n dokument met behulp van [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) metode. Die [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) metode laat toe om DML vorm in die dokument model in te voeg. Die dokument moet gestoor word in die formaat, wat DML vorms ondersteun, anders sal sulke nodusse omgeskakel word na VML vorm, terwyl dokument stoor.

Die volgende kode voorbeeld toon hoe om hierdie tipe vorms in die dokument in te voeg:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Stel Aspekverhouding Gesluit

Met behulp van Aspose.Words kan jy spesifiseer of die vorm se aspekverhouding deur die [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) eienskap gesluit is.

Die volgende kode voorbeeld toon hoe om te werk met die **AspectRatioLocked** eiendom:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Stel Vorm Uitleg In Sel

Jy kan ook spesifiseer of die vorm binne'n tabel of buite dit vertoon word deur die [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) eienskap te gebruik.

Die volgende kode voorbeeld toon hoe om te werk met die **IsLayoutInCell** eiendom:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Skep Snip Hoek Reghoek

Jy kan'n snip hoek reghoek te skep met behulp van Aspose.Words. Die vorm tipes is [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded), en [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

Die DML vorm word geskep met behulp van [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) metode met hierdie vorm tipes. Hierdie tipes kan nie gebruik word om VML vorms te skep nie. Probeer om vorm te skep deur die openbare konstruktor van die [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) klas te gebruik, verhoog die "NotSupportedException" uitsondering.

Die volgende kode voorbeeld toon hoe om hierdie tipe vorms in die dokument in te voeg:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Kry Werklike Vormgrenspunte

Met behulp van Aspose.Words API kan jy die ligging en grootte van die vorm wat blok in punte bevat, relatief tot die anker van die boonste vorm kry. Om dit te doen, gebruik die [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/) eienskap.

Die volgende kode voorbeeld toon hoe om te werk met die **BoundsInPoints** eiendom:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Spesifiseer Vertikale Anker

U kan die teks vertikale belyning binne'n vorm spesifiseer deur die [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/) eienskap te gebruik.

Die volgende kode voorbeeld toon hoe om te werk met die **VerticalAnchor** eiendom:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Ontdek SmartArt Vorm

Aspose.Words laat ook toe om te ontdek of die Vorm'n `SmartArt` voorwerp het. Om dit te doen, gebruik die [has_smart_art property](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/) eienskap.

Die volgende kode voorbeeld toon hoe om te werk met die **HasSmartArt** eiendom:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Voeg Horisontale Reël in Dokument in

Jy kan horisontale reëlvorm in'n dokument invoeg deur die [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) - metode te gebruik.

Die volgende kode voorbeeld toon hoe om dit te doen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API bied die [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) eienskap om toegang te verkry tot die eienskappe van die horisontale reëlvorm. Die [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) klas bloot basiese eienskappe soos [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) en so aan. vir die opmaak van'n horisontale reël.

Die volgende kode voorbeeld demonstreer hoe om [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/)stel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Voeg OLE Voorwerp as'n Ikoon in

Aspose.Words API bied **Shape.insert_ole_object_as_icon** funksie om'n ingebedde of gekoppelde OLE voorwerp as'n ikoon in die dokument in te voeg. Hierdie funksie kan die ikoon lêer en die onderskrif spesifiseer. Die `OLE` voorwerp tipe moet opgespoor word met behulp van die lêer uitbreiding.

Die volgende kode voorbeeld demonstreer hoe om te stel insert OLE voorwerp as'n Ikoon in die dokument:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Die maksimum grootte van die ikoon moet 32x32 wees vir die korrekte vertoning.

{{% /alert %}}

## Invoer Vorms met Wiskunde XML As Vorms in DOM

Jy kan [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) eienskap gebruik om die vorms met EquationXML om Te skakel Na Kantoor Wiskunde voorwerpe. Die standaard waarde van hierdie eienskap stem ooreen met MS Woord gedrag d.w. s. vorms met vergelyking XML word nie omgeskakel na Kantoor wiskunde voorwerpe.

Die volgende kode voorbeeld toon hoe om vorms Te Omskep In Kantoor Wiskunde voorwerpe:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
