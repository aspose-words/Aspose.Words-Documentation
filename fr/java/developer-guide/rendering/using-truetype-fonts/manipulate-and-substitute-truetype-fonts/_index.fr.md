---
title: Manipuler et remplacer les polices TrueType
second_title: Aspose.Words pour Java
articleTitle: Manipuler et remplacer les polices TrueType
linktitle: Manipuler et remplacer les polices TrueType
description: "Aspose.Words pour Java peut incorporer les polices TrueType correctes dans le document résultant pour s'assurer qu'il s'affiche avec précision, ou rechercher un remplacement de police approprié, ou utiliser le mécanisme de secours de police."
type: docs
weight: 10
url: /fr/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words nécessite des polices TrueType pour diverses tâches, y compris le rendu de documents dans des formats de page fixe, par exemple PDF ou XPS. Lorsque Aspose.Words rend un document, il doit effectuer l'incorporation et l'incorporation de sous-ensembles de polices TrueType dans le document résultant, ce qui est une pratique normale lors d'une génération de document, y compris les formats populaires PDF ou XPS. Cela garantit que le document apparaîtra de la même manière à n'importe quel visualiseur. De plus, la spécification XPS exige que les polices soient toujours incorporées dans le document.

Pour garantir que Aspose.Words mesure avec précision les caractères et intègre avec succès les polices pertinentes, les conditions suivantes doivent être remplies:

1. Aspose.Words devrait pouvoir trouver et accéder aux fichiers de polices TrueType sur le système.
1. Il doit y avoir suffisamment de polices TrueType disponibles pour Aspose.Words, de préférence avec les mêmes noms de famille de polices que ceux utilisés dans le document.

Notez que la police dans le document représente une entité, telle que le nom de famille, le style, la taille, la couleur, qui est différente de l'entité `TrueType` font (police physique). Aspose.Words résout la police du document en une police physique à un certain stade du traitement. Cela permet certaines tâches, le plus souvent la tâche de calculer la taille du texte lors de la construction de la mise en page et de l'incorporation/sous-ensemble dans des formats de page fixes. Un certain nombre d'autres tâches moins courantes, telles que la résolution et la substitution de polices lors du chargement de HTML ou l'incorporation/sous-définition dans certains formats de flux, sont également activées.

## Problèmes de Manipulation et de Performances des Polices

Tous les mécanismes de manipulation de polices disponibles sont contenus dans la classe [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Cette classe est responsable de la récupération des polices dans les sources de polices définies ainsi que du processus de substitution de polices, comme décrit ci-dessous.

Les polices sont analysées en plusieurs étapes:

1. Obtention d'informations pour la police, résolution à partir de toutes les polices disponibles.
1. Analyse des polices résolues pour obtenir les glyphes et métriques disponibles (horizontaux et verticaux).
1. Analyse des polices résolues pour l'incorporation et le sous-ensemble.

Lorsque Aspose.Words rencontre une police dans le document pour la première fois, il tente d'obtenir des informations de police de base, telles que le nom complet de la police, le nom de famille, la version, le style, à partir des fichiers de polices situés dans chaque source de police. Une fois toutes les polices récupérées, Aspose.Words utilise ces détails pour trouver les données de police requises ou un remplacement approprié pour la police demandée.

Étant donné que la procédure décrite ci-dessus prend du temps, elle peut affecter négativement les performances de l'application lors de son premier lancement. Cependant, chaque instance de **FontSettings** possède son propre cache, ce qui pourrait réduire le temps de traitement des documents suivants. Par exemple, vous pouvez partager une instance de la classe **FontSettings** entre différents documents, ce qui vous permet d'accélérer le chargement des documents. L'exemple suivant le démontre:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

Dans le cas où **FontSettings** n'est pas défini explicitement, Aspose.Words utilise l'instance **FontSettings** par défaut. Cette instance est également automatiquement partagée entre les documents et peut être extraite comme suit:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Si vous êtes sûr que tous les documents de traitement nécessitent les mêmes paramètres de police, il est recommandé de configurer et d'utiliser l'instance **FontSettings** par défaut. Supposons que vous deviez utiliser les mêmes sources de polices pour tous vos documents. Dans ce cas, vous pouvez simplement modifier l'instance par défaut comme suit:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

La coutume **FontSettings** a une priorité plus élevée que l'instance par défaut.

{{% /alert %}}

## Disponibilité et Substitution des Polices

Un texte dans un document peut être formaté avec différentes polices, telles que Arial, Times New Roman, Verdana et autres. Lorsque Aspose.Words affiche un document, il tente de sélectionner les polices spécifiées dans le document.

Cependant, il y a des situations où la police exacte ne peut pas être trouvée et Aspose.Words doit la remplacer par une police similaire à la place. Aspose.Words sélectionne la police selon le processus suivant:

1. Aspose.Words essaie de trouver une police parmi les sources de polices disponibles avec un nom de police exact.
1. Aspose.Words essaie de trouver la police requise parmi les polices incorporées dans le document d'origine. Certains formats de document tels que DOCX peuvent contenir des polices incorporées.
1. Si Aspose.Words ne parvient pas à localiser la police requise avec la correspondance de nom exacte et que la propriété [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) est définie pour cette police, alors Aspose.Words trouvera la police définie avec **AltName** à partir de la classe [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/), qui spécifie les informations de police.
1. Si Aspose.Words ne parvient pas à localiser la police définie et que **AltName** n'est pas également défini, les règles de substitution de police sont appliquées une par une, comme décrit ci-dessous (lorsque le remplacement approprié est trouvé, le processus de substitution de police s'arrête et l'étape suivante n'est pas exécutée):
   1. Aspose.Words tentera d'appliquer les paramètres de police OS, s'ils sont disponibles, à l'aide de l'utilitaire `FontConfig`. Cette fonctionnalité nonWindows doit être utilisée avec un FontConfig compatible OS. Presque tous les OS basés sur Unix disposent déjà d'une bibliothèque `FontConfig` conçue pour fournir une configuration de polices, une personnalisation et un accès aux applications à l'échelle du système. Sinon, cette bibliothèque peut être facilement installée par l'utilisateur.<br>
      Aspose.Words sait interroger les données et interpréter les résultats FontConfig à ses propres fins. Par défaut, l'utilitaire `FontConfig` est désactivé. Vous pouvez l'activer comme suit:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. L'étape suivante est un mécanisme simple, mais incroyablement puissant appelé [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). Par défaut, cette fonctionnalité est active et disponible pour tout OS. Aspose.Words utilise des tables XML qui définissent des règles de substitution de base pour différents OS. Selon la règle de substitution de table, la liste des noms de polices de substitution sera utilisée.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - une police à remplacer, SubstituteFonts - liste des variantes de substitution, séparées par une virgule. La première police disponible est utilisée pour le remplacement.<br>
      La principale caractéristique de cette règle est la possibilité de charger vos propres tables de substitution, comme le montre l'exemple suivant:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Vous pouvez prendre comme base la table existante du fichier jar ou l'enregistrer par programme de la manière suivante:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Malgré la flexibilité de ce mécanisme, il existe certains cas où il est préférable de le désactiver, comme indiqué ci-dessous:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. La règle de substitution **FontInfo** sera appliquée si la règle de substitution de table ne trouve pas la police. Ce mécanisme est activé par défaut. Aspose.Words recherche la police la plus appropriée en fonction des informations de police contenues dans un document particulier. Ces informations peuvent être obtenues à partir de la classe **FontInfo** comme indiqué ci-dessous:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Les utilisateurs ne peuvent pas interférer dans le flux de travail de cette fonctionnalité à moins qu'ils ne décident de la désactiver en cas de résultats insatisfaisants:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Si **FontInfo** n'est pas disponible pour la police manquante, le processus s'arrête.
   1. la règle de substitution **DefaultFont** sera appliquée dans le cas où la substitution `FontInfo` a également échoué. Cette règle est également activée par défaut. Selon cette règle, Aspose.Words tentera d'utiliser la police par défaut spécifiée dans la propriété [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName). Si l'utilisateur n'a pas choisi sa propre police par défaut, "Times New Roman" sera utilisé comme police par défaut. Cette règle peut être désactivée comme indiqué ci-dessous:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Pour vérifier la police par défaut actuelle, utilisez:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Pour configurer votre propre option de remplacement, appliquez:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Si Aspose.Words ne parvient pas à effectuer la substitution de police, il essaie d'obtenir la première police disponible à partir des sources de polices disponibles.
1. Enfin, si Aspose.Words ne trouve aucune police parmi les sources de polices disponibles, il affiche le document à l'aide de la police Fanwood gratuite intégrée à l'assembly Aspose.Words.

{{% alert color="primary" %}}

Si **FontInfo** est disponible, *FontInfo substitution rule* résoudra toujours la police et remplacera la règle de police par défaut. Si vous souhaitez utiliser la règle de police par défaut, vous devez désactiver le *FontInfo substitution rule*. Notez que le *FontConfig substitution rule* résoudra la police dans la plupart des cas et remplacera donc toutes les autres règles.

{{% /alert %}}

## Comment Reconnaître Que la Police A Été Remplacée

Parfois, il peut être difficile de comprendre pourquoi la mise en page du document a changé ou pourquoi certaines polices ne ressemblent pas à ce qui était attendu. Dans de tels cas, les messages d'avertissement de substitution de police implémentés par l'interface [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) viennent à la rescousse. Ils ont le type d'avertissement [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) et le format de texte de description standard, "La police' <OriginalFont> ' n'a pas été trouvée. En utilisant la police' <SubstitutionFont> ' à la place. Raison: <Reason>", avec les raisons suivantes:

- " nom alternatif du document " – pour substitution par [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "fontconfig substitution" - pour la substitution par la règle de configuration de la police
- " substitution de table " – pour la substitution par règle de table
- "substitution d'informations sur la police" – pour la substitution par la règle d'informations sur la police
- " Substitution de police par défaut " – pour la substitution par règle de police par défaut
- " première police disponible " – pour la substitution avec la première police disponible

## Paramètres de police FallBack à partir de XML

Il existe deux mécanismes différents utilisés dans Aspose.Words - la substitution de police et le repli de police. La substitution de police est utilisée lorsque la police spécifiée dans le document n'a pas pu être trouvée parmi les sources de police telles qu'elles ont été décrites dans les sections ci-dessus. Le mécanisme de secours de la police est utilisé lorsque la police est résolue, mais elle ne contient pas de caractère spécifique. Dans ce cas, Aspose.Words essaie d'utiliser l'une des polices de secours pour le caractère.

Il existe une méthode [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) qui construit automatiquement les paramètres de secours en analysant les polices disponibles. Étant donné que cette méthode peut produire un paramètre de secours non optimal, vous pouvez contrôler le comportement de secours de la police en utilisant les propriétés de la classe [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/). Cette classe spécifie les paramètres du mécanisme de repli des polices. Vous pouvez obtenir une instance de la classe **FontFallbackSettings** comme suit:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

De la même manière que *Table substitution rule*, ce mécanisme utilise des tables XML pour la configuration. Ces tables XML peuvent être chargées et enregistrées avec les méthodes suivantes:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

La version Aspose.Words comprend deux tables: *MsOfficeFallbackSetting.xml* et *NotoFallbackSetting.xml*.

La table *MsOfficeFallbackSetting* définit une stratégie de remplacement pour une plage de caractères, similaire à la stratégie utilisée par Microsoft Word. Ainsi, la stratégie nécessite l'installation de Microsoft polices Office. *MsOfficeFallbackSetting* peut être activé en utilisant la méthode suivante:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

La table *NotoFallbackSetting* est créée spécialement pour être utilisée avec les polices Google Noto (voir plus d'informations sur les paramètres de police Google Noto dans la section suivante) et peut être activée comme suit:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

L'exemple de code suivant montre comment charger les paramètres de secours de police à partir d'un fichier XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

Dans l'exemple de code ci-dessus, le fichier XML suivant est utilisé:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}

## Paramètres de police prédéfinis FallBack pour les polices Google Noto

Aspose.Words fournit des paramètres de remplacement de police prédéfinis pour les polices Google Noto. Ce sont des polices gratuites sous licence SIL Open Font License, qui peuvent être téléchargées à partir de Google Noto Fonts. La classe **FontFallbackSettings** fournit une méthode [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings). Il charge des paramètres de secours prédéfinis, qui utilisent des polices Google Noto comme indiqué dans l'exemple de code ci-dessous:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Seules les polices Noto de style Sans avec un poids régulier sont utilisées dans des paramètres prédéfinis.

{{% /alert %}}

## Où Aspose.Words Recherche les polices

Aspose.Words tente de trouver automatiquement TrueType polices sur le système de fichiers. Habituellement, vous pouvez compter sur le comportement par défaut de Aspose.Words pour trouver les polices `TrueType`, mais parfois vous devez spécifier vos propres dossiers contenant les polices TrueType. Les [Spécifiez l'emplacement des polices TrueType](/words/java/specify-truetype-fonts-location/) la rubrique décrit comment et où Aspose.Words recherche les polices, ainsi que comment spécifier vos propres emplacements de police.

## Différences dans le traitement des formats de police dans Aspose.Words et Microsoft Word

Il existe quelques différences dans le traitement des formats de police dans Aspose.Words et Microsoft Word, comme indiqué dans le tableau ci-dessous:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType polices et OpenType polices avec TrueType contours | Soutenu. | Soutenu. |
| OpenType polices avec PostScript contours | Pris en charge pour la plupart des scénarios. L'incorporation dans des formats de page fixe tels que PDF et XPS n'est pas prise en charge. Le texte est remplacé par des images bitmap. | Pris en charge pour la plupart des scénarios, y compris l'incorporation dans des formats de pages fixes. |
| OpenType Variations de polices | Seules les instances nommées sont prises en charge. Variations continues non prises en charge. | Pris en charge pour la seule instance par défaut. Les instances nommées et les variations continues ne sont pas prises en charge. |
| Polices de Type1 | Pris en charge sur les versions Windows antérieures à 2013 et sur les versions MacOS. Le support est supprimé sur les versions Windows à partir de 2013. | Non pris en charge. |

## Voir Aussi

- [Google Noto Politiques](https://fonts.google.com/noto) pour télécharger des polices gratuites


