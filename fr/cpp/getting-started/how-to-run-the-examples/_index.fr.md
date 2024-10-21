---
title: Comment exécuter les Exemples
second_title: Aspose.Words pour C++
articleTitle: Comment exécuter les Exemples
linktitle: Comment exécuter les Exemples
description: "Télécharger Aspose.Words pour C++ exemples de notre référentiel GitHub et apprenez à les exécuter pour vous familiariser avec les possibilités et fonctionnalités Aspose.Words."
type: docs
weight: 110
url: /fr/cpp/how-to-run-the-examples/
---

Pour vous familiariser avec les possibilités et fonctionnalités Aspose.Words, nous fournissons des exemples qui peuvent être téléchargés à partir de notre référentiel GitHub, exécutés et appris en détail.

Dans cet article, vous trouverez la configuration système requise, ainsi que des informations sur l'exécution des exemples.

## Windows avec Nuget Paquet

### Configuration logicielle Requise et Prérequis

Veuillez vous assurer de remplir les conditions suivantes avant de télécharger et d'exécuter les exemples:

1. Visual Studio Code, Visual Studio 2022.
2. Gestionnaire de packages NuGet installé et la dernière version de l'API NuGet pour Visual Studio. (facultatif)
3. Option **nuget.org** sélectionnée dans la boîte de dialogue" Outils → Options " sous "NuGet Gestionnaire de packages → Sources de packages".
4. Une connexion Internet active pour utiliser la fonctionnalité de restauration automatique des packages `NuGet` dans le projet Exemples. Si vous n'avez pas de connexion Internet active sur la machine sur laquelle les exemples doivent être exécutés, suivez les instructions du package Windows avec Cmake.

### Téléchargez et exécutez les exemples

Tous Aspose.Words pour C++ les exemples sont hébergés sur [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Vous pouvez soit cloner le référentiel à l'aide de votre client GitHub préféré, soit télécharger [le fichier ZIP](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Après avoir obtenu une copie du référentiel, vous constaterez peut-être que:

- Tous les exemples se trouvent dans le dossier **Examples**.
- Il y a Visual Studio fichiers de solution pour C ++ créés en Visual Studio 2022.

Pour exécuter les exemples, ouvrez le fichier de solution dans Visual Studio et générez le projet:

- Pour les exemples **API Reference**, la structure est basée sur les noms de classe, pour les exemples **Docs**, elle est principalement basée sur le [Développeur Guiled](/words/cpp/developer-guide/) section de documentation.
- Lors de la première exécution, les dépendances seront automatiquement téléchargées via NuGet.
- Le dossier **Data** à la racine du dossier **Examples** contient les fichiers d'entrée qui ont été utilisés dans les exemples.
- Tous les exemples peuvent être exécutés en tant que tests unitaires.

## Windows avec CMake Paquet

### Configuration logicielle Requise et Prérequis

Veuillez vous assurer de remplir les conditions suivantes avant de télécharger et d'exécuter les exemples:

1. Visual Studio Code, Visual Studio 2022.
2. [Cmake](https://cmake.org/download/) >= 3.16.0
3. Téléchargez le dernier package CMake à partir de https://downloads.aspose.com/words/cpp

### Téléchargez et exécutez les exemples

Tous Aspose.Words pour C++ les exemples sont hébergés sur [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Vous pouvez soit cloner le référentiel à l'aide de votre client GitHub préféré, soit télécharger [le fichier ZIP](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Placez les dossiers `Aspose.Words.Cpp` et `CodePorting.Native.Cs2Cpp_*` à la racine d'une copie du référentiel.

Tous les exemples se trouvent dans le dossier **Examples**.

Pour exécuter les exemples, exécutez les commandes suivantes à partir de la racine d'une copie du référentiel:
{{< highlight bash >}}
cmake -G "Visual Studio 17 2022" -Thost=x64 -Ax64 -S Examples\DocsExamples\ -B Examples\DocsExamples\build
{{< /highlight >}}

La solution pour Visual Studio sera générée dans le `Examples\DocsExamples\build`

Pour exécuter les exemples, ouvrez le fichier de solution dans Visual Studio et générez le projet:

- Pour les exemples **API Reference**, la structure est basée sur les noms de classe, pour les exemples **Docs**, elle est principalement basée sur le [Développeur Guiled](/words/cpp/developer-guide/) section de documentation.
- Le dossier **Data** à la racine du dossier **Examples** contient les fichiers d'entrée qui ont été utilisés dans les exemples.
- Tous les exemples peuvent être exécutés en tant que tests unitaires.

## Linux

### Configuration logicielle Requise et Prérequis

Veuillez vous assurer de remplir les conditions suivantes avant de télécharger et d'exécuter les exemples:

1. CLang >= 3.9.1
2. [Ninja](https://ninja-build.org/)
3. [Cmake](https://cmake.org/download/) >= 3.16.0
4. Téléchargez le dernier package CMake à partir de https://downloads.aspose.com/words/cpp

### Téléchargez et exécutez les exemples

Tous Aspose.Words pour C++ les exemples sont hébergés sur [GitHub](https://github.com/aspose-words/Aspose.Words-for-C). Vous pouvez soit cloner le référentiel à l'aide de votre client GitHub préféré, soit télécharger [le fichier ZIP](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Placez les dossiers `Aspose.Words.Cpp` et `CodePorting.Native.Cs2Cpp_*` à la racine d'une copie du référentiel.

Tous les exemples se trouvent dans le dossier **Examples**.

Pour exécuter les exemples, exécutez les commandes suivantes à partir de la racine d'une copie du référentiel:
{{< highlight bash >}}
cmake -S Examples/DocsExamples -B Examples/DocsExamples/build -D CMAKE_BUILD_TYPE=Release
cmake --build Examples/DocsExamples/build

cmake -E chdir Examples/DocsExamples/build ctest --verbose
{{< /highlight >}}

- Pour les exemples **API Reference**, la structure est basée sur les noms de classe, pour les exemples **Docs**, elle est principalement basée sur le [Développeur Guiled](/words/cpp/developer-guide/) section de documentation.
- Le dossier **Data** à la racine du dossier **Examples** contient les fichiers d'entrée qui ont été utilisés dans les exemples.
- Tous les exemples peuvent être exécutés en tant que tests unitaires.

{{% alert color="primary" %}}

N'hésitez pas à nous contacter en utilisant notre [Aspose.Words Forum de la Famille de Produits](https://forum.aspose.com/c/words/8) si vous rencontrez des problèmes pour configurer ou exécuter les exemples.

{{% /alert %}}

## Contribuer à l'amélioration des Exemples

Si vous souhaitez ajouter ou améliorer un exemple, nous vous encourageons à contribuer au projet. Tous les exemples et projets de vitrine de ce référentiel sont open source et peuvent être librement utilisés dans vos applications.

Vous pouvez bifurquer le référentiel, modifier le code source et créer une pull request pour contribuer. Nous examinerons les modifications et les inclurons dans le référentiel si cela s'avère utile.

## Voir Aussi

- [Détails sur l'installation du gestionnaire de paquets NuGet ](https://docs.microsoft.com/nuget/guides/install-nuget)
