---
title: Travailler avec les boîtes de texte liées dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec les boîtes de texte liées
linktitle: Travailler avec les boîtes de texte liées
description: "Introduction à la fonctionnalité des boîtes de texte liées dans Aspose.Words pour Java."
type: docs
weight: 250
url: /fr/java/working-with-linked-textboxes/
---

En Aspose.Words, des [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) classe est utilisé pour spécifier comment un texte est affiché à l'intérieur d'une forme. Il fournit une propriété publique nommée Parent pour obtenir la forme parent pour la boîte de texte pour permettre au client de trouver lié [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) à partir de liens **TextBox**.

## Créer un lien

Les **TextBox** classe fournit la [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) méthode pour vérifier si la **TextBox** peut être lié à la cible **Textbox**.

L'exemple de code suivant montre comment vérifier `TextBox` peut être lié à la boîte de texte cible:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Vérifier le texte Séquence de la boîte

Il y a plusieurs façons d'afficher le texte dans une forme. Les [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) peut être la tête, le milieu ou la queue d'une séquence.

L'exemple de code suivant montre comment vérifier si **TextBox** est une tête, une queue ou un milieu de la séquence:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Briser un lien

Utilisation [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) méthode vous pouvez briser le lien vers la suivante **TextBox**.

L'exemple de code suivant montre comment casser un lien pour un **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
