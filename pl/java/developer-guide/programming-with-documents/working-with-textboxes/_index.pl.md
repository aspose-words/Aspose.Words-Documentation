---
title: Praca z Połączone TextBoxes w Java
second_title: Aspose.Words zamiast Java
articleTitle: Praca z powiązanymi textBoxes
linktitle: Praca z powiązanymi textBoxes
description: "Wprowadzenie do funkcji połączonych skrzynek tekstowych w Aspose.Words zamiast Java."
type: docs
weight: 250
url: /pl/java/working-with-linked-textboxes/
---

W Aspose.Words, do [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) klasa służy do określenia, w jaki sposób tekst jest wyświetlany wewnątrz kształtu. Zapewnia on własność publiczną o nazwie Rodzic, aby uzyskać kształt rodzica dla pola tekstowego, aby umożliwić klientowi znaleźć powiązane [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) od powiązanego **TextBox**.

## Utwórz odnośnik

W **TextBox** klasa zapewnia [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) metody w celu sprawdzenia, czy **TextBox** można powiązać z celem **Textbox**.

Poniższy przykład kodu pokazuje, jak sprawdzić, czy `TextBox` może być połączony z docelowym textbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Zaznacz tekst Sekwencja pola

Istnieje kilka sposobów wyświetlania tekstu w formie. W [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) może być Głową, Środkiem lub Ogonem sekwencji.

Poniższy przykład kodu pokazuje jak sprawdzić, czy **TextBox** jest głową, ogonem lub środkiem sekwencji:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Przerwij połączenie

Korzystanie z [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) metoda można przerwać link do następnego **TextBox**.

Poniższy przykład kodu pokazuje jak złamać link dla **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
