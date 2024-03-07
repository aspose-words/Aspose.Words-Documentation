---
title: Nettoyer un document dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Nettoyer un document
linktitle: Nettoyer un document
description: "Supprimez les informations inutilisées ou en double pour réduire la taille de sortie et le temps de traitement à l'aide de Python. Supprimez les styles inutilisés, les styles intégrés inutilisés, les styles en double ou les listes inutilisées."
type: docs
weight: 30
url: /fr/python-net/clean-up-a-document/
---

Parfois, vous devrez peut-être supprimer les informations inutilisées ou en double pour réduire la taille du document de sortie et le temps de traitement.

Bien que vous puissiez rechercher et supprimer des données inutilisées, telles que des styles ou des listes, ou dupliquer des informations manuellement, il sera beaucoup plus pratique de le faire en utilisant les fonctionnalités et capacités fournies par Aspose.Words.

La classe [CleanupOptions](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/) vous permet de spécifier des options pour le nettoyage des documents. Pour supprimer les styles en double ou simplement les styles ou listes inutilisés du document, vous pouvez utiliser la méthode [cleanup](https://reference.aspose.com/words/python-net/aspose.words/document/cleanup/).

## Supprimer les informations inutilisées d'un document

Vous pouvez utiliser les propriétés [unused_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_styles/) et [unused_builtin_styles](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_builtin_styles/) pour détecter et supprimer les styles marqués comme "inutilisés".

Vous pouvez utiliser la propriété [unused_lists](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/unused_lists/) pour détecter et supprimer les listes et les définitions de listes marquées comme "inutilisées".

L'exemple de code suivant montre comment supprimer uniquement les styles inutilisés d'un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupUnusedStylesandLists.py" >}}

## Supprimer les informations en double d'un document

Vous pouvez également utiliser la propriété [duplicate_style](https://reference.aspose.com/words/python-net/aspose.words/cleanupoptions/duplicate_style/) pour remplacer tous les styles en double par celui d'origine et supprimer les doublons d'un document.

L'exemple de code suivant montre comment supprimer les styles en double d'un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-CleanupDuplicateStyle.py" >}}