---
title: Práce s tvary v C++
second_title: Aspose.Words pro C++
articleTitle: Práce s tvary
linktitle: Práce s tvary
type: docs
description: "Úvod do značkovacího jazyka tvarů, vytváření tvarů různých typů pomocí C++."
weight: 280
url: /cs/cpp/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Toto téma pojednává o tom, jak programově pracovat s tvary pomocí Aspose.Words.

Tvary v Aspose.Words představují objekt ve vrstvě výkresu, například AutoShape, textové pole, volný tvar, OLE objekt, ovládací prvek ActiveX nebo obrázek. Word dokument může obsahovat jeden nebo více různých tvarů. Tvary dokumentu jsou reprezentovány třídou [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## Vložení Tvaru Pomocí Nástroje Pro Tvorbu Dokumentů

Vložený obrazec se zadaným typem a velikostí a volně plovoucí obrazec se zadanou pozicí, velikostí a typem zalamování textu můžete do dokumentu vložit metodou [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). Metoda **InsertShape** umožňuje vložení tvaru DML do modelu dokumentu. Dokument musí být uložen ve formátu, který podporuje tvary DML, jinak budou tyto uzly převedeny na tvar VML při ukládání dokumentu.

Následující příklad kódu ukazuje, jak vložit tyto typy tvarů do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Nastavit Poměr Stran Uzamčen

Pomocí Aspose.Words můžete určit, zda je poměr stran obrazce uzamčen pomocí vlastnosti [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

Následující příklad kódu ukazuje, jak pracovat s vlastností **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Nastavit Rozložení Tvaru V Buňce

Pomocí vlastnosti [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/) můžete také určit, zda se obrazec zobrazuje uvnitř tabulky nebo mimo ni.

Následující příklad kódu ukazuje, jak pracovat s vlastností **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Vytvořit Snip Rohový Obdélník

Rohový obdélník můžete vytvořit pomocí Aspose.Words. Typy tvarů jsou *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* a *DiagonalCornersRounded.*

Tvar DML je vytvořen pomocí metody **InsertShape** s těmito typy tvarů. Tyto typy nelze použít k vytvoření tvarů VML. Pokus o vytvoření obrazce pomocí veřejného konstruktoru třídy " tvar "vyvolá výjimku" NotSupportedException".

Následující příklad kódu ukazuje, jak vložit tyto typy obrazců do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Získat Aktuální Tvar Hranice Body

Pomocí Aspose.Words API můžete získat umístění a velikost tvaru obsahujícího blok v bodech vzhledem ke kotvě Nejvyššího tvaru. Chcete-li to provést, použijte vlastnost [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

Následující příklad kódu ukazuje, jak pracovat s vlastností **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Formát Horizontálního Pravidla

Aspose.Words API poskytuje vlastnost [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) pro přístup k vlastnostem tvaru horizontálního pravidla. Třída **HorizontalRuleFormat** odhaluje základní vlastnosti, jako je výška, barva, odstín atd. pro formátování horizontálního pravidla.

Následující příklad kódu ukazuje, jak nastavit **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Vložit OLE objekt jako ikonu

Aspose.Words API poskytuje funkci **Shape** → **InsertOleObjectAsIcon** pro vložení vloženého nebo propojeného objektu OLE jako ikony do dokumentu. Tato funkce umožňuje zadat soubor ikon a titulek. Typ objektu `OLE` se zjišťuje pomocí přípony souboru.

Následující příklad kódu ukazuje, jak nastavit vložit OLE objekt jako ikonu do dokumentu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

Maximální velikost ikony musí být 32x32 pro správné zobrazení.

{{% /alert %}}
