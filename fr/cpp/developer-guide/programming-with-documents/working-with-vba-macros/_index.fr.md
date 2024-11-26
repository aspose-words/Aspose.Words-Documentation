---
title: Travailler avec des macros VBA en C++
second_title: Aspose.Words pour C++
articleTitle: Utilisation des macros VBA
linktitle: Utilisation des macros VBA
description: "Travailler avec des projets VBA de documents en utilisant C++."
type: docs
weight: 410
url: /fr/cpp/working-with-vba-macros/
timestamp: 2024-01-30-16-22-34
---

Visual Basic pour Applications (VBA) pour Microsoft Word est un langage de programmation simple mais puissant qui peut être utilisé pour étendre les fonctionnalités. L'API Aspose.Words fournit trois classes pour accéder au code source du projet VBA:

- La classe [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) permet d'accéder aux informations du projet VBA
- La classe [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) renvoie la collection de modules de projet VBA
- La classe [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) donne accès au module de projet VBA

## Créer un projet VBA

L'API Aspose.Words fournit la propriété `Document.VbaProject` pour obtenir ou définir VbaProject dans le document.

L'exemple de code suivant montre comment créer un projet VBA et un module VBA avec des propriétés de base, par exemple le Nom et le type:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Lire les Macros

Aspose.Words offre également aux utilisateurs la possibilité de lire les macros VBA.

L'exemple de code suivant montre comment lire les macros VBA à partir du document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Écrire ou modifier des Macros

En utilisant Aspose.Words, les utilisateurs peuvent modifier les macros VBA.

L'exemple de code suivant montre comment modifier les macros VBA à l'aide de la propriété [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Projet de Clonage VBA

Avec Aspose.Words, il est également possible de cloner des projets VBA.

L'exemple de code suivant montre comment cloner le projet VBA à l'aide de la propriété [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) qui crée une copie du projet existant:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Module de Clonage VBA

Vous pouvez également cloner des modules VBA si nécessaire.

L'exemple de code suivant montre comment cloner le module VBA à l'aide de la propriété [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) qui crée une copie du projet existant:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
