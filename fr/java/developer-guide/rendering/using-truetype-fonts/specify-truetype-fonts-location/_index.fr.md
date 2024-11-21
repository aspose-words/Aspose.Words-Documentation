---
title: Préciser Vrai Saisissez les polices dans Java
second_title: Aspose.Words pour Java
articleTitle: Préciser Vrai Type de polices Emplacement
linktitle: Préciser Vrai Type de polices Emplacement
description: "Spécifier divers Vrai Type de police sources: dossier système, sources utilisateur, chargement de polices à partir d'un flux, d'un système de fichiers ou de mémoire en utilisant Java."
type: docs
weight: 30
url: /fr/java/specify-truetype-fonts-location/
timestamp: 2024-10-24-11-44-28
---

Ce sujet décrit le comportement par défaut de Aspose.Words quand il recherche les polices TrueType, y compris les différences spécifiques au système d'exploitation, et montre comment spécifier les sources de police utilisateur.

Les [FontSourceBase](https://reference.aspose.com/words/java/com.aspose.words/fontsourcebase/) class est utilisé pour spécifier différentes sources de police. Il y a plusieurs mises en œuvre de **FontSourceBase** classe:

- [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/)
- [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/)
- [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/)
- [FileFontSource](https://reference.aspose.com/words/java/com.aspose.words/filefontsource/)
- [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/)

Les détails de mise en œuvre de certaines classes sont expliqués ci-dessous.

## Charger les polices du système {#loading-fonts-from-system}

Il y a une spéciale [SystemFontSource](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/) classe qui est toujours utilisée par défaut. Il représente toutes les polices TrueType installées sur le système. Par conséquent, il est possible de créer une liste de sources avec **SystemFontSource** et toute autre source requise:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolder.java" >}}

Une seule instance **SystemFontSource** classe est définie par défaut dans [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Sur différents systèmes d'exploitation, les polices peuvent être situées à différents endroits. Toutefois, **FontSettings** par exemple pour chaque document n'est pas une solution optimale. Dans la majorité des cas, [DefaultInstance](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#getDefaultInstance) ça devrait suffire.

Des instances par document ne sont nécessaires que s'il est nécessaire d'utiliser différentes sources de police pour différents documents, ce qui est rare. Utilisation de plusieurs **FontSettings** les cas diminuent les performances parce qu'ils ne partagent pas le cache.

### Où Aspose.Words Recherche des polices TrueType sur Windows

Dans la plupart des cas, Windows les utilisateurs ne rencontrent pas de problèmes importants avec les polices manquées ou les mises en page incorrectes. En général, Aspose.Words passe par un document, et quand il rencontre un lien de police, il récupère avec succès les données de police dans le dossier système.

À <span notrans="<span notrans=" Windows"=""></span>""> Aspose.Words d'abord prend toutes les polices disponibles de la _%windir%\Fonts dossier. Ce réglage fonctionnera pour vous la plupart du temps. Vous ne spécifiez vos propres dossiers de polices que si vous en avez besoin. Aspose.Words recherche également des polices supplémentaires enregistrées dans le HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts clé de registre. En outre, Windows 10 permet l'installation de polices pour l'utilisateur actuel. Les polices sont placées dans la %userprofile%\AppData\Local\Microsoft\Windows\Fonts dossier et également spécifié dans le HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Fonts registre, où Aspose.Words cherchera ces polices.

Si un document contient des polices intégrées, Aspose.Words peut lire les données de police pertinentes du document et l'utiliser pour créer la mise en page du document. Les documents peuvent aussi contenir des liens vers des polices qui ne sont pas dans les dossiers système, auquel cas les scénarios suivants fonctionnent:

- Les utilisateurs peuvent configurer de nouvelles sources de police **FontSettings** classe
- Oui. Aspose.Words peut essayer de remplacer la police manquée par une police similaire

### Polices sur non-Windows Systèmes

Aspose.Words cherchera les polices dans les dossiers de police système. Une liste de ces dossiers peut être vue par la [GetSystemFontFolders](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getSystemFontFolders) méthode. Si aucune police supportée n'est trouvée, Aspose.Words utilisera la police par défaut intégrée Fanwood.ttf.

Depuis la police métriques de Windows et nonWindows OS sont différents, Aspose.Words fait tout ce qui est possible pour trouver une police similaire et construire une mise en page similaire à l'original. Cependant, ce n'est pas toujours possible. Dans ces cas, **FontSettings** classe doit être utilisé pour ajouter des polices personnalisées ou des règles de substitution.

#### Où Aspose.Words Recherche des polices TrueType sur Linux

Différent Linux distributions peuvent stocker des polices dans différents dossiers. Aspose.Words recherche des polices dans plusieurs endroits. Par défaut, Aspose.Words recherche les polices dans tous les emplacements suivants: * /usr/share/fonts* /usr/local/share/fonts* /usr/X11R6/lib/X11/fonts Ce comportement par défaut fonctionnera pour la plupart des Linux distributions, mais il n'est pas garanti de travailler tout le temps, auquel cas vous pourriez avoir besoin de spécifier l'emplacement de true tapez les polices explicitement. Pour ce faire, vous devez savoir où les polices TrueType sont installées sur votre Linux la distribution.

#### Où Aspose.Words Recherche de polices TrueType sur Mac OS X

Aspose.Words recherche des polices dans le dossier /Library/Fonts, qui est l'emplacement standard pour les polices TrueType sur Mac OS X. Bien que ce paramètre fonctionne pour vous la plupart du temps, vous devrez peut-être spécifier vos propres dossiers de polices dans le cas où vous en avez besoin.

#### Polices TrueType activées Android

À Android, Le workflow de polices est encapsulé dans la classe Typeface.
Il existe cinq types de polices de caractères, chaque police de caractères représente un groupe de polices similaires:

- DEFAULT
- DÉFAUT
- MONOSPACE
- SANS_SERIF
- SÉRIF

Par exemple, selon AndroidAutres [polices.xml](https://androidxref.com/9.0.0_r3/xref/frameworks/base/data/fonts/fonts.xml) fichier de configuration , -times , appartient à la famille -serif , de sorte que NotoSerif-Regular.ttf sera utilisé lorsque -times est demandé:

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

Pour rechercher des polices similaires, les stratégies décrites précédemment sont utilisées

En plus d'eux, Aspose.Words a sa propre liste de remplacement pour le Android plate-forme.

Disons que le document contient la police PMingLiU-ExtB, tout d'abord, Aspose.Words recherche la police requise dans les sources du système.

La liste par défaut de Android Les dossiers de police sont:

-/système/fonds
- /système/fond
- /données/fonds

Les Aspose.Words examine les sources définies par l'utilisateur qui ont été définies avec la méthode:

**Java**

{{< highlight csharp >}}
fontSettings.setFontsFolder("/home/user/MyFonts", true);
{{< /highlight >}}

Si un remplacement explicite a été spécifié, Aspose.Words remplace la police manquante par la suggestion de l'utilisateur:

**Java**

{{< highlight csharp >}}
fontSettings.getSubstitutionSettings().getTableSubstitution().setSubstitutes("PMingLiU-ExtB", "Liberation Serif");
{{< /highlight >}}

Si aucune des règles n'a fonctionné, Aspose.Words vérifier la table de remplacement interne. Si la table contient des informations sur un bon ajustement, la police est remplacée. Dans notre cas Aspose.Words sélectionnera `Typeface.SERIF`. Mais si la table ne sait rien de la police demandée alors Aspose.Words prend une police basée sur les règles spéciales MS Word ou la distance la plus proche dans l'espace Panose.

#### Polices TrueType activées .NET Core et Xamarin

Pour .NET Core et Xamarin la même règle s'applique Aspose.Words pour Java de la version française. Par défaut, toutes les polices système de la plate-forme sur laquelle l'application fonctionne sont disponibles.
La liste des dossiers où la recherche sera effectuée peut être trouvée en appelant la méthode:

**Java**

{{< highlight csharp >}}
SystemFontSource().getAvailableFonts()
{{< /highlight >}}

## Charger les polices du dossier {#loading-fonts-from-folder}

Si le document en cours de traitement contient des liens vers des polices qui ne sont pas sur le système, ou si vous ne voulez pas les ajouter au dossier système, ou si vous n'avez pas les permissions nécessaires, alors la meilleure solution serait d'ajouter un dossier avec vos propres polices en utilisant le `SetFontsSources` méthode. Cela permettra de remplacer la source du système par une source utilisateur. Aspose.Words ne cherchera plus de polices dans le registre ou Windows\Font dossier et au lieu de cela, seulement analyser les polices dans le(s) dossier(s) spécifié(s). Les `GetFontSources` la méthode retournera les valeurs correspondantes.

### Spécifier un ou plusieurs dossiers de police

Les [SetFontsFolder](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/#setFontsFolder-java.lang.String-boolean) et les méthodes SetFontsFolders sont des raccourcis vers le **SetFontSources** méthode avec un ou plusieurs [FolderFontSource](https://reference.aspose.com/words/java/com.aspose.words/folderfontsource/) des cas. Ces méthodes sont utilisées pour indiquer où Aspose.Words devrait chercher des polices. Si un dossier n'existe pas ou n'est pas accessible, Aspose.Words ignore juste ce dossier. Si tous les dossiers, y compris les sources pour la substitution des polices, ont été ignorés, Aspose.Words utilisera la police Fanwood par défaut.

L'exemple suivant montre comment définir le dossier ou la source, qui Aspose.Words utilisera ensuite pour rechercher les polices TrueType lors du rendu ou de l'intégration des polices:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetTrueTypeFontsFolder.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Un paramètre booléen supplémentaire contrôle si les polices sont scannées récursivement dans tous les dossiers, d'où la numérisation de tous les dossiers enfants d'un dossier spécifié. L'exemple suivant montre comment définir Aspose.Words pour regarder dans plusieurs dossiers les polices TrueType lors du rendu ou de l'intégration des polices:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetMultipleFontsFolder.java" >}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Notez les priorités. S'il y a des polices avec le même nom de famille et style dans différentes sources de police, alors Aspose.Words sélectionnera la police à partir de la source avec une priorité plus élevée. Voir la description du champ "Priorité" ci-dessous.

{{% /alert %}}

Si vous ne voulez pas utiliser les polices système, Aspose.Words vous permet de les ignorer et d'utiliser vos propres polices seulement:

**Java**

{{< highlight csharp >}}
FontSettings.getDefaultInstance().setFontsFolder("C:\\MyFonts\\", true);
{{< /highlight >}}


### Propriété prioritaire

Les [Priority](https://reference.aspose.com/words/net/aspose.words.fonts/fontsourcebase/priority/) property est utilisé quand il y a des polices avec le même nom de famille et style dans différentes sources de police. Dans ce cas Aspose.Words sélectionne la police à partir de la source avec la valeur de priorité supérieure. Par exemple, il y a une ancienne version de la police sur le dossier système et le client a ajouté une nouvelle version de la même police dans un dossier personnalisé.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-SetFontsFolderWithPriority.java" >}}

## Charger les polices de Stream {#loading-fonts-from-stream}

Aspose.Words fournit les [StreamFontSource](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/) classe, qui permet de charger des polices à partir du flux. Pour utiliser la source de police stream, un utilisateur doit créer une classe dérivée de **StreamFontSource** et de fournir une mise en œuvre [OpenFontDataStream](https://reference.aspose.com/words/java/com.aspose.words/streamfontsource/#openFontDataStream) méthode. Les **OpenFontDataStream** méthode pourrait être appelé plusieurs fois. Pour la première fois, il sera appelé quand Aspose.Words scanne les sources de police fournies pour obtenir une liste des polices disponibles. Plus tard, il peut être appelé si la police est utilisée dans le document pour analyser les données de police et pour intégrer les données de police à certains formats de sortie. **StreamFontSource** peut être utile parce qu'il permet de charger les données de police seulement quand elle est nécessaire, et de ne pas les stocker dans la mémoire pour le `FontSettings` La vie.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SpecifyTrueTypeFontsLocation-loadingFontsStream.java" >}}

**StreamFontSource** est une alternative à [MemoryFontSource](https://reference.aspose.com/words/java/com.aspose.words/memoryfontsource/) car il est toujours possible de charger un flux à la mémoire et de le passer à **MemoryFontSource**. La différence est que la **MemoryFontSource** est stocké dans la mémoire tout le temps, et le **StreamFontSource** est chargé sur demande et éliminé immédiatement. Mais il peut être chargé plusieurs fois, comme décrit ci-dessus. Dans certains cas **MemoryFontSource** est préférable, et dans d'autres, **StreamFontSource**.

## Enregistrer et charger un cache de recherche de police

Lorsque vous recherchez une police pour la première fois, Aspose.Words itération sur les sources de police spécifiées par l'utilisateur et forme un cache de recherche de police basé sur les données de ces sources. Ainsi, le cache recueillera des informations sur les polices disponibles: famille de polices, style, nom complet de police, et autres. Lors d'appels ultérieurs, Aspose.Words recherche des informations sur la police désirée par son nom dans le cache de recherche de police, après quoi il analyse les fichiers spécifiés pour utiliser la police.

La procédure d'analyse de tous les fichiers de police disponibles pour initialiser le cache est assez longue. Aspose.Words vous permet d'enregistrer et de charger le cache **FontSettings.SaveSearchCache** méthode pour résoudre le problème de performance. C'est-à-dire que l'utilisateur peut charger un cache précédemment enregistré à partir d'un fichier et sauter l'étape de l'analyse de tous les fichiers de police disponibles.

{{% alert color="primary" %}}

Utiliser la même **SaveSearchCache** méthode pour mettre à jour le cache.

{{% /alert %}}

{{% alert color="primary" %}}

Le cache convient également à d'autres scénarios lorsque les polices sont chargées sur le réseau. Ou pour les scénarios quand il n'y a aucun moyen de stocker un `FontSettings` instance avec un cache chargé.

{{% /alert %}}


## Obtenir une liste des polices disponibles {#get-a-list-of-available-fonts}

Si vous voulez obtenir la liste des polices disponibles, qui, par exemple, peuvent être utilisées pour rendre un document PDF, vous pouvez utiliser le [GetAvailableFonts](https://reference.aspose.com/words/java/com.aspose.words/systemfontsource/#getAvailableFonts) méthode, comme indiqué dans l'exemple de code suivant. Les [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) classe spécifie les informations sur la police physique disponible pour Aspose.Words moteur de police:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSources-GetAllAvailableFonts.java" >}}
