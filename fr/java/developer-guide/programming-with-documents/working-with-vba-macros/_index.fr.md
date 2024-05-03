---
title: Travailler avec VBA Macros en Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec VBA Macros
linktitle: Travailler avec VBA Macros
description: "Travailler avec le document VBA projets utilisant Java."
type: docs
weight: 410
url: /fr/java/working-with-vba-macros/
---

Visual Basic pour les demandes (VBA) Microsoft Word est un langage de programmation simple mais puissant qui peut être utilisé pour étendre la fonctionnalité. Aspose.Words API fournit trois classes pour accéder au code source du projet VBA:

- Les [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) classe donne accès aux informations du projet VBA
- Les [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) classe retourne la collection de modules de projet VBA
- Les [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) classe donne accès au module de projet VBA

## Créer un projet VBA

Aspose.Words API fournit les [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) propriété pour obtenir ou définir VbaProject dans le document.

L'exemple de code suivant montre comment créer un projet VBA et un module VBA avec des propriétés de base, par exemple. Nom et type:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Lire Macros

Aspose.Words permet également aux utilisateurs de lire les macros VBA.

L'exemple de code suivant montre comment lire VBA Macros du document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Modifier Macros

Utilisation Aspose.Words, les utilisateurs peuvent modifier les macros VBA.

L'exemple de code suivant montre comment modifier VBA Macros en utilisant [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) Biens

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Clone VBA Projet

Avec Aspose.Words Il est également possible de cloner des projets VBA.

L'exemple de code suivant montre comment cloner le projet VBA en utilisant le [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) propriété qui crée une copie du projet existant:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Clone VBA Module

Vous pouvez également cloner des modules VBA si nécessaire.

L'exemple de code suivant montre comment cloner le module VBA en utilisant le [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) propriété qui crée une copie du projet existant

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
