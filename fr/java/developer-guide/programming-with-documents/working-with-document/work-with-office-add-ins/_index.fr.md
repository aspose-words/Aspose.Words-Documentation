---
title: Travailler avec des compléments Office dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des compléments Office
linktitle: Travailler avec des compléments Office
description: "Aspose.Words pour Java fournit diverses classes pour travailler avec des compléments Office. Vous pouvez ajouter un volet Office via l'extension Web et personnaliser les propriétés du volet et de l'extension."
type: docs
weight: 50
url: /fr/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Parfois, vous souhaiterez peut-être donner accès à des contrôles d'interface qui exécutent du code pour modifier des documents. Aspose.Words API fournit l'espace de noms `WebExtensions`, qui accorde diverses classes pour personnaliser les éléments et les attributs étendant le vocabulaire XML pour représenter les compléments Office.

WebExtensions l'espace de noms peut être divisé conditionnellement en:

* Objets pour travailler avec le volet Office
* Objets pour travailler avec des extensions Web

## Utilisation Des Volets de Tâches

Les volets de tâches sont des surfaces d'interface qui sont affichées sur le côté droit de la fenêtre dans Microsoft Word. Le volet Office permet aux utilisateurs d'accéder aux contrôles d'interface qui peuvent exécuter du code pour modifier des documents.

Par exemple, en utilisant Aspose.Words API, vous pouvez ajouter un complément de volet office et personnaliser son apparence.

## Utilisation des Extensions Web

Les extensions Web sont des outils qui étendent les capacités des applications Office et interagissent avec le contenu des documents Office. Les extensions Web fournissent des fonctionnalités supplémentaires aux clients Office pour améliorer l'expérience utilisateur.

Aspose.Words offre la possibilité d'ajouter des extensions Web de type Volet office à l'aide des classes [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) et [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/), et vous permet également de personnaliser les propriétés du volet et de l'extension.

L'exemple de code suivant montre comment créer des volets de tâches et les ajouter à des volets de tâches d'extension Web avec des propriétés de base:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Pour afficher la liste des compléments du volet office, utilisez la propriété [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes).

L'exemple de code suivant montre comment obtenir une telle liste de compléments:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

