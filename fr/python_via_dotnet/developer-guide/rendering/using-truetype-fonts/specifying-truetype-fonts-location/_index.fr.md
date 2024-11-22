---
title: Spécifier l'emplacement des polices TrueType
second_title: Aspose.Words pour Python via .NET
articleTitle: Spécifier l'emplacement des polices TrueType
linktitle: Spécifier l'emplacement des polices TrueType
description: "Spécifiez diverses sources de polices TrueType: dossier système, sources utilisateur, chargement de polices à partir d'un flux, d'un système de fichiers ou d'une mémoire à l'aide de Python."
type: docs
weight: 30
url: /fr/python-net/specifying-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Cette rubrique décrit le comportement par défaut de Aspose.Words lors de la recherche de polices TrueType, y compris les différences spécifiques au système d'exploitation, et montre comment spécifier les sources de polices utilisateur.

La classe [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/) est utilisée pour spécifier diverses sources de polices. Il existe plusieurs implémentations de la classe [FontSourceBase](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/):

- [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/memoryfontsource/)

Les détails d’implémentation de certaines classes sont expliqués ci-dessous.

## Chargement des polices à partir du système

Il existe une classe [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) spéciale qui est toujours utilisée par défaut. Il représente toutes les polices TrueType installées sur le système. Par conséquent, il est possible de créer une liste de sources avec [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) et toute autre source requise:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFolders.py" >}}

Une seule instance de la classe [SystemFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/) est définie par défaut dans [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). Sur différents systèmes d'exploitation, les polices peuvent être situées à différents endroits. Cependant, utiliser une instance [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) pour chaque document n'est pas une solution optimale. Dans la majorité des cas, l’utilisation de [default_instance](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/default_instance/) devrait suffire.

Les instances par document ne sont nécessaires que s'il est nécessaire d'utiliser différentes sources de polices pour différents documents, ce qui est un cas rare. L'utilisation de plusieurs instances [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) diminue les performances car elles ne partagent pas le cache.

### Où Aspose.Words recherche les polices TrueType sur Windows

Dans la plupart des cas, les utilisateurs de Windows ne sont pas confrontés à des problèmes importants liés aux polices manquantes ou aux mises en page incorrectes. En règle générale, Aspose.Words parcourt un document et, lorsqu'il rencontre le lien d'une police, récupère avec succès les données de police du dossier système.

Sur Windows, Aspose.Words récupère d'abord toutes les polices disponibles du dossier _%windir%\Fonts. Ce paramètre fonctionnera pour vous la plupart du temps. Vous ne spécifiez vos propres dossiers de polices que si vous en avez besoin. Aspose.Words pour .NET recherche également des polices supplémentaires enregistrées dans la clé de registre *HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts*. De plus, Windows 10 permet l'installation de polices pour l'utilisateur actuel. Les polices sont placées dans le dossier *%userprofile%\AppData\Local\Microsoft\Windows\Fonts* et également spécifiées dans le registre *HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts*, où Aspose.Words recherchera ces polices.

Si un document contient des polices intégrées, Aspose.Words peut lire les données de police pertinentes du document et les utiliser pour créer la mise en page du document. Les documents peuvent également contenir des liens vers des polices qui ne se trouvent pas dans les dossiers système, auquel cas les scénarios suivants se produisent:

- Les utilisateurs peuvent configurer de nouvelles sources de polices via la classe [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/)
- Aspose.Words peut essayer de remplacer la police manquée par une police similaire


### Polices sur les systèmes non Windows

Aspose.Words recherchera les polices dans les dossiers de polices système. Une liste de ces dossiers peut être vue par la méthode [SystemFontSource.get_system_font_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/systemfontsource/get_system_font_folders/). Si aucune police prise en charge n'est trouvée, Aspose.Words utilisera la police par défaut intégrée Fanwood.ttf.

Étant donné que les métriques de police des systèmes d'exploitation Windows et non-Windows sont différentes, Aspose.Words fait tout son possible pour trouver une police similaire et créer une mise en page similaire à l'original. Cependant, ce n'est pas toujours possible. Dans ces cas, la classe [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) doit être utilisée pour ajouter des polices personnalisées ou des règles de substitution.

#### Où Aspose.Words recherche les polices TrueType sur Linux

Différentes distributions Linux peuvent stocker les polices dans différents dossiers. Aspose.Words recherche les polices à plusieurs emplacements. Par défaut, Aspose.Words recherche les polices dans tous les emplacements suivants: `/usr/share/fonts` `/usr/local/share/fonts` `/usr/X11R6/lib/X11/fonts`. Ce comportement par défaut fonctionnera pour la plupart des distributions Linux, mais il n'est pas garanti qu'il fonctionnera tout le temps, auquel cas vous devrez peut-être spécifier explicitement l'emplacement des polices de type true. Pour ce faire, vous devez savoir où les polices TrueType sont installées sur votre distribution Linux.

#### Où Aspose.Words recherche les polices TrueType sur Mac OS X

Aspose.Words recherche les polices dans le dossier */Bibliothèque/Fonts*, qui est l'emplacement standard des polices TrueType sous Mac OS X. Bien que ce paramètre fonctionne pour vous la plupart du temps, vous devrez peut-être spécifier vos propres dossiers de polices dans le dossier. cas où vous en avez besoin.

## Chargement de polices à partir d'un dossier

Si le document en cours de traitement contient des liens vers des polices qui ne sont pas sur le système, ou si vous ne souhaitez pas les ajouter au dossier système, ou si vous ne disposez pas d'autorisations, la meilleure solution serait d'ajouter un dossier avec vos propres polices en utilisant la méthode [FontSettings.set_fonts_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/). Cela permettra de remplacer la source système par une source utilisateur. Aspose.Words ne recherchera plus les polices dans le registre ou le dossier Windows\Font et recherchera uniquement les polices dans le(s) dossier(s) spécifié(s). La méthode [FontSettings.get_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/get_fonts_sources/) renverra les valeurs correspondantes.

### Spécification d'un ou de plusieurs dossiers de polices

Les méthodes [FontSettings.set_fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folder/) et [FontSettings.set_fonts_folders](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_folders/) sont des raccourcis vers la méthode [FontSettings.set_font_sources](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/set_fonts_sources/) avec une ou plusieurs instances [FolderFontSource](https://reference.aspose.com/words/python-net/aspose.words.fonts/folderfontsource/). Ces méthodes sont utilisées pour indiquer où Aspose.Words doit rechercher les polices. Si un dossier n'existe pas ou n'est pas accessible, Aspose.Words ignore simplement ce dossier. Si tous les dossiers, y compris les sources de substitution de police, ont été ignorés, Aspose.Words utilisera la police Fanwood par défaut.

L'exemple suivant montre comment définir le dossier ou la source que Aspose.Words utilisera ensuite pour rechercher les polices TrueType lors du rendu ou de l'incorporation de polices:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetTrueTypeFontsFolder.py" >}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

Un paramètre booléen supplémentaire contrôle si les polices sont analysées de manière récursive dans tous les dossiers, analysant ainsi tous les dossiers enfants d'un dossier spécifié. L'exemple suivant montre comment configurer Aspose.Words pour qu'il recherche les polices TrueType dans plusieurs dossiers lors du rendu ou de l'incorporation de polices:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersMultipleFolders.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Notez les priorités. S'il existe des polices avec le même nom de famille et le même style dans différentes sources de polices, Aspose.Words sélectionnera la police de la source avec une priorité plus élevée. Voir la description du champ "priorité" ci-dessous.

Si vous ne souhaitez pas du tout utiliser les polices système, Aspose.Words vous permet de les ignorer et d'utiliser uniquement vos propres polices:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersDefaultInstance.py" >}}

### Propriété prioritaire

La propriété **priorité** est utilisée lorsqu'il existe des polices portant le même nom de famille et le même style dans différentes sources de polices. Dans ce cas, Aspose.Words sélectionne la police de la source avec la valeur de priorité la plus élevée. Par exemple, il existe une ancienne version de la police dans le dossier système et le client a ajouté une nouvelle version de la même police dans un dossier personnalisé.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontsFoldersWithPriority.py" >}}

## Obtenir une liste des polices disponibles

Si vous souhaitez obtenir la liste des polices disponibles, qui peuvent, par exemple, être utilisées pour restituer un document PDF, vous pouvez utiliser la méthode [get_available_fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsourcebase/get_available_fonts/), comme indiqué dans l'exemple de code suivant. La classe [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) spécifie des informations sur la police physique disponible pour le moteur de polices Aspose.Words:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetListOfAvailableFonts.py" >}}
