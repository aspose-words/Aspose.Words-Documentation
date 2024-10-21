---
title: Cloner un document en C++
second_title: Aspose.Words pour C++
articleTitle: Cloner un Document
linktitle: Cloner un Document
type: docs
description: "Cloner un document pour obtenir sa copie identique en utilisant C++. Lors de la création d'une copie, les nœuds et les propriétés du document d'origine sont clonés."
weight: 70
url: /fr/cpp/clone-a-document/
---

Le clonage d'un document est le processus de création d'une copie identique d'un document original, ce qui peut améliorer les performances et vous éviter d'éventuelles fuites de mémoire.

Cet article expliquera les principaux cas d'utilisation du clonage d'un document et comment créer un clone de document à l'aide de Aspose.Words.

## Opérations avec des Documents de Clonage

L'opération de clonage vous permet d'accélérer le processus de création de documents car vous n'aurez pas besoin de charger et d'analyser un document à partir d'un fichier à chaque fois.

Après avoir créé un clone de votre document, vous pourrez le modifier et effectuer différentes opérations dessus, par exemple, le comparer avec le document d'origine, l'ajouter ou l'insérer dans un autre document. Vous pouvez également modifier les éléments clonés ou leur contenu avant de les insérer dans un autre document.

## Création d'un Clone de Document

Aspose.Words vous permet de cloner un document à l'aide de la méthode [Clone](https://reference.aspose.com/words/cpp/aspose.words/document/clone/) qui effectue une copie approfondie du document et le renvoie. En d'autres termes, il obtiendra une copie complète du DOM. La méthode `Clone` accélère la génération des documents et vous n'avez besoin que d'une seule ligne de code pour obtenir une copie de votre document.

Le clonage produit un nouveau document avec le même contenu que l'original, mais avec une copie unique de chacun des [nodes](https://reference.aspose.com/words/cpp/class/aspose.words.node) du document d'origine. Vous pouvez également appliquer l'opération de clonage à un nœud de document à l'aide de la méthode node [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/), qui vous permet de dupliquer des nœuds de document composite avec et sans leurs nœuds enfants.

{{% alert color="primary" %}}

Notez que lors de l'application de la méthode de clonage, toutes les propriétés du document seront clonées.

{{% /alert %}}

L'exemple de code suivant montre comment cloner un document et créer une copie d'une section de ce document:
{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CloningDocument-CloningDocument.cpp" >}}
