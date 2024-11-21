---
title: Clone un document dans Java
second_title: Aspose.Words pour Java
articleTitle: Cloner un document
linktitle: Cloner un document
type: docs
description: "Clone un document pour obtenir sa copie identique. Lors de la création d'une copie, les nœuds et les propriétés du document original sont clonés en utilisant Java."
weight: 70
url: /fr/java/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Cloner un document est le processus de création d'une copie identique d'un document original, qui peut améliorer les performances et vous sauver des fuites de mémoire potentielles.

Cet article explique les principaux cas d'utilisation du clonage d'un document et comment créer un clone de document en utilisant Aspose.Words.

## Opérations avec des documents de clonage

L'opération clone vous permet de rendre le processus de création de documents plus rapide car vous n'aurez pas besoin de charger et d'analyser un document à partir d'un fichier à chaque fois.

Après avoir créé un clone de votre document, vous pourrez le modifier et y effectuer différentes opérations, par exemple, le comparer avec le document original, l'ajouter ou l'insérer dans un autre document. Vous pouvez également modifier des éléments clonés ou leur contenu avant de les insérer dans un autre document.

## Créer un clone de document

Aspose.Words vous permet de cloner un document en utilisant [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone) méthode qui effectue une copie profonde du document et le renvoie. En d'autres termes, il obtiendra une copie complète DOM. Les `Clone` méthode accélère la génération de documents, et vous avez seulement besoin d'une ligne de code pour obtenir une copie de votre document.

Cloning produit un nouveau document avec le même contenu que l'original, mais avec une copie unique de chacun des documents originaux [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/). Vous pouvez également appliquer l'opération clone à un noeud document en utilisant le noeud [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) méthode, qui vous permet de reproduire des nœuds de documents composites avec et sans leurs nœuds enfants.

{{% alert color="primary" %}}

Notez que lors de l'application de la méthode de clonage, toutes les propriétés du document seront clonées.

{{% /alert %}}

L'exemple de code suivant montre comment cloner un document et créer un duplicata d'une section dans ce document:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
