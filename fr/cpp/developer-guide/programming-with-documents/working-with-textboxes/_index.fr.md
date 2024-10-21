---
title: Travailler avec TextBoxes en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec TextBoxes
linktitle: Travailler avec TextBoxes
description: "Introduction à la fonctionnalité de zones de texte liées dans Aspose.Words pour C++."
type: docs
weight: 250
url: /fr/cpp/working-with-textboxes/
---

Dans Aspose.Words, la classe [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) est utilisée pour spécifier comment le texte est affiché à l'intérieur d'une forme. Il expose une propriété publique nommée **Parent** pour obtenir la forme parent de la zone de texte afin que le client puisse trouver le [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) lié à partir du **TextBox** associé.

## Créer Un Lien

La classe **TextBox** fournit la méthode [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) afin de vérifier si le **TextBox** peut être lié à la cible **Textbox**.

L'exemple de code suivant montre comment vérifier si le `TextBox` peut être lié à la zone de texte cible:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Vérifier la séquence TextBox

Il existe plusieurs façons d'afficher du texte dans une forme. Le [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) peut être la tête, le milieu ou la queue d'une séquence.

L'exemple de code suivant montre comment vérifier si **TextBox** est une tête, une queue ou un milieu de la séquence:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Rompre un Lien

En utilisant la méthode [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/), vous pouvez rompre le lien vers le **TextBox** suivant.

L'exemple de code suivant montre comment rompre un lien pour un **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
