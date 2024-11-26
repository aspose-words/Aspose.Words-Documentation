---
title: Travailler avec des TextBoxes liés dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec TextBoxes lié
linktitle: Travailler avec TextBoxes lié
description: "Introduction à la fonctionnalité de zones de texte liées dans Aspose.Words pour Java."
type: docs
weight: 250
url: /fr/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

Dans Aspose.Words, la classe [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) est utilisée pour spécifier comment un texte est affiché à l'intérieur d'une forme. Il fournit une propriété publique nommée Parent pour obtenir la forme parent de la zone de texte afin de permettre au client de trouver lié [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) à partir de lié **TextBox**.

## Créer Un Lien

La classe **TextBox** fournit la méthode [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) afin de vérifier si le **TextBox** peut être lié à la cible **Textbox**.

L'exemple de code suivant montre comment vérifier si le `TextBox` peut être lié à la zone de texte cible:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Vérifier la séquence TextBox

Il existe plusieurs façons d'afficher du texte dans une forme. Le [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) peut être la tête, le milieu ou la queue d'une séquence.

L'exemple de code suivant montre comment vérifier si **TextBox** est une tête, une queue ou un milieu de la séquence:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Rompre un Lien

En utilisant la méthode [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink), vous pouvez rompre le lien vers le **TextBox** suivant.

L'exemple de code suivant montre comment rompre un lien pour un **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
