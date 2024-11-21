---
title: Travailler avec les compléments Office dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec les compléments Office
linktitle: Travailler avec les compléments Office
description: "Aspose.Words pour .NET propose diverses classes pour travailler avec des compléments Office à l'aide de C#. Vous pouvez ajouter le volet des tâches via une extension Web et personnaliser les propriétés du volet et de l'extension."
type: docs
weight: 50
url: /fr/net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Parfois, vous souhaiterez peut-être accorder l’accès aux contrôles d’interface qui exécutent du code pour modifier des documents. Aspose.Words API fournit l'espace de noms `WebExtensions`, qui accorde diverses classes pour personnaliser les éléments et les attributs étendant le vocabulaire XML pour représenter les compléments Office.

L’espace de noms WebExtensions peut être conditionnellement divisé en:

* Objets pour travailler avec le volet des tâches
* Objets pour travailler avec des extensions Web

## Utilisation des volets de tâches

Les volets de tâches sont des surfaces d'interface affichées sur le côté droit de la fenêtre dans Microsoft Word. Le volet des tâches permet aux utilisateurs d'accéder aux contrôles d'interface qui peuvent exécuter du code pour modifier des documents.

Par exemple, en utilisant Aspose.Words API, vous pouvez ajouter un complément de volet de tâches et personnaliser son apparence.

## Utiliser des extensions Web

Les extensions Web sont des outils qui étendent les capacités des applications Office et interagissent avec le contenu des documents Office. Les extensions Web fournissent des fonctionnalités supplémentaires aux clients Office pour améliorer l'expérience utilisateur.

Aspose.Words offre la possibilité d'ajouter des extensions Web de type volet de tâches à l'aide des classes [WebExtension](https://reference.aspose.com/words/fr/net/aspose.words.webextensions/webextension/) et [TaskPane](https://reference.aspose.com/words/fr/net/aspose.words.webextensions/taskpane/), et vous permet également de personnaliser les propriétés du volet et de l'extension.

L'exemple de code suivant montre comment créer des volets de tâches et ajouter des volets de tâches d'extension Web avec des propriétés de base:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

Pour afficher une liste des compléments du volet Office, utilisez la propriété [WebExtensionTaskPanes](https://reference.aspose.com/words/fr/net/aspose.words/document/webextensiontaskpanes/).

L'exemple de code suivant montre comment obtenir une telle liste de compléments:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
