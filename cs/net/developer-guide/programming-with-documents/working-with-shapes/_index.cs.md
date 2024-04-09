---
title: Práce s tvary v C#
second_title: Aspose.Words místo .NET
articleTitle: Práce se tvary
linktitle: Práce se tvary
description: "Úvod do tvaru značkovacího jazyka, vytváření tvarů různých typů pomocí C#."
type: docs
weight: 280
url: /cs/net/working-with-shapes/
---

Toto téma pojednává o tom, jak pracovat programově s tvary pomocí Aspose.Words.

Tvary v Aspose.Words představuje objekt v kresbové vrstvě, jako je AutoShape, textbox, freeform, OLE objekt, ActiveX ovládání, nebo obraz. Dokument Word může obsahovat jeden nebo více různých tvarů. Tvary Aspose.Words jsou zastoupeny [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) třída.

## Vkládání tvarů pomocí tvůrce dokumentů

Do dokumentu můžete vložit inline tvar se zadaným typem a velikostí a volně plovoucím tvarem s zadanou polohou, velikostí a textovým zábalem [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/) metoda. • **InsertShape** metoda umožňuje vložení tvaru DML do modelu dokumentu. Dokument musí být uložen ve formátu, který podporuje tvary DML, jinak budou tyto uzly převedeny do tvaru VML, zatímco uložení dokumentů.

Následující příklad kódu ukazuje, jak vložit tyto typy tvarů do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Nastavit poměr Aspect Locked

Použití Aspose.Words, můžete určit, zda je poměr stran tvaru a stran uzamčen [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) majetek.

Následující příklad kódu ukazuje, jak pracovat s **AspectRatioLocked** vlastnost:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Nastavit tvar rozložení v buňce

Můžete také určit, zda je tvar zobrazen uvnitř tabulky nebo mimo ní pomocí [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) majetek.

Následující příklad kódu ukazuje, jak pracovat s **IsLayoutInCell** vlastnost:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Vytvořit Snip Corner Rectangle

Můžete vytvořit střih rohový obdélník pomocí Aspose.Words. Typy tvarů jsou *SingleCornerSnipped, TopCornerSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* a *DiagonalCornersRounded.*

Tvar DML je vytvořen pomocí **InsertShape** metoda s těmito typy tvarů. Tyto typy nelze použít k vytvoření tvarů VML. Pokus o vytvoření tvaru pomocí veřejného konstruktéra třídy "Tvar" zvyšuje výjimku "NotSupportedException."

Následující příklad kódu ukazuje, jak vložit tento typ tvarů do dokumentu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Získat aktuální tvar Hranice bodů

Použití Aspose.Words API, můžete získat umístění a velikost tvaru obsahující blok v bodech, vzhledem k kotvě nejvyššího tvaru. K tomu použijte [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/) majetek.

Následující příklad kódu ukazuje, jak pracovat s **BoundsInPoints** vlastnost:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Upřesnit vertikální kotvu

Můžete zadat text vertikální zarovnání ve tvaru pomocí [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/) majetek.

Následující příklad kódu ukazuje, jak pracovat s **VerticalAnchor** vlastnost:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Detekovat chytré Tvar umění

Aspose.Words také umožňuje zjistit, zda má tvar `SmartArt` objekt. K tomu použijte [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/) majetek.

Následující příklad kódu ukazuje, jak pracovat s **HasSmartArt** vlastnost:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Vložit vodorovně Článek do dokumentu

Můžete vložit vodorovný tvar pravidla do dokumentu pomocí [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/) metoda.

Následující příklad kódu ukazuje, jak to udělat:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API poskytuje [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) vlastnost přístupu k vlastnostem vodorovného tvaru pravidla. • [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) třída odhaluje základní vlastnosti jako Height, Color, NoShade atd. pro formátování horizontálního pravidla.

Následující příklad kódu ukazuje, jak nastavit **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Importuje tvary s matematickým XML jako tvary do DOM

Můžete použít [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) vlastnost převést tvary s RovniceXML na Office Math objekty. Výchozí hodnota této vlastnosti odpovídá Microsoft Word chování, tj. tvary s rovnicí XML se nepřevádějí na objekty Office Math.

Následující příklad kódu ukazuje, jak převést tvary na Office Math objekty:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
