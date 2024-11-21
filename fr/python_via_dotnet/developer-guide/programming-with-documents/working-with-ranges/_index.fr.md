---
title: Travailler avec des plages dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des plages
linktitle: Travailler avec des plages
description: "Travaillez avec des plages dans un document à l'aide de Python."
type: docs
weight: 130
url: /fr/python-net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Dans Aspose.Words, un [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) est une "fenêtre plate" donnant sur un modèle arborescent du document.

{{% /alert %}}

Si vous avez travaillé avec Microsoft Word Automation, vous savez probablement que l'un des principaux outils pour examiner et modifier le contenu d'un document est l'objet [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) est comme une "fenêtre" sur le contenu et le formatage du document. Aspose.Words possède également la classe [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) et est conçu pour ressembler et agir de la même manière que **Range** dans Microsoft Word. Bien que **Range** ne puisse pas couvrir une partie arbitraire d'un document et ne dispose pas de **Start** ni de **End**, vous pouvez accéder à la plage couverte par n'importe quel nœud de document, y compris le [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) lui-même. En d’autres termes, chaque nœud possède sa propre plage. L'objet [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) vous permet d'accéder et de modifier le texte, les signets et les champs de formulaire dans la plage.

## Récupérer du texte brut

Utilisez la propriété [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) pour récupérer le texte brut et non formaté de la plage.

L'exemple de code suivant montre comment obtenir le texte brut et non formaté d'une plage:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Supprimer du texte

Range permet la suppression de tous les caractères de la plage en appelant [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

L'exemple de code suivant montre comment supprimer tous les caractères d'une plage:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
