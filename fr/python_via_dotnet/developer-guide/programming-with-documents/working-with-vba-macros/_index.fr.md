---
title: Travailler avec des macros VBA dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des macros VBA
linktitle: Travailler avec des macros VBA
description: "Créez, lisez, écrivez, clonez et gérez des macros VBA dans un document à l'aide de Python."
type: docs
weight: 410
url: /fr/python-net/working-with-vba-macros/
---

Visual Basic for Applications (VBA) pour Microsoft Word est un langage de programmation simple mais puissant qui peut être utilisé pour étendre les fonctionnalités. Aspose.Words API propose trois classes pour accéder au code source du projet VBA:

- La classe [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) permet d'accéder aux informations du projet VBA
- La classe [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) renvoie la collection des modules du projet VBA
- La classe [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) donne accès au module projet VBA
- L'énumération [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) définit les types d'un modèle dans un projet VBA. Le module peut être un module procédural, un module de document, un module de classe ou un module de concepteur

## Créer un projet VBA

Aspose.Words API fournit la propriété [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) pour obtenir ou définir le [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) dans le document.

L'exemple de code suivant montre comment créer un projet VBA et un module VBA ainsi que des propriétés de base, par exemple [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) et [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Lire des macros

Aspose.Words offre également aux utilisateurs la possibilité de lire des macros VBA.

L'exemple de code suivant montre comment lire les macros VBA à partir du document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Écrire ou modifier des macros

À l'aide de Aspose.Words, les utilisateurs peuvent modifier les macros VBA.

L'exemple de code suivant montre comment modifier les macros VBA à l'aide de la propriété [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Cloner le projet VBA

Avec Aspose.Words, il est également possible de cloner des projets VBA.

L'exemple de code suivant montre comment cloner le projet VBA à l'aide de la propriété [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) qui crée une copie du projet existant:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Cloner le module VBA

Vous pouvez également cloner des modules VBA si nécessaire.

L'exemple de code suivant montre comment cloner le module VBA à l'aide de la propriété [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) qui crée une copie du projet existant:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Travailler avec les références du projet VBA

Aspose.Words API fournit une classe [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) pour travailler avec les références de projet VBA représentant une collection de références de projet VBA.

L'exemple de code suivant montre comment supprimer certaines références de la collection de références d'un projet VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}