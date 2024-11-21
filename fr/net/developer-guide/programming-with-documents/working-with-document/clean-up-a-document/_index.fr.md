---
title: Nettoyer un document dans C#
second_title: Aspose.Words pour .NET
articleTitle: Nettoyer un document
linktitle: Nettoyer un document
description: "Supprimez les informations inutilisées ou en double pour réduire la taille de sortie et le temps de traitement à l'aide de C#. Supprimez les styles inutilisés, les styles intégrés inutilisés, les styles en double ou les listes inutilisées."
type: docs
weight: 30
url: /fr/net/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Parfois, vous devrez peut-être supprimer les informations inutilisées ou en double pour réduire la taille du document de sortie et le temps de traitement.

Bien que vous puissiez rechercher et supprimer des données inutilisées, telles que des styles ou des listes, ou dupliquer des informations manuellement, il sera beaucoup plus pratique de le faire en utilisant les fonctionnalités et capacités fournies par Aspose.Words.

La classe [CleanupOptions](https://reference.aspose.com/words/fr/net/aspose.words/cleanupoptions/) vous permet de spécifier des options pour le nettoyage des documents. Pour supprimer les styles en double ou simplement les styles ou listes inutilisés du document, vous pouvez utiliser la méthode [Cleanup](https://reference.aspose.com/words/fr/net/aspose.words/document/cleanup/).

## Supprimer les informations inutilisées d'un document

Vous pouvez utiliser les propriétés [UnusedStyles](https://reference.aspose.com/words/fr/net/aspose.words/cleanupoptions/unusedstyles/) et [UnusedBuiltinStyles](https://reference.aspose.com/words/fr/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) pour détecter et supprimer les styles marqués comme "inutilisés".

Vous pouvez utiliser la propriété [UnusedLists](https://reference.aspose.com/words/fr/net/aspose.words/cleanupoptions/unusedlists/) pour détecter et supprimer les listes et les définitions de listes marquées comme "inutilisées".

L'exemple de code suivant montre comment supprimer uniquement les styles inutilisés d'un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Supprimer les informations en double d'un document

Vous pouvez également utiliser la propriété [DuplicateStyle](https://reference.aspose.com/words/fr/net/aspose.words/cleanupoptions/duplicatestyle/) pour remplacer tous les styles en double par celui d'origine et supprimer les doublons d'un document.

L'exemple de code suivant montre comment supprimer les styles en double d'un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
