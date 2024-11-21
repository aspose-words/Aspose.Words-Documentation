---
title: Práce s tvary v Java
second_title: Aspose.Words místo Java
articleTitle: Práce s tvary
linktitle: Práce s tvary
type: docs
description: "Úvod do tvaru značkovacího jazyka, vytváření tvarů různých typů pomocí Java."
weight: 280
url: /cs/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Toto téma pojednává o tom, jak pracovat programově s tvary pomocí Aspose.Words.

Tvary v Aspose.Words představuje objekt v kresbové vrstvě, jako je AutoShape, textbox, freeform, OLE objekt, ActiveX ovládání, nebo obraz. Dokument Word může obsahovat jeden nebo více různých tvarů. Tvary dokumentu jsou zastoupeny [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) třída.

## Vložit tvar pomocí tvůrce dokumentů

Můžete vložit inline tvar se zadaným typem a velikostí a volně plovoucím tvarem s zadanou polohou, velikostí a textovým zábalem do dokumentu pomocí [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) metoda. The **InsertShape** metoda umožňuje vložení tvaru DML do modelu dokumentu. Dokument musí být uložen ve formátu, který podporuje tvary DML, jinak tyto uzly budou převedeny do tvaru VML, zatímco ukládání dokumentů.

Následující příklad kódu ukazuje, jak vložit tyto typy tvarů do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Nastavit poměr Aspect Locked

Použití Aspose.Words, můžete určit, zda je poměr stran tvaru a stran uzamčen přes [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) majetek.

Následující příklad kódu ukazuje, jak pracovat s **AspectRatioLocked** vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Nastavit tvar uspořádání v buňce

Můžete také určit, zda je tvar zobrazen uvnitř tabulky nebo mimo ní pomocí [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) majetek.

Následující příklad kódu ukazuje, jak pracovat s **IsLayoutInCell** vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Přidat rohy odstřižené

Můžete vytvořit střih rohový obdélník pomocí Aspose.Words. Typy tvarů jsou *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* and *DiagonalCornersRounded.*

Tvar DML je vytvořen pomocí **InsertShape** metoda s těmito typy tvarů. Tyto typy nelze použít k vytvoření tvarů VML. Pokus o vytvoření tvaru pomocí veřejného konstruktéra třídy "Tvar" zvyšuje výjimku "NotSupportedException."

Následující příklad kódu ukazuje, jak vložit tento typ tvarů do dokumentu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Získejte aktuální body tvarů

Použití Aspose.Words API, můžete získat umístění a velikost tvaru obsahující blok v bodech, vzhledem k kotvě nejvyššího tvaru. K tomu použijte [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) majetek.

Následující příklad kódu ukazuje, jak pracovat s **BoundsInPoints** vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Zadejte vertikální kotvu

Můžete zadat text vertikální zarovnání ve tvaru pomocí [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) majetek.

Následující příklad kódu ukazuje, jak pracovat s **VerticalAnchor** vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Detekovat chytré Tvar umění

Aspose.Words také umožňuje zjistit, zda má tvar `SmartArt` objekt. K tomu použijte [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) majetek.

Následující příklad kódu ukazuje, jak pracovat s **HasSmartArt** vlastnost:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Formát horizontálního pravidla

Můžete vložit horizontální tvar pravidla do dokumentu pomocí [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) metoda.

Aspose.Words API poskytuje [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) vlastnost pro přístup k vlastnostem vodorovného tvaru pravidla. The [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) třída odhaluje základní vlastnosti jako Height, Color, NoShade atd. pro formátování horizontálního pravidla.

Následující příklad kódu ukazuje, jak nastavit **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
