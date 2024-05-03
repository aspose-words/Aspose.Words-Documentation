---
title: Azjatycka typografia w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z azjatycką typografią
linktitle: Praca z azjatycką typografią
description: "Praca z azjatycką typografią Java. Dostosuj przestrzeń między tekstem azjatyckim i łacińskim w Java."
type: docs
weight: 240
url: /pl/java/working-with-asian-typography/
---

Azjatycka typografia jest zbiorem opcji dla akapitów tekstowych w dokumentach napisanych w językach azjatyckich.

Aspose.Words wspiera azjatycką typografię za pomocą [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) klasy i niektórych jej właściwości.

## Automatycznie dostosowuj przestrzeń pomiędzy azjatyckim i łacińskim tekstem lub numerami

Jeśli projektujesz szablon zarówno z azjatyckim, jak i łacińskim tekstem i chcesz poprawić wygląd szablonu formularza poprzez kontrolowanie spacji pomiędzy dwoma typami tekstu, możesz skonfigurować szablon formularza, aby automatycznie dostosować spacje pomiędzy tymi dwoma typami tekstu. Aby to osiągnąć, można użyć [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) oraz [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) właściwości `ParagraphFormat` Klasa.

Poniższy przykład kodu pokazuje jak używać **AddSpaceBetweenFarEastAndAlpha** oraz **AddSpaceBetweenFarEastAndDigit** właściwości:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Ustaw opcje przerwania linii

Azjatycka zakładka typograficzna okna dialogowego właściwości paragrafów w Microsoft Word ma grupę przerw w linii. Opcje tej grupy można ustawić za pomocą [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) właściwości **ParagraphFormat** Klasa.

Poniższy przykład kodu pokazuje jak używać tych właściwości:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Zmień Azjatyckie odstępy i indeksy

Poniższy przykład kodu pokazuje, jak zmienić odstępy między akapitami azjatyckimi i tiret:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}