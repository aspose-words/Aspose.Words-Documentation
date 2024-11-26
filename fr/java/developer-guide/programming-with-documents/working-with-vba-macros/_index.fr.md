---
title: Travailler avec VBA macros dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec VBA macros
linktitle: Travailler avec VBA macros
description: "Travailler avec des projets de document VBA en utilisant Java."
type: docs
weight: 410
url: /fr/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic pour les applications (VBA) pour Microsoft Word est un langage de programmation simple mais puissant qui peut être utilisé pour étendre les fonctionnalités. Aspose.Words API fournit trois classes pour accéder au code source du projet VBA:

- La classe [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) permet d'accéder aux informations du projet VBA
- La classe [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) renvoie la collection de VBA modules de projet
- La classe [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) donne accès au module de projet VBA

## Créer un projet VBA

Aspose.Words API fournit la propriété [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) pour obtenir ou définir VbaProject dans le document.

L'exemple de code suivant montre comment créer un projet VBA et un module VBA avec des propriétés de base, par exemple Name et Type:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Lire les Macros

Aspose.Words permet également aux utilisateurs de lire les macros VBA.

L'exemple de code suivant montre comment lire les macros VBA à partir du document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Modifier les Macros

En utilisant Aspose.Words, les utilisateurs peuvent modifier VBA macros.

L'exemple de code suivant montre comment modifier les macros VBA à l'aide de la propriété [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Projet Clone VBA

Avec Aspose.Words, il est également possible de cloner VBA projets.

L'exemple de code suivant montre comment cloner le projet VBA à l'aide de la propriété [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) qui crée une copie du projet existant:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Cloner le module VBA

Vous pouvez également cloner des modules VBA si nécessaire.

L'exemple de code suivant montre comment cloner le module VBA à l'aide de la propriété [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) qui crée une copie du projet existant.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
