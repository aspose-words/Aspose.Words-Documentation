---
title: Praca z kształtami w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z kształtami
linktitle: Praca z kształtami
type: docs
description: "Wprowadzenie do kształtowania języka znakowania, tworzenie kształtów różnych typów za pomocą Java."
weight: 280
url: /pl/java/working-with-shapes/
---

Temat ten omawia sposób programowania z wykorzystaniem kształtów Aspose.Words.

Kształty w Aspose.Words reprezentują obiekt w warstwie rysunku, taki jak AutoShape, textbox, freeform, OLE obiekt, ActiveX kontroli lub obrazu. Dokument Word może zawierać jeden lub więcej różnych kształtów. Kształty dokumentu są reprezentowane przez [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Klasa.

## Wstaw kształt przy użyciu buildera dokumentów

Można umieścić kształt inline o określonym typie i rozmiarze oraz swobodnie pływający kształt z określoną pozycją, rozmiar i typ zawijania tekstu do dokumentu za pomocą [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) Metoda. W **InsertShape** metoda umożliwia wprowadzenie kształtu DML do modelu dokumentu. Dokument musi być zapisany w formacie, który obsługuje kształty DML, w przeciwnym razie, takie węzły zostaną przekształcone w kształt VML, podczas zapisywania dokumentów.

Poniższy przykład kodu pokazuje, jak umieścić te typy kształtów w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Ustaw wskaźnik Aspect zablokowany

Stosowanie Aspose.Words, można określić, czy proporcja kształtu jest zablokowana przez [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) nieruchomości.

Poniższy przykład kodu pokazuje jak pracować z **AspectRatioLocked** nieruchomość:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Ustaw układ w komórce

Można również określić, czy kształt jest wyświetlany wewnątrz tabeli lub poza nim za pomocą [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) nieruchomości.

Poniższy przykład kodu pokazuje jak pracować z **IsLayoutInCell** nieruchomość:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Dodaj zakręty wycięte

Możesz utworzyć prostokąt narożny za pomocą Aspose.Words. Typy kształtów są * SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, * i *DiagonalCornersRounded.*

Kształt DML jest tworzony przy użyciu **InsertShape** metoda z tymi typami kształtu. Typy te nie mogą być używane do tworzenia kształtów VML. Próba stworzenia kształtu przy użyciu konstruktora publicznego klasy "Kształt" podnosi wyjątek "NotSupportedException".

Poniższy przykład kodu pokazuje, jak umieścić ten typ kształtów w dokumencie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Pobierz rzeczywiste punkty kształtów bounds

Stosowanie Aspose.Words API, można uzyskać położenie i rozmiar kształtu zawierającego blok w punktach, względem kotwicy najwyższego kształtu. Aby to zrobić, należy użyć [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) nieruchomości.

Poniższy przykład kodu pokazuje jak pracować z **BoundsInPoints** nieruchomość:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Określić kąt pionowy

Możesz określić pionowe ustawienie tekstu w obrębie kształtu za pomocą [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) nieruchomości.

Poniższy przykład kodu pokazuje jak pracować z **VerticalAnchor** nieruchomość:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Wykryj inteligencję Kształt sztuki

Aspose.Words pozwala również na wykrycie, czy kształt ma `SmartArt` obiekt. Aby to zrobić, należy użyć [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) nieruchomości.

Poniższy przykład kodu pokazuje jak pracować z **HasSmartArt** nieruchomość:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Poziomowy format zasady

Można umieścić poziome zasady kształt do dokumentu za pomocą [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) Metoda.

Aspose.Words API zapewnia [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) właściwość dostępu do właściwości poziomego kształtu reguły. W [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) klasa ujawnia podstawowe właściwości, takie jak Wysokość, Kolor, NoShade itp. do formatowania horyzontalnej reguły.

Poniższy przykład kodu pokazuje jak ustawić **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
