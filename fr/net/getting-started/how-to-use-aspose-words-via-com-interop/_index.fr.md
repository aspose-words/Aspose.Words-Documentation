---
title: Aspose.Words pour .NET via COM Interop
second_title: Aspose.Words pour .NET
articleTitle: Comment utiliser Aspose.Words pour .NET via COM Interop
linktitle: Comment utiliser Aspose.Words pour .NET via COM Interop
type: docs
description: "Utilisez Aspose.Words pour .NET via COM Interop dans Python, PHP, VBScript, JScript et d'autres langages de programmation."
weight: 130
url: /fr/net/how-to-use-aspose-words-via-com-interop/
timestamp: 2024-09-25-11-08-55
---

Les informations de cette rubrique s'appliquent aux scénarios dans lesquels vous souhaitez utiliser Aspose.Words pour .NET via COM Interop dans l'un des langages de programmation suivants:

- ASP
- Delphi ([Exemple](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
-JScript
- Perl
- PHP
-PowerBuilder
- Python
-VBScript
- Visual Basic

## Travailler avec COM Interop

Aspose.Words pour .NET s'exécute sous le contrôle du .NET Framework et c'est ce qu'on appelle le code managé. Le code écrit dans tous les langages ci-dessus s'exécute en dehors du .NET Framework et est appelé code non managé. L'interaction entre le code non géré et Aspose.Words se produit via la fonction .NET appelée COM Interop.

Les objets Aspose.Words sont des objets .NET, mais lorsqu'ils sont utilisés via COM Interop, ils apparaissent comme des objets COM dans votre langage de programmation. Par conséquent, il est préférable de vous assurer que vous savez comment créer et utiliser des objets COM dans votre langage de programmation avant de commencer à utiliser Aspose.Words.

Voici les sujets que vous devrez éventuellement maîtriser:

- Utiliser des objets COM dans votre langage de programmation. Consultez la documentation de votre langage de programmation et les rubriques spécifiques au langage plus loin dans cette documentation.
- Travailler avec des objets COM exposés par .NET COM Interop. Voir [Interopération avec du code non géré](https://learn.microsoft.com/en-us/dotnet/framework/interop/) et [Exposition des composants .NET Framework à COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) dans MSDN.
- Modèle objet de document Aspose.Words. Voir Aspose.Words [Guide du développeur](/words/fr/net/developer-guide/) et [API Reference](https://reference.aspose.com/words/fr/net/).

## Enregistrez Aspose.Words pour .NET avec COM Interop

Après [Installation](/words/fr/net/installation/), vous devez enregistrer Aspose.Words pour COM Interop à l'aide de l'utilitaire `regasm.exe`.

`regasm.exe` est un outil inclus dans .NET Framework SDK. Tous les outils .NET Framework SDK se trouvent dans le répertoire `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\`, par exemple *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

Pour obtenir le fichier tlb, exécutez `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` dans cmd, où `<installdir>` est le répertoire dans lequel vous avez installé Aspose.Words, généralement `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Travailler avec Aspose.Words via COM Interop

### ProgIDs

ProgID signifie "programmatic identifier", c'est le nom d'une classe `COM` que vous devez utiliser pour créer un objet.

Actuellement, Aspose.Words définit quatre objets COM créables publiquement. Leurs ProgIDs sont:

-ComHelper
- Document
- Générateur de documents
- Licence

Le ProgIDs se compose du nom de la bibliothèque ("Aspose.Words") et du nom de la classe.

### Bibliothèque de types

Lors de l'installation, le Aspose.Words.tlb (bibliothèque de type COM) est copié sur votre ordinateur pour:

- Pour .NET Framework 4.0 vers **<installdir>\lib\net40-client**

Si votre langage de programmation (par exemple Visual Basic ou Delphi) vous permet de référencer une bibliothèque de types `COM`, ajoutez alors une référence à **Aspose.Words.tlb** et vous pourrez voir toutes les classes, méthodes, propriétés et énumérations Aspose.Words dans votre navigateur d'objets.

### Création d'objets COM

La création d'un objet .NET est similaire à la création d'un objet COM normal:

**VBScript**

```
Assistant de gradation
Définir l'assistant = CreateObject("Aspose.Words.ComHelper")
 
```

Une fois créé, vous pouvez accéder aux méthodes et propriétés de l'objet, comme s'il s'agissait d'un objet `COM`:

**VBScript**

```
Dim doc
Définir doc = helper.Open("C:\my.doc")
 
```

Certaines méthodes ont des surcharges et elles seront exposées par COM Interop avec un suffixe numérique ajouté, à l'exception de la toute première méthode qui reste inchangée. Par exemple, les surcharges de méthodes `Document.Save` deviennent `Document.Save`, `Document.Save_2`, `Document.Save_3`, etc.

Pour plus d’informations, consultez les articles spécifiques aux langues plus loin dans cette documentation.

### Création d'un assemblage Wrapper

Si vous devez utiliser de nombreuses classes, méthodes et propriétés Aspose.Words, envisagez de créer un assembly wrapper (en utilisant C# ou tout autre langage de programmation .NET), cela vous évitera d'utiliser Aspose.Words directement à partir de code non géré.

Une bonne approche consiste à développer un assembly .NET qui fait référence à Aspose.Words et effectue tout le travail avec celui-ci, et n'expose que l'ensemble minimal de classes et de méthodes au code non managé. Votre application devrait alors fonctionner uniquement avec votre bibliothèque wrapper.

Réduire le nombre de classes et de méthodes que vous devez appeler via COM Interop pourrait simplifier votre projet, car l'utilisation de classes .NET via COM Interop nécessite souvent des compétences avancées.
