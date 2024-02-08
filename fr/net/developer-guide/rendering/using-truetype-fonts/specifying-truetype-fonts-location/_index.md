---
title: Spécifier l'emplacement des polices TrueType dans C#
second_title: Aspose.Words pour .NET
articleTitle: Spécifier l'emplacement des polices TrueType
linktitle: Spécifier l'emplacement des polices TrueType
description: "Spécifiez diverses sources de polices TrueType: dossier système, sources utilisateur, chargement de polices à partir d'un flux, d'un système de fichiers ou d'une mémoire à l'aide de C#."
type: docs
weight: 30
url: /fr/net/specifying-truetype-fonts-location/
---

Cette rubrique décrit le comportement par défaut de Aspose.Words lors de la recherche de polices TrueType, y compris les différences spécifiques au système d'exploitation, et montre comment spécifier les sources de polices utilisateur.

La classe [FontSourceBase](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/) est utilisée pour spécifier diverses sources de polices. Il existe plusieurs implémentations de la classe **FontSourceBase**:

- [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource)
- [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource)
- [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource)
- [FileFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/filefontsource)
- [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource)

Les détails d’implémentation de certaines classes sont expliqués ci-dessous.

## Charger les polices à partir du système {#loading-fonts-from-system}

Il existe une classe [SystemFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/) spéciale qui est toujours utilisée par défaut. Il représente toutes les polices TrueType installées sur le système. Par conséquent, il est possible de créer une liste de sources avec **SystemFontSource** et toutes autres sources requises:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFolders-SetFontsFolders.cs" >}}

Une seule instance de la classe **SystemFontSource** est définie par défaut dans [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/). Sur différents systèmes d'exploitation, les polices peuvent être situées à différents endroits. Cependant, utiliser une instance **FontSettings** pour chaque document n'est pas une solution optimale. Dans la majorité des cas, l’utilisation du [DefaultInstance](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/defaultinstance/) devrait suffire.

Les instances par document ne sont nécessaires que s'il est nécessaire d'utiliser différentes sources de polices pour différents documents, ce qui est un cas rare. L'utilisation de plusieurs instances **FontSettings** diminue les performances car elles ne partagent pas le cache.

### Où Aspose.Words recherche les polices TrueType sur Windows

Dans la plupart des cas, les utilisateurs de Windows ne sont pas confrontés à des problèmes importants liés aux polices manquantes ou aux mises en page incorrectes. En règle générale, Aspose.Words parcourt un document et, lorsqu'il rencontre le lien d'une police, récupère avec succès les données de police du dossier système.

Sur Windows, Aspose.Words récupère d'abord toutes les polices disponibles du dossier _%windir%\Fonts. Ce paramètre fonctionnera pour vous la plupart du temps. Vous ne spécifiez vos propres dossiers de polices que si vous en avez besoin. Aspose.Words pour .NET recherche également des polices supplémentaires enregistrées dans la clé de registre HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts. De plus, Windows 10 permet l'installation de polices pour l'utilisateur actuel. Les polices sont placées dans le dossier %userprofile%\AppData\Local\Microsoft\Windows\Fonts et également spécifiées dans le registre HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts, où Aspose.Words recherchera ces polices.

Si un document contient des polices intégrées, Aspose.Words peut lire les données de police pertinentes du document et les utiliser pour créer la mise en page du document. Les documents peuvent également contenir des liens vers des polices qui ne se trouvent pas dans les dossiers système, auquel cas les scénarios suivants se produisent:

- Les utilisateurs peuvent configurer de nouvelles sources de polices via la classe **FontSettings**
- Aspose.Words peut essayer de remplacer la police manquée par une police similaire

{{% alert color="primary" %}}

Le rendu Aspose.Words sur un serveur ne fonctionnera généralement pas avec une application ASP.NET configurée pour s'exécuter sous le niveau de confiance moyen, car il interdit l'accès au registre et limite l'accès au système de fichiers.

{{% /alert %}}

### Polices sur les systèmes non Windows

Aspose.Words recherchera les polices dans les dossiers de polices système. Une liste de ces dossiers peut être vue par la méthode [GetSystemFontFolders](https://reference.aspose.com/words/net/aspose.words.fonts/systemfontsource/getsystemfontfolders/). Si aucune police prise en charge n'est trouvée, Aspose.Words utilisera la police par défaut intégrée Fanwood.ttf.

Étant donné que les métriques de police des systèmes d'exploitation Windows et non-Windows sont différentes, Aspose.Words fait tout son possible pour trouver une police similaire et créer une mise en page similaire à l'original. Cependant, ce n'est pas toujours possible. Dans ces cas, la classe **FontSettings** doit être utilisée pour ajouter des polices personnalisées ou des règles de substitution.

#### Où Aspose.Words recherche les polices TrueType sur Linux

Différentes distributions Linux peuvent stocker les polices dans différents dossiers. Aspose.Words recherche les polices à plusieurs emplacements. Par défaut, Aspose.Words recherche les polices dans tous les emplacements suivants: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fontsCe comportement par défaut fonctionnera pour la plupart des distributions Linux., mais il n'est pas garanti qu'il fonctionne tout le temps, auquel cas vous devrez peut-être spécifier explicitement l'emplacement des polices de type true. Pour ce faire, vous devez savoir où les polices TrueType sont installées sur votre distribution Linux.

#### Où Aspose.Words recherche les polices TrueType sur Mac OS X

Aspose.Words recherche les polices dans le dossier /Bibliothèque/Fonts, qui est l'emplacement standard des polices TrueType sur Mac OS X. Bien que ce paramètre fonctionne pour vous la plupart du temps, vous devrez peut-être spécifier vos propres dossiers de polices dans le cas où vous devez.

## Charger les polices du dossier {#loading-fonts-from-folder}

Si le document en cours de traitement contient des liens vers des polices qui ne sont pas sur le système, ou si vous ne souhaitez pas les ajouter au dossier système, ou si vous ne disposez pas d'autorisations, la meilleure solution serait d'ajouter un dossier avec vos propres polices en utilisant la méthode [SetFontsSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontssources/). Cela permettra de remplacer la source système par une source utilisateur. Aspose.Words ne recherchera plus les polices dans le registre ou le dossier Windows\Font et recherchera uniquement les polices dans le(s) dossier(s) spécifié(s). La méthode [GetFontSources](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/getfontssources/) renverra les valeurs correspondantes.

### Spécifier un ou plusieurs dossiers de polices

Les méthodes [SetFontsFolder](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/) et [SetFontsFolders](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/setfontsfolder/s) sont des raccourcis vers la méthode **SetFontSources** avec une ou plusieurs instances [FolderFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/folderfontsource/). Ces méthodes sont utilisées pour indiquer où Aspose.Words doit rechercher les polices. Si un dossier n'existe pas ou n'est pas accessible, Aspose.Words ignore simplement ce dossier. Si tous les dossiers, y compris les sources de substitution de police, ont été ignorés, Aspose.Words utilisera la police Fanwood par défaut.

L'exemple suivant montre comment définir le dossier ou la source que Aspose.Words utilisera ensuite pour rechercher les polices TrueType lors du rendu ou de l'incorporation de polices:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetTrueTypeFontsFolder-SetTrueTypeFontsFolder.cs" >}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

Un paramètre booléen supplémentaire contrôle si les polices sont analysées de manière récursive dans tous les dossiers, analysant ainsi tous les dossiers enfants d'un dossier spécifié. L'exemple suivant montre comment configurer Aspose.Words pour qu'il recherche les polices TrueType dans plusieurs dossiers lors du rendu ou de l'incorporation de polices:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersMultipleFolders-SetFontsFoldersMultipleFolders.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Notez les priorités. S'il existe des polices avec le même nom de famille et le même style dans différentes sources de polices, Aspose.Words sélectionnera la police de la source avec une priorité plus élevée. Voir la description du champ "Priorité" ci-dessous.

Si vous ne souhaitez pas du tout utiliser les polices système, Aspose.Words vous permet de les ignorer et d'utiliser uniquement vos propres polices:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersDefaultInstance-SetFontsFoldersDefaultInstance.cs" >}}

### Propriété prioritaire

La propriété [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) est utilisée lorsqu'il existe des polices portant le même nom de famille et le même style dans différentes sources de polices. Dans ce cas, Aspose.Words sélectionne la police de la source avec la valeur de priorité la plus élevée. Par exemple, il existe une ancienne version de la police dans le dossier système et le client a ajouté une nouvelle version de la même police dans un dossier personnalisé.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersWithPriority-SetFontsFoldersWithPriority.cs" >}}

## Charger des polices à partir de Stream {#loading-fonts-from-stream}

Aspose.Words fournit la classe [StreamFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/), qui permet de charger des polices à partir du flux. Pour utiliser la source de police de flux, un utilisateur doit créer une classe dérivée de **StreamFontSource** et fournir une implémentation de la méthode [OpenFontDataStream](https://reference.aspose.com/words/net/aspose.words.fonts/streamfontsource/openfontdatastream/). La méthode **OpenFontDataStream** peut être appelée plusieurs fois. Pour la première fois, il sera appelé lorsque Aspose.Words analysera les sources de polices fournies pour obtenir une liste des polices disponibles. Plus tard, il peut être appelé si la police est utilisée dans le document pour analyser les données de police et intégrer les données de police dans certains formats de sortie. **StreamFontSource** peut être utile car il permet de charger les données de police uniquement lorsque cela est nécessaire, et de ne pas les stocker dans la mémoire pendant toute la durée de vie du [Paramètres de police](https://fontsettings/).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ResourceSteamFontSourceExample-ResourceSteamFontSourceExample.cs" >}}

**StreamFontSource** est une alternative à [MemoryFontSource](https://reference.aspose.com/words/net/aspose.words.fonts/memoryfontsource/) puisqu'il est toujours possible de charger un flux en mémoire et de le transmettre en **MemoryFontSource**. La différence est que le **MemoryFontSource** est stocké en mémoire à tout moment et que le **StreamFontSource** est chargé à la demande et supprimé immédiatement. Mais il peut être chargé plusieurs fois, comme décrit ci-dessus. Dans certains cas, **MemoryFontSource** est préférable, et dans d'autres, **StreamFontSource**.

## Enregistrer et charger un cache de recherche de polices

Lors de la première recherche d'une police, Aspose.Words parcourt les sources de polices spécifiées par l'utilisateur et forme un cache de recherche de polices basé sur les données de ces sources. Ainsi, le cache collectera des informations sur les polices disponibles: famille de polices, style, nom complet de la police, etc. Lors des appels suivants, Aspose.Words recherche des informations sur la police souhaitée par son nom dans le cache de recherche de polices, après quoi il analyse les fichiers spécifiés pour utiliser la police.

La procédure d'analyse de tous les fichiers de polices disponibles pour initialiser le cache prend beaucoup de temps. Aspose.Words vous permet de sauvegarder et de charger le cache à l'aide de la méthode [SaveSearchCache](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/savesearchcache/) pour résoudre le problème de performances. Autrement dit, l'utilisateur peut charger un cache précédemment enregistré à partir d'un fichier et ignorer l'étape d'analyse de tous les fichiers de polices disponibles.

{{% alert color="primary" %}}

Utilisez la même méthode **SaveSearchCache** pour mettre à jour le cache.

{{% /alert %}}

L'exemple de code suivant montre comment préparer les sources de polices et générer le cache de recherche de polices à l'avance:

{{< highlight csharp >}}
// Prepare font sources and generate font search cache beforehand.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource });
settings.SaveSearchCache(cacheOutputStream);
{{< /highlight >}}

L'exemple de code suivant montre comment définir les sources de polices et charger le cache de recherche avant de traiter les documents:

{{< highlight csharp >}}
// Set font sources and load search cache before processing documents. Note that sources should be the same as when saving font search cache.
FileFontSource fileSource = new FileFontSource(filePath, fileSourcePriority, fileSourceKey);
MemoryFontSource memorySource = new MemoryFontSource(fontData, memorySourcePriority, memorySourceKey);
StreamFontSource streamSource = new SteamFontSourceMemoryImpl(streamSourcePriority, streamSourceKey);

FontSettings settings = new FontSettings();

settings.SetFontsSources(new FontSourceBase[] { fileSource, memorySource, streamSource }, cacheInputStream);
{{< /highlight >}}

{{% alert color="primary" %}}

Le cache de recherche de polices est idéal pour l'intégration de Aspose.Words dans AWS Lambda en raison d'un certain nombre de limitations. Par exemple, sur la taille du conteneur principal et, par conséquent, sur le nombre de polices.

Le cache convient également à d'autres scénarios lorsque les polices sont chargées sur le réseau. Ou pour les scénarios dans lesquels il n'existe aucun moyen de stocker une instance `FontSettings` avec un cache chargé.

{{% /alert %}}

## Obtenez une liste des polices disponibles {#get-a-list-of-available-fonts}

Si vous souhaitez obtenir la liste des polices disponibles, qui peuvent, par exemple, être utilisées pour restituer un document PDF, vous pouvez utiliser la méthode [GetAvailableFonts](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/getavailablefonts/), comme indiqué dans l'exemple de code suivant. La classe [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) spécifie des informations sur la police physique disponible pour le moteur de polices Aspose.Words:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSources-GetListOfAvailableFonts.cs" >}}
