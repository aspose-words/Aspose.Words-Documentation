---
title: Spécifiez l'emplacement des polices TrueType en C++
second_title: Aspose.Words pour C++
articleTitle: Spécifiez TrueType Emplacement des polices
linktitle: Spécifiez TrueType Emplacement des polices
description: "Spécifiez diverses sources de polices TrueType: dossier système, sources utilisateur, chargement des polices à partir d'un flux, d'un système de fichiers ou de la mémoire."
type: docs
weight: 30
url: /fr/cpp/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Cette rubrique décrit le comportement par défaut de Aspose.Words lorsqu'il recherche des polices TrueType, y compris les différences spécifiques au système d'exploitation, et montre comment spécifier les sources de polices utilisateur.

La classe [FontSourceBase](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase) est utilisée pour spécifier diverses sources de polices. Il existe plusieurs implémentations de la classe **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/memoryfontsource/)

Les détails d'implémentation pour certaines classes sont expliqués ci-dessous.

## Charger des polices à partir du système {#loading-fonts-from-system}

Il existe une classe spéciale [SystemFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/) qui est toujours utilisée par défaut. Il représente toutes les polices TrueType installées sur le système. Par conséquent, il est possible de créer une liste de sources avec **SystemFontSource** et toutes les autres sources requises:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-SetFontsFolder.cpp" >}}

Une seule instance de la classe **SystemFontSource** est définie par défaut dans [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/). Sur différents systèmes d'exploitation, les polices peuvent être situées à des endroits différents. Cependant, l'utilisation d'une instance **FontSettings** pour chaque document n'est pas une solution optimale. Dans la majorité des cas, l'utilisation de [DefaultInstance](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/get_defaultinstance/) devrait suffire.

Les instances par document ne sont nécessaires que s'il est nécessaire d'utiliser différentes sources de polices pour différents documents, ce qui est un cas rare. L'utilisation de plusieurs instances **FontSettings** diminue les performances car elles ne partagent pas le cache.

### Où Aspose.Words Recherche TrueType Polices sur Windows

Dans la plupart des cas, les utilisateurs Windows ne rencontrent pas de problèmes importants avec des polices manquantes ou des mises en page incorrectes. En règle générale, Aspose.Words parcourt un document et lorsqu'il rencontre le lien d'une police, il récupère avec succès les données de la police à partir du dossier système.

Sur Windows, Aspose.Words prend d'abord toutes les polices disponibles dans le dossier _%windir%\Fonts. Ce paramètre fonctionnera pour vous la plupart du temps. Vous ne spécifiez vos propres dossiers de polices que si vous en avez besoin. Aspose.Words recherche également les polices supplémentaires enregistrées dans la clé de registre HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. De plus, Windows 10 permet l'installation de polices pour l'utilisateur actuel. Les polices sont placées dans le dossier %userprofile%\AppData\Local\Microsoft\Windows\Fonts et également spécifiées dans le registre HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, où Aspose.Words recherchera ces polices.

Si un document contient des polices incorporées, Aspose.Words peut lire les données de police pertinentes du document et les utiliser pour créer la mise en page du document. Les documents peuvent également contenir des liens vers des polices qui ne se trouvent pas dans les dossiers système, auquel cas les scénarios suivants s'appliquent:

- Les utilisateurs peuvent configurer de nouvelles sources de polices via la classe **FontSettings**
- Aspose.Words peut essayer de remplacer la police manquante par une police similaire

{{% alert color="primary" %}}

Le rendu Aspose.Words sur un serveur ne fonctionnera généralement pas avec une application ASP.NET configurée pour s'exécuter sous le niveau de confiance moyen, car elle interdit l'accès au registre et limite l'accès au système de fichiers.

{{% /alert %}}

### Polices sur des systèmes autres queWindows

Aspose.Words recherchera les polices dans les dossiers de polices système. Une liste de ces dossiers peut être vue par la méthode [GetSystemFontFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Si aucune police prise en charge n'est trouvée, Aspose.Words utilisera la police par défaut intégrée Fanwood.ttf.

Étant donné que les métriques de police des systèmes d'exploitation Windows et nonWindows sont différentes, Aspose.Words fait tout son possible pour trouver une police similaire et créer une mise en page similaire à l'original. Cependant, ce n'est pas toujours possible. Dans ces cas, la classe **FontSettings** doit être utilisée pour ajouter des polices personnalisées ou des règles de substitution.

#### Où Aspose.Words Recherche TrueType Polices sur Linux

Différentes distributions Linux peuvent stocker des polices dans des dossiers différents. Aspose.Words recherche des polices à plusieurs endroits. Par défaut, Aspose.Words recherche les polices dans tous les emplacements suivants: * / usr/share / fonts* / usr / local/share / fonts*/usr/X11R6/lib/X11 / fontsThis le comportement par défaut fonctionnera pour la plupart des distributions Linux, mais il n'est pas garanti qu'il fonctionnera tout le temps, auquel cas vous devrez peut-être spécifier explicitement l'emplacement des polices true type. Pour ce faire, vous devez savoir où les polices TrueType sont installées sur votre distribution Linux.

#### Où Aspose.Words Recherche TrueType Polices sur Mac OS X

Aspose.Words recherche les polices dans le dossier/Library / Fonts, qui est l'emplacement standard pour les polices TrueType sur Mac OS X. Bien que ce paramètre fonctionne pour vous la plupart du temps, vous devrez peut-être spécifier vos propres dossiers de polices dans le cas où vous en avez besoin.

#### TrueType Polices sur Android

Sur Android, le flux de travail des polices est encapsulé dans la classe Typeface.
Il existe cinq types de polices de caractères, chaque police de caractères représente un groupe de familles de polices similaires:

- PAR DÉFAUT
- PAR DÉFAUT_BOLD
- MONOSPACE
- SANS_SÉRIF
- EMPATTEMENT

Par exemple, selon Android [polices.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) fichier de configuration, "times" appartient à la famille "serif" donc NotoSerif - Régulier.ttf sera utilisé lorsque des "heures" sont demandées:

**Polices.xml**

{{< highlight html >}}
<family name="serif">
        <font weight="400" style="normal">NotoSerif-Regular.ttf</font>
        <font weight="700" style="normal">NotoSerif-Bold.ttf</font>
        <font weight="400" style="italic">NotoSerif-Italic.ttf</font>
        <font weight="700" style="italic">NotoSerif-BoldItalic.ttf</font>
</family>
<alias name="times" to="serif" />
<alias name="times new roman" to="serif" />
{{< /highlight >}}

Pour rechercher des polices similaires, les stratégies décrites précédemment sont utilisées.

En plus d'eux, Aspose.Words a sa propre liste de remplacements pour la plate-forme Android.

Supposons que le document contienne la police PMingLiU-ExtB, tout d'abord, Aspose.Words recherche la police requise dans les sources système.

La liste par défaut des dossiers de polices Android est:

- /système / polices
- /système / police
- /données / polices

Le Aspose.Words regarde à travers les sources définies par l'utilisateur qui ont été définies avec la méthode:

**Java**

{{< highlight csharp >}}
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}

Dans le cas où un remplacement explicite a été spécifié, Aspose.Words remplace la police manquante par la suggestion de l'utilisateur:

**Java**

{{< highlight csharp >}}
fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->SetSubstitutes(u"PMingLiU-ExtB", System::MakeArray<System::String>({ u"Liberation Serif" }));
{{< /highlight >}}

Si aucune des règles n'a fonctionné, Aspose.Words vérifie la table de remplacement interne. Si le tableau contient des informations sur un bon ajustement, la police est remplacée. Dans notre cas, Aspose.Words sélectionnera `Typeface.SERIF`. Mais si le tableau ne sait rien de la police demandée, Aspose.Words sélectionne une police basée sur des règles spéciales MS Word ou sur la distance la plus proche dans l'espace Panose.

#### TrueType Polices sur .NET Core et Xamarin

Pour .NET Core et Xamarin, la même règle s'applique que pour Aspose.Words pour Java version. Par défaut, toutes les polices système de la plate-forme sur laquelle l'application s'exécute sont disponibles.
La liste des dossiers dans lesquels la recherche sera effectuée peut être trouvée en appelant la méthode:

**Java**

{{< highlight csharp >}}
SystemFontSource()->GetAvailableFonts()
{{< /highlight >}}

## Charger les polices à partir du dossier {#loading-fonts-from-folder}

Si le document en cours de traitement contient des liens vers des polices qui ne sont pas sur le système, ou si vous ne souhaitez pas les ajouter au dossier système, ou si vous n'avez pas les autorisations, la meilleure solution serait d'ajouter un dossier avec vos propres polices en utilisant la méthode [SetFontsSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontssources/). Cela permettra de remplacer la source système par une source utilisateur. Aspose.Words ne recherchera plus les polices dans le registre ou le dossier Windows\Font et recherchera uniquement les polices dans le ou les dossiers spécifiés. La méthode [GetFontSources](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/getfontssources/) renverra les valeurs correspondantes.

### Spécifiez un ou Plusieurs dossiers de polices

Les méthodes [SetFontsFolder](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolder/) et [SetFontsFolders](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/setfontsfolders/) sont des raccourcis vers la méthode **SetFontSources** avec une ou plusieurs instances [FolderFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/folderfontsource/). Ces méthodes sont utilisées pour indiquer où Aspose.Words doit rechercher les polices. Si un dossier n'existe pas ou n'est pas accessible, Aspose.Words ignore simplement ce dossier. Si tous les dossiers, y compris les sources pour la substitution de police, ont été ignorés, Aspose.Words utilisera la police Fanwood par défaut.

L'exemple suivant montre comment définir le dossier ou la source, que Aspose.Words utilisera ensuite pour rechercher les polices TrueType lors du rendu ou de l'incorporation des polices:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cpp" >}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Un paramètre booléen supplémentaire contrôle si les polices sont analysées de manière récursive dans tous les dossiers, analysant ainsi tous les dossiers enfants d'un dossier spécifié. L'exemple suivant montre comment définir Aspose.Words pour rechercher les polices TrueType dans plusieurs dossiers lors du rendu ou de l'incorporation de polices:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Notez les priorités. S'il existe des polices avec le même nom de famille et le même style dans différentes sources de polices, Aspose.Words sélectionnera la police de la source avec une priorité plus élevée. Voir la description du champ" Priorité " ci-dessous.

Si vous ne souhaitez pas du tout utiliser de polices système, Aspose.Words vous permet de les ignorer et d'utiliser uniquement vos propres polices:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
fontSettings->SetFontsFolder(u"C:\\MyFonts\\", true);
{{< /highlight >}}


### Propriété Prioritaire

La propriété [Priority](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/get_priority/) est utilisée lorsqu'il existe des polices avec le même nom de famille et le même style dans différentes sources de polices. Dans ce cas, Aspose.Words sélectionne la police de la source avec la valeur de priorité la plus élevée. Par exemple, il existe une ancienne version de la police dans le dossier système et le client a ajouté une nouvelle version de la même police dans un dossier personnalisé.

**C++**

{{< highlight cpp >}}
System::SharedPtr<FolderFontSource> folderFontSource = System::MakeObject<FolderFontSource>(u"C:\\MyFonts\\", true, 1);
{{< /highlight >}}

## Charger des polices à partir du flux {#loading-fonts-from-stream}

Aspose.Words fournit la classe [StreamFontSource](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource), qui permet de charger des polices à partir du flux. Pour utiliser la source de police stream, un utilisateur doit créer une classe dérivée de **StreamFontSource** et fournir une implémentation de la méthode [OpenFontDataStream](https://reference.aspose.com/words/cpp/aspose.words.fonts/streamfontsource/openfontdatastream/). La méthode **OpenFontDataStream** peut être appelée plusieurs fois. Pour la première fois, il sera appelé lorsque Aspose.Words analysera les sources de polices fournies pour obtenir une liste des polices disponibles. Plus tard, il peut être appelé si la police est utilisée dans le document pour analyser les données de police et pour incorporer les données de police dans certains formats de sortie. **StreamFontSource** peut être utile car il permet de charger les données de police uniquement lorsque cela est nécessaire, et de ne pas les stocker en mémoire pour la durée de vie [FontSettings](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ResourceSteamFontSource-ResourceSteamFontSource.cpp" >}}

**StreamFontSource**

## Enregistrer et charger un Cache de recherche de polices

Lors de la première recherche d'une police, Aspose.Words parcourt les sources de polices spécifiées par l'utilisateur et forme un cache de recherche de polices basé sur les données de ces sources. Ainsi, le cache collectera des informations sur les polices disponibles: famille de polices, style, nom complet de la police, etc. Lors des appels suivants, Aspose.Words recherche des informations sur la police souhaitée par son nom dans le cache de recherche de polices, après quoi il analyse les fichiers spécifiés pour utiliser la police.

La procédure d'analyse de tous les fichiers de polices disponibles pour initialiser le cache prend beaucoup de temps. Aspose.Words vous permet d'enregistrer et de charger le cache à l'aide de la méthode [SaveSearchCache](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsettings/savesearchcache/) pour résoudre le problème de performances. Autrement dit, l'utilisateur peut charger un cache précédemment enregistré à partir d'un fichier et ignorer l'étape d'analyse de tous les fichiers de polices disponibles.

{{% alert color="primary" %}}

Utilisez la même méthode **SaveSearchCache** pour mettre à jour le cache.

{{% /alert %}}

{{% alert color="primary" %}}

Le cache convient également à d'autres scénarios lorsque des polices sont chargées sur le réseau. Ou pour les scénarios où il n'y a aucun moyen de stocker une instance `FontSettings` avec un cache chargé.

{{% /alert %}}

## Obtenir une liste des polices disponibles {#get-a-list-of-available-fonts}

Si vous souhaitez obtenir la liste des polices disponibles, qui, par exemple, peuvent être utilisées pour afficher un document PDF, vous pouvez utiliser la méthode [GetAvailableFonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontsourcebase/getavailablefonts/), comme illustré dans l'exemple de code suivant. La classe [PhysicalFontInfo](https://reference.aspose.com/words/cpp/aspose.words.fonts/physicalfontinfo) spécifie des informations sur la police physique disponible pour le moteur de polices Aspose.Words:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cpp" >}}
