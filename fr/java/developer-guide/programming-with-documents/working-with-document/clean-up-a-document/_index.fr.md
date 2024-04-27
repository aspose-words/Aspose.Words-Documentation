---
title: Nettoyez un document dans Java
second_title: Aspose.Words pour Java
articleTitle: Nettoyer un document
linktitle: Nettoyer un document
description: "Enlever les informations inutilisées ou dupliquées pour réduire la taille de sortie et le temps de traitement. Supprimer les styles non utilisés, les styles intégrés non utilisés, les styles dupliqués ou les listes inutilisées en utilisant Java."
type: docs
weight: 30
url: /fr/java/clean-up-a-document/
---

Parfois, vous pouvez avoir besoin de supprimer les informations inutilisées ou dupliquées pour réduire la taille du document de sortie et le temps de traitement.

Bien que vous puissiez trouver et supprimer des données inutilisées, comme des styles ou des listes, ou dupliquer des informations manuellement, il sera beaucoup plus pratique de le faire en utilisant des fonctionnalités et des capacités fournies par Aspose.Words.

Les [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) classe vous permet de spécifier des options pour le nettoyage des documents. Pour supprimer les styles dupliqués ou tout simplement les styles ou listes inutilisés du document, vous pouvez utiliser le [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) méthode.

## Supprimer les renseignements non utilisés d'un document

Vous pouvez utiliser le [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) et [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) propriétés pour détecter et supprimer les styles qui sont marqués comme "inutilisés".

Vous pouvez utiliser le [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) propriété pour détecter et supprimer les listes et les définitions qui sont marquées comme "inutilisées".

L'exemple de code suivant montre comment supprimer seulement les styles inutilisés d'un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Supprimer les informations dupliquées d'un document

Vous pouvez également utiliser le [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) propriété pour remplacer tous les styles de duplicata par l'original et supprimer les duplicata d'un document.

L'exemple de code suivant montre comment supprimer les styles dupliqués d'un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
