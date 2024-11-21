---
title: Travailler avec les add-ins de bureau dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec les add-ins de bureau
linktitle: Travailler avec les add-ins de bureau
description: "Aspose.Words pour Java offre diverses classes pour travailler avec Office Add-ins. Vous pouvez ajouter le panneau des tâches via l'extension web et personnaliser les propriétés du panneau et de l'extension."
type: docs
weight: 50
url: /fr/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Parfois, vous pouvez vouloir donner accès aux contrôles d'interface qui lancent le code pour modifier les documents. Aspose.Words API fournit les `WebExtensions` namespace, qui accorde différentes classes pour personnaliser les éléments et les attributs étendant le vocabulaire XML pour représenter Office Add-ins.

L'espace de noms WebExtensions peut être divisé en:

* Objets pour travailler avec le volet des tâches
* Objets pour travailler avec des extensions web

## Utilisation des panneaux de tâches

Les panneaux de tâches sont des surfaces d'interface qui sont affichées sur le côté droit de la fenêtre Microsoft Word. Le volet des tâches permet aux utilisateurs d'accéder aux contrôles d'interface qui peuvent exécuter du code pour modifier des documents.

Par exemple, Aspose.Words API, Vous pouvez ajouter un volet de tâches et personnaliser son apparence.

## Utilisation des extensions Web

Les Extensions Web sont des outils qui élargissent les capacités des applications Office et interagissent avec le contenu des documents Office. Les extensions Web offrent des fonctionnalités supplémentaires aux clients du Bureau pour améliorer l'expérience utilisateur.

Aspose.Words offre la possibilité d'ajouter des extensions Web du type Task Pane en utilisant le [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) et [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/) vous permet également de personnaliser les propriétés du panneau et de l'extension.

L'exemple de code suivant montre comment créer des panneaux de tâches et ajouter aux panneaux de tâches d'extension web avec des propriétés de base:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Pour voir une liste des add-ins du volet des tâches, utilisez le [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes) propriété.

L'exemple de code suivant montre comment obtenir une telle liste d'ajouts:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

