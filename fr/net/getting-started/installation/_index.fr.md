---
title: Installation
second_title: Aspose.Words pour .NET
articleTitle: Installation
linktitle: Installation
description: "Installez Aspose.Words pour .NET à l'aide d'outils Visual Studio tels que Manage NuGet Packages ou Package Manager Console et le programme d'installation MSI. Utilisez l'autorisation Full Trust définie dans C#."
type: docs
weight: 10
url: /fr/net/installation/
timestamp: 2024-01-27-14-07-04
---

Assurez-vous que votre machine respecte le [Configuration requise](/words/fr/net/system-requirements/) avant de commencer.

Cet article explique comment installer Aspose.Words pour .NET sur votre ordinateur.

## Installer ou mettre à jour Aspose.Words pour .NET à l'aide de Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet est le moyen le plus simple de télécharger et d'installer des API [Aspose.Words pour .NET](https://www.nuget.org/packages/Aspose.Words/). Pour le faire, suivez ces étapes:

1. Ouvrez *Microsoft Visual Studio* et *Manage NuGet Packages* dans le menu pour ouvrir le gestionnaire de packages
2. Recherchez "aspose" ou "aspose.words" pour trouver le Aspose API souhaité.<br>
   <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-mots-nuget" style="width:800px"/>
3. Sélectionnez le Aspose API souhaité et cliquez sur "Installer"

Le API sélectionné sera téléchargé et référencé dans votre projet.

Vous pouvez également mettre à jour Aspose.Words pour .NET vers la version souhaitée en utilisant *Manage NuGet Packages*.

## Installer ou mettre à jour Aspose.Words à l'aide de Package Manager Console

Vous pouvez également installer ou mettre à jour Aspose.Words pour les API .NET à l'aide du *Package Manager Console*. Pour le faire, suivez ces étapes:

1. Ouvrez *Microsoft Visual Studio* et *Package Manager Console* dans le menu pour ouvrir la console du gestionnaire de packages.<br>
   <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2. Tapez la commande `Install-Package Aspose.Words` et appuyez sur Entrée pour installer la dernière version complète dans votre application<br>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br>
   {{% alert color="primary" %}}De plus, vous pouvez ajouter le suffixe `-prerelease` à la commande pour spécifier que la dernière version, y compris les correctifs, doit également être installée.{{% /alert %}}
3. Une fois téléchargé, vous verrez des messages de confirmation<br>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br>
   {{% alert color="primary" %}}Si vous n'êtes pas familier avec le [Asposer le CLUF](https://about.aspose.com/legal/eula/), il est recommandé de lire la licence référencée dans l'URL.{{% /alert %}}
4. Vous constaterez peut-être maintenant que Aspose.Words a été ajouté et référencé avec succès dans votre candidature pour vous.<br>
   <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-références" style="width:400px"/>

Dans *Package Manager Console*, vous pouvez également utiliser la commande `Update-Package Aspose.Words` pour rechercher les mises à jour du package Aspose.Words et les installer le cas échéant. Vous pouvez également ajouter le suffixe `-prerelease` pour mettre à jour la dernière version.

## Installez Aspose.Words pour .NET à l'aide du programme d'installation

Aspose.Words pour .NET peut être installé en téléchargeant directement le programme d'installation MSI à partir du [rubrique téléchargements](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

Vous devez être connecté pour télécharger le programme d'installation. Si vous n'êtes pas encore inscrit, vous pouvez vous inscrire gratuitement.

{{% /alert %}}

Pour installer Aspose.Words pour .NET, procédez comme suit:

1. Téléchargez `Aspose.Words_`{LatestVersion}.msi à partir du [rubrique téléchargements](https://releases.aspose.com/words/)
2. Double-cliquez sur le fichier téléchargé, démarrant ainsi l'assistant d'installation, suivez les instructions de l'assistant d'installation.<br>
   <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. Lorsque l'assistant d'installation termine l'installation, les fichiers requis seront disponibles dans le dossier au chemin de dossier fourni.<br>
   <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4. Ouvrez votre solution/projet dans Visual Studio
5. Cliquez avec le bouton droit sur votre projet dans *Explorateur de solutions* et ajoutez la référence aux assemblys installés
6. Les assemblys installés Aspose.Words pour .NET apparaîtront dans les extensions sous la section Assemblages – sélectionnez simplement le composant DLL requis<br>
   <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. Enfin, cliquez sur OK

## Considérations lors de l'exécution dans un environnement Server partagé

Il est recommandé d'exécuter tous les composants Aspose .NET avec l'ensemble d'autorisations *Full Trust*. En effet, le composant Aspose .NET a parfois besoin d'accéder aux paramètres de registre et aux fichiers situés à des endroits autres que le répertoire virtuel, comme la lecture des polices. De plus, les composants `Aspose.NET` sont basés sur les classes système .NET de base, dont certaines nécessitent également l'autorisation *Full Trust* pour s'exécuter dans certains cas.

Les fournisseurs de services Internet hébergeant plusieurs applications de différentes sociétés appliquent pour la plupart le niveau de sécurité *Medium Trust*. Dans le cas de .NET 2.0, un tel niveau de sécurité peut imposer les contraintes suivantes, qui peuvent affecter la capacité de Aspose.Words à fonctionner correctement:

-**RegistryPermission** n'est pas disponible. Cela signifie que vous ne pouvez pas accéder au registre, qui est nécessaire pour énumérer les polices installées lors du rendu des documents.
- **FileIOPermission** est restreint. Cela signifie que vous ne pouvez accéder qu'aux fichiers de la hiérarchie de répertoires virtuels de votre application. Cela signifie également potentiellement que les polices ne peuvent pas être lues lors de l'exportation.

Pour les raisons précisées ci-dessus, il est recommandé d'exécuter Aspose.Words avec les autorisations Full Trust. Vous constaterez peut-être que certaines fonctionnalités de la bibliothèque fonctionneront lors de l'exécution de différentes tâches avec une confiance moyenne, et que d'autres ne fonctionneront pas, par exemple lors du rendu. Cela peut être lié aux appels de traitement d’image GDI+.
