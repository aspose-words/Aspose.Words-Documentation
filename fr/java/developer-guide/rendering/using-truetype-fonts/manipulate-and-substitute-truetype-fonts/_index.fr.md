---
title: Manipuler et remplacer les polices TrueType
second_title: Aspose.Words pour Java
articleTitle: Manipuler et remplacer les polices TrueType
linktitle: Manipuler et remplacer les polices TrueType
description: "Aspose.Words pour Java peut intégrer les polices TrueType correctes dans le document résultant pour s'assurer qu'il s'affiche avec précision, ou rechercher un remplacement de police approprié, ou utilise le mécanisme de retour de police."
type: docs
weight: 10
url: /fr/java/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words demande Vrai Tapez les polices pour une variété de tâches, y compris le rendu des documents dans des formats de page fixe, par exemple, PDF ou XPS. Quand Aspose.Words rend un document, il doit effectuer l'intégration et l'intégration sous-ensemble des polices TrueType dans le document résultant, qui est une pratique normale pendant une génération de document, y compris le PDF populaire ou XPS les formats. Cela garantit que le document apparaîtra de la même façon à tout spectateur. En outre, XPS spécification exige que les polices soient toujours intégrées dans le document.

Assurer Aspose.Words mesure avec précision les caractères et intègre avec succès les polices pertinentes, les conditions suivantes doivent être remplies:

1. Aspose.Words devrait pouvoir trouver et accéder aux fichiers de police TrueType sur le système.
1. Il doit y avoir suffisamment de polices TrueType disponibles pour Aspose.Words, de préférence avec les mêmes noms de famille que ceux utilisés dans le document.

Notez que la police dans le document représente une entité, comme le nom de famille, le style, la taille, la couleur, qui est différente de la `TrueType` entité de police (de police physique). Aspose.Words résout la police du document à une police physique à un stade quelconque du traitement. Cela permet certaines tâches, le plus souvent la tâche de calculer la taille du texte lors de la construction de la mise en page et l'intégration/sous-réglage aux formats de page fixe. Un certain nombre d'autres tâches moins populaires, comme la résolution et la substitution de polices lors du chargement de HTML ou de l'intégration/sous-réglage dans certains formats de flux, sont également activées.

## Manipulation des polices et problèmes de performance

Tous les mécanismes de manipulation de police disponibles sont contenus dans le [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) En cours. Cette classe est responsable de la récupération des polices dans les sources de police définies ainsi que pour le processus de substitution des polices, comme décrit ci-dessous.

Les polices sont analysées en plusieurs étapes:

1. Obtenir des informations pour la police, résoudre à partir de toutes les polices disponibles.
1. Parsing les polices résolues pour être disponible glyphs et métriques (horizontale et verticale).
1. Analyse des polices résolues pour l'intégration et le sous-réglage.

Quand Aspose.Words rencontre une police dans le document pour la première fois, il tente d'obtenir des informations de base sur la police, comme le nom complet de la police, le nom de famille, la version, le style, à partir des fichiers de police situés dans chaque source de police. Après toutes les polices sont récupérées, Aspose.Words utilise ces détails pour trouver les données de police requises ou un remplacement approprié de la police demandée.

Étant donné que la procédure décrite ci-dessus prend du temps, elle peut avoir une incidence négative sur les performances de l'application lors de son premier lancement. Cependant, chaque cas de **FontSettings** a son propre cache, ce qui pourrait réduire le temps de traitement des documents ultérieurs. Par exemple, vous pouvez partager une **FontSettings** classe entre différents documents, ce qui vous permet d'accélérer le chargement des documents. L'exemple suivant en témoigne:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

Dans le cas où **FontSettings** n'est pas défini explicitement, Aspose.Words utilise la valeur par défaut **FontSettings** - Oui. Cette instance est également automatiquement partagée entre les documents et peut être extraite comme suit:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Si vous êtes sûr que tous les documents de traitement nécessitent les mêmes paramètres de police, il est recommandé de configurer et d'utiliser la police par défaut **FontSettings** - Oui. Supposez que vous devez utiliser les mêmes sources de police pour tous vos documents. Dans ce cas, vous pouvez simplement modifier l'instance par défaut comme suit:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

La coutume **FontSettings** ont une priorité supérieure à l'instance par défaut.

{{% /alert %}}

## Disponibilité et remplacement des polices

Un texte dans un document peut être formaté avec différentes polices, telles que Arial, Times New Roman, Verdana, etc. Quand Aspose.Words rend un document, il tente de sélectionner les polices qui sont spécifiées dans le document.

Cependant, il y a des situations où la police exacte ne peut pas être trouvée et Aspose.Words doit remplacer une police similaire. Aspose.Words sélectionne la police selon le processus suivant:

1. Aspose.Words essaie de trouver une police parmi les sources de police disponibles avec un nom de police exact.
1. Aspose.Words essaie de trouver la police requise parmi les polices intégrées dans le document original. Certains formats de documents tels que DOCX peuvent contenir des polices intégrées.
1. Si Aspose.Words est incapable de localiser la police requise avec la correspondance de nom exacte, et le [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) propriété définie pour cette police, alors Aspose.Words trouvera la police définie avec **AltName** des [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) classe, qui spécifie les informations de police.
1. Si Aspose.Words est incapable de localiser la police définie, et **AltName** n'est pas aussi défini, alors les règles de substitution de police sont appliquées un par un, comme décrit ci-dessous (lorsque le remplacement approprié est trouvé, le processus de substitution de police s'arrête et l'étape suivante n'est pas exécutée):
   1. Aspose.Words tentera d'appliquer les paramètres de police OS, s'ils sont disponibles, en utilisant le `FontConfig` utilitaire. Ce non--Windows fonctionnalité doit être utilisée avec un OS compatible FontConfig. Presque n'importe quel système d'exploitation Unix a déjà `FontConfig` bibliothèque qui est conçue pour fournir la configuration de polices à l'échelle du système, la personnalisation et l'accès aux applications. Sinon, cette bibliothèque peut être facilement installée par l'utilisateur.<br/>
      Aspose.Words sait comment interroger les données et interpréter les résultats de FontConfig à ses propres fins. Par défaut, `FontConfig` l'utilité est désactivée. Vous pouvez l'activer comme suit:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. La prochaine étape est un mécanisme simple, mais incroyablement puissant appelé [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). Par défaut, cette fonctionnalité est active et disponible pour tout OS. Aspose.Words utilise des tables XML qui définissent les règles de substitution de base pour différents OS. Conformément à la règle de substitution de table, la liste des noms de polices de remplacement sera utilisée.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - une police à remplacer, SubstituteFonts - liste des variantes de substitution, séparée par une virgule. La première police disponible est utilisée pour le remplacement.<br/>
      La principale caractéristique de cette règle est la capacité de charger vos propres tables de substitution, comme il est montré dans l'exemple suivant:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Vous pouvez prendre comme base le tableau existant du pot ou le sauvegarder programmatiquement de la manière suivante:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Malgré la souplesse de ce mécanisme, il y a certains cas où il est préférable de le désactiver, comme le montre ci-dessous:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. Les **FontInfo** la règle de substitution sera appliquée si la règle de substitution de table ne trouve pas la police. Ce mécanisme est activé par défaut. Aspose.Words trouve la police la plus appropriée selon les informations de police contenues dans un document particulier. Ces informations peuvent être obtenues auprès de l'adresse suivante: **FontInfo** classe comme suit:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Les utilisateurs ne peuvent interférer dans le flux de travail de cette fonctionnalité à moins qu'ils ne décident de la désactiver en cas de résultats insatisfaisants:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Si **FontInfo** n'est pas disponible pour la police manquante, puis le processus s'arrête.
   1. **DefaultFont** la règle de substitution sera appliquée dans le cas où `FontInfo` La substitution a également échoué. Cette règle est également activée par défaut. Selon cette règle, Aspose.Words tentera d'utiliser la police par défaut spécifiée dans la [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) propriété. Si l'utilisateur n'a pas choisi sa propre police par défaut, alors "Times New Roman" sera utilisé comme police par défaut. Cette règle peut être désactivée comme suit:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Pour vérifier la police par défaut actuelle, utilisez:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Pour configurer votre propre option de remplacement, appliquez:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Si Aspose.Words est incapable d'effectuer la substitution de police, il essaie d'obtenir la première police disponible à partir des sources de police disponibles.
1. Enfin, si Aspose.Words ne peut trouver aucune police parmi les sources de police disponibles, il rend le document en utilisant la police Free Fanwood qui est intégrée dans le Aspose.Words l'assemblage.

{{% alert color="primary" %}}

Si **FontInfo** est disponible, la règle de substitution *FontInfo* résoudra toujours la police et remplacera la règle de police par défaut. Si vous voulez utiliser la règle de police par défaut, vous devez désactiver la règle de substitution *FontInfo*. Notez que la règle de substitution *FontConfig* va résoudre la police dans la plupart des cas, ce qui l'emporte sur toutes les autres règles.

{{% /alert %}}

## Comment reconnaître Que la police a été remplacée

Parfois, on peut ne pas comprendre pourquoi la mise en page du document a changé, ou pourquoi une police ne semble pas comme prévu. Dans de tels cas, les messages d'avertissement de substitution de police mis en place par le [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) l'interface vient pour sauver. Ils ont les [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) type d'avertissement et format de texte de la description standard, "Font"<originalfont>' n'a pas été trouvé. Utilisation '<substitutionfont>' police à la place. Raison: <reason>" pour les raisons suivantes:</reason></substitutionfont></originalfont>

- "nom alternatif du document" – pour substitution par [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "substitution Fontconfig" – pour substitution par la règle de configuration de police
- "substitution de table" – pour substitution par règle de table
- "font info substitution" – pour substitution par police info règle
- "substitution de police par défaut" – pour substitution par la règle de police par défaut
- "première police disponible" – pour la substitution avec la première police disponible

## Paramètres de retour de police depuis XML

Il existe deux mécanismes différents Aspose.Words - la substitution des polices et le repli des polices. La substitution de polices est utilisée lorsque la police spécifiée dans le document n'a pas pu être trouvée parmi les sources de polices telles qu'elles ont été décrites dans les sections ci-dessus. Le mécanisme de retour de police est utilisé lorsque la police est résolue, mais il ne contient pas de caractère spécifique. Dans ce cas, Aspose.Words essaie d'utiliser l'une des polices fallback pour le personnage.

Il y a une [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) méthode qui construit automatiquement les paramètres de repli en scannant les polices disponibles. Puisque cette méthode peut produire un paramètre de repli non optimal, vous pouvez contrôler le comportement de repli de police en utilisant les propriétés de la [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) En cours. Cette classe spécifie les paramètres du mécanisme de retour de police. Vous pouvez obtenir une instance de la **FontFallbackSettings** classe comme suit:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

De même que la règle de substitution *Table*, ce mécanisme utilise des tables XML pour la configuration. Ces tables XML peuvent être chargées et sauvegardées avec les méthodes suivantes:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

Les Aspose.Words version comprend deux tableaux: *MsOfficeFallbackSetting.xml* et *NotoFallbackSetting.xml*.

Les *MsOfficeFallbackSetting* tableau définit une stratégie de remplacement pour une gamme de caractères, qui est similaire à la stratégie utilisée par Microsoft Word. Ainsi, la stratégie nécessite l'installation de Microsoft Polices de bureau. *MsOfficeFallbackSetting* peut être activé en utilisant la méthode suivante:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

Les *NotoFallbackSetting* table est créé spécialement pour l'utilisation avec Google Noto polices (voir plus sur Google Noto Paramètres de police dans la section suivante) et peut être activé comme suit:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

L'exemple de code suivant montre comment charger les paramètres de repli de police à partir d'un fichier XML:

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

## Paramètres prédéfinis d'automne de police pour Google Noto Polices

Aspose.Words fournit des paramètres de retour de police prédéfinis pour Google Noto polices. Ce sont des polices gratuites sous licence SIL Open Font, qui peuvent être téléchargées depuis Google Noto Polices. Les **FontFallbackSettings** classe fournit une [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) méthode. Il charge les paramètres de repli prédéfinis, qui utilisent Google Noto polices comme indiqué dans l'exemple de code ci-dessous:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Seules les polices Sans style Noto avec poids régulier sont utilisées dans les paramètres prédéfinis.

{{% /alert %}}

## Où Aspose.Words Recherche de polices

Aspose.Words tente de trouver automatiquement les polices TrueType sur le système de fichiers. Habituellement, vous pouvez compter sur le comportement par défaut de Aspose.Words pour trouver le `TrueType` polices, mais parfois vous devez spécifier vos propres dossiers contenant des polices TrueType. Les [Préciser Vrai Type de police Déplacement](/words/fr/java/specify-truetype-fonts-location/) le sujet décrit comment et où Aspose.Words recherche des polices, ainsi que la façon de spécifier vos propres emplacements de police.

## Différences dans le traitement des formats de police Aspose.Words et Microsoft Word

Il existe certaines différences dans le traitement des formats de police Aspose.Words et Microsoft Word comme indiqué dans le tableau ci-dessous:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Polices TrueType et polices OpenType avec contours TrueType | Soutenu. | Soutenu. |
| Polices OpenType avec contours PostScript | Prise en charge pour la plupart des scénarios. Intégration aux formats de pages fixes tels que PDF et XPS ne sont pas supportés. Le texte est remplacé par des images bitmap. | Prise en charge pour la plupart des scénarios, y compris l'intégration aux formats de page fixe. |
| Variations des polices OpenType | Seules les instances nommées sont prises en charge. Les variations continues ne sont pas prises en charge. | Prise en charge pour la seule instance par défaut. Les instances nommées et les variations continues ne sont pas prises en charge. |
| Polices Type1 | Appui Windows versions antérieures à 2013 et sur MacOS versions. Le soutien est abandonné Windows versions à partir de 2013. | Pas pris en charge. |

## Voir aussi

- Oui. [Google Noto Polices](https://fonts.google.com/noto) pour télécharger des polices gratuites


