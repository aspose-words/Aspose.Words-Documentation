---
title: Travailler avec des plages en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec des gammes
linktitle: Travailler avec des gammes
description: "Introduction à la fonctionnalité de portée dans Aspose.Words pour C++."
type: docs
weight: 130
url: /fr/cpp/working-with-ranges/
---

{{% alert color="primary" %}}

Dans Aspose.Words, une plage est une "fenêtre plate"dans un modèle arborescent du document.

{{% /alert %}}

Si vous avez travaillé avec l'automatisation Microsoft Word, vous savez probablement que l'un des principaux outils pour examiner et modifier le contenu d'un document est l'objet **Range**. **Range** est comme une "fenêtre" sur le contenu et la mise en forme du document.

Aspose.Words a également la classe [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) et il est conçu pour ressembler et agir de la même manière que **Range** dans Microsoft Word. Bien que **Range** ne puisse pas couvrir une partie arbitraire d'un document et n'ait pas de **Start** et **End**, vous pouvez accéder à la plage couverte par n'importe quel nœud de document, y compris le [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) lui-même. En d'autres termes, chaque nœud a sa propre plage. L'objet **Range** vous permet d'accéder et de modifier du texte, des signets et des champs de formulaire dans la plage.

## Récupérer du Texte Brut

Utilisez la propriété [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) pour récupérer le texte brut et non formaté de la plage.

L'exemple de code suivant montre comment obtenir un texte brut et non formaté d'une plage:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Suppression de Texte

Range permet la suppression de tous les caractères de la plage en appelant [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

L'exemple de code suivant montre comment supprimer tous les caractères d'une plage:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}