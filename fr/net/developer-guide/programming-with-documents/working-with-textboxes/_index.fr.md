---
title: Travailler avec des zones de texte dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des zones de texte
linktitle: Travailler avec des zones de texte
description: "Introduction à la fonctionnalité de zones de texte liées dans Aspose.Words pour .NET."
type: docs
weight: 250
url: /fr/net/working-with-textboxes/
---

Dans Aspose.Words, la classe [TextBox](https://reference.aspose.com/words/fr/net/aspose.words.drawing/textbox/) est utilisée pour spécifier comment le texte est affiché à l'intérieur d'une forme. Il expose une propriété publique nommée **Parent** pour obtenir la forme parent de la zone de texte afin que le client puisse trouver le [Shape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/) lié à partir du **TextBox** associé.

## Créer un lien

La classe **TextBox** fournit la méthode [IsValidLinkTarget](https://reference.aspose.com/words/fr/net/aspose.words.drawing/textbox/isvalidlinktarget/) afin de vérifier si le **TextBox** peut être lié au **Textbox** cible.

L'exemple de code suivant montre comment vérifier si le `TextBox` peut être lié à la Textbox cible:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Vérifier la séquence TextBox

Il existe plusieurs manières d'afficher du texte dans une forme. Le [TextBox](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/textbox/) peut être la tête, le milieu ou la queue d'une séquence.

L'exemple de code suivant montre comment vérifier si **TextBox** est une tête, une queue ou un milieu de la séquence:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Rompre un lien

En utilisant la méthode [BreakForwardLink](https://reference.aspose.com/words/fr/net/aspose.words.drawing/textbox/breakforwardlink/), vous pouvez rompre le lien vers le prochain **TextBox**.

L'exemple de code suivant montre comment rompre un lien pour un **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
