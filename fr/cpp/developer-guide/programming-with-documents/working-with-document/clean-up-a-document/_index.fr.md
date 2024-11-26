---
title: Nettoyer un document en C++
second_title: Aspose.Words pour C++
articleTitle: Nettoyer un Document
linktitle: Nettoyer un Document
description: "Supprimez les informations inutilisées ou en double pour réduire la taille de la sortie et le temps de traitement à l'aide de C++. Supprimez les styles inutilisés, les styles intégrés inutilisés, les styles en double ou les listes inutilisées."
type: docs
weight: 30
url: /fr/cpp/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Parfois, vous devrez peut-être supprimer des informations inutilisées ou en double pour réduire la taille du document de sortie et le temps de traitement.

Bien que vous puissiez rechercher et supprimer manuellement les données inutilisées, telles que les styles ou les listes, ou dupliquer des informations, il sera beaucoup plus pratique de le faire en utilisant les fonctionnalités et capacités fournies par Aspose.Words.

La classe [CleanupOptions](https://reference.aspose.com/words/cpp/class/aspose.words.cleanup_options) vous permet de spécifier des options pour le nettoyage des documents. Pour supprimer des styles en double ou simplement des styles ou des listes inutilisés du document, vous pouvez utiliser la méthode [Cleanup](https://reference.aspose.com/words/cpp/aspose.words/document/cleanup/).

## Supprimer les informations inutilisées d'un Document

Vous pouvez utiliser les propriétés [UnusedStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedstyles/) et [UnusedBuiltinStyles](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedbuiltinstyles/) pour détecter et supprimer les styles marqués comme "inutilisés".

Vous pouvez utiliser la propriété [UnusedLists](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_unusedlists/) pour détecter et supprimer les listes et les définitions de liste marquées comme "inutilisées".

L'exemple de code suivant montre comment supprimer uniquement les styles inutilisés d'un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.h" >}}

## Supprimer les informations en double d'un document

Vous pouvez également utiliser la propriété [DuplicateStyle](https://reference.aspose.com/words/cpp/aspose.words/cleanupoptions/get_duplicatestyle/) pour remplacer tous les styles en double par celui d'origine et supprimer les doublons d'un document.

L'exemple de code suivant montre comment supprimer les styles en double d'un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.h" >}}
