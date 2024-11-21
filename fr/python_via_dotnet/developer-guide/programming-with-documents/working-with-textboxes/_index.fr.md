---
title: Travailler avec des zones de texte dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des zones de texte
linktitle: Travailler avec des zones de texte
description: "Travaillez avec des zones de texte dans un document à l'aide de Python."
type: docs
weight: 250
url: /fr/python-net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

Dans Aspose.Words, la classe [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) est utilisée pour spécifier comment un texte est affiché à l'intérieur d'une forme. Il fournit une propriété publique nommée [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) pour obtenir la forme parent de la zone de texte afin de permettre au client de trouver le [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) lié à partir du [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) lié.

## Créer un lien

La classe [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) fournit la méthode [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) afin de vérifier si le [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) peut être lié à la Textbox cible.

L'exemple de code suivant montre comment vérifier si le `TextBox` peut être lié à la Textbox cible:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Vérifier la séquence TextBox

Il existe plusieurs manières d'afficher du texte dans une forme. Le [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) peut être la tête, le milieu ou la queue d'une séquence.

L'exemple de code suivant montre comment vérifier si **TextBox** est une tête, une queue ou un milieu de la séquence:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Rompre un lien

En utilisant la méthode [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/), vous pouvez rompre le lien vers le prochain **TextBox**.

L'exemple de code suivant montre comment rompre un lien pour un **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
