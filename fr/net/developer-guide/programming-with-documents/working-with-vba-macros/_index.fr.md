---
title: Travailler avec des macros VBA dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des macros VBA
linktitle: Travailler avec des macros VBA
description: "Travailler avec des projets de documents VBA à l'aide de C#."
type: docs
weight: 410
url: /fr/net/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic for Applications (VBA) pour Microsoft Word est un langage de programmation simple mais puissant qui peut être utilisé pour étendre les fonctionnalités. Aspose.Words API propose trois classes pour accéder au code source du projet VBA:

- La classe [VBAProject](https://reference.aspose.com/words/fr/net/aspose.words.vba/vbaproject/) permet d'accéder aux informations du projet VBA
- La classe [VBAModuleCollection](https://reference.aspose.com/words/fr/net/aspose.words.vba/vbamodulecollection/) renvoie la collection des modules du projet VBA
- La classe [VbaModule](https://reference.aspose.com/words/fr/net/aspose.words.vba/vbamodule/) donne accès au module projet VBA
- L'énumération [VbaModuleType](https://reference.aspose.com/words/fr/net/aspose.words.vba/vbamoduletype/) définit les types d'un modèle dans un projet VBA. Le module peut être un module procédural, un module de document, un module de classe ou un module de concepteur

## Créer un projet VBA

Aspose.Words API fournit la propriété [VbaProject](https://reference.aspose.com/words/fr/net/aspose.words/document/vbaproject/) pour obtenir ou définir VbaProject dans le document.

L'exemple de code suivant montre comment créer un projet VBA et un module VBA ainsi que des propriétés de base, par exemple Nom et Type:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cs" >}}

## Lire des macros

Aspose.Words offre également aux utilisateurs la possibilité de lire des macros VBA.

L'exemple de code suivant montre comment lire les macros VBA à partir du document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cs" >}}

## Écrire ou modifier des macros

À l'aide de Aspose.Words, les utilisateurs peuvent modifier les macros VBA.

L'exemple de code suivant montre comment modifier les macros VBA à l'aide de la propriété [SourceCode](https://reference.aspose.com/words/fr/net/aspose.words.vba/vbamodule/sourcecode/):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cs" >}}

## Cloner le projet VBA

Avec Aspose.Words, il est également possible de cloner des projets VBA.

L'exemple de code suivant montre comment cloner le projet VBA à l'aide de la propriété [Clone](https://reference.aspose.com/words/fr/net/aspose.words.vba/vbaproject/clone/) qui crée une copie du projet existant:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cs" >}}

## Cloner le module VBA

Vous pouvez également cloner des modules VBA si nécessaire.

L'exemple de code suivant montre comment cloner le module VBA à l'aide de la propriété [Clone](https://reference.aspose.com/words/fr/net/aspose.words.vba/vbamodule/clone/) qui crée une copie du projet existant:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cs" >}}

## Travailler avec les références du projet VBA

Aspose.Words API fournit la classe [VbaReferenceCollection](https://reference.aspose.com/words/fr/net/aspose.words.vba/vbareferencecollection/) pour travailler avec les références de projet VBA représentant une collection de références de projet VBA.

L'exemple de code suivant montre comment supprimer certaines références de la collection de références d'un projet VBA:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-RemoveReferenceFromCollectionOfReferences.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithVbaReferenceCollection-GetLibIdAndReferencePath.cs" >}}
