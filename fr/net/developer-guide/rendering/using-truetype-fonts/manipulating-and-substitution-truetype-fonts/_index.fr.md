---
title: Manipuler et remplacer les polices TrueType dans C#
second_title: Aspose.Words pour .NET
articleTitle: Manipuler et remplacer les polices TrueType
linktitle: Manipuler et remplacer les polices TrueType
description: "Aspose.Words pour .NET peut intégrer les polices TrueType correctes dans le document résultant pour garantir qu'il s'affiche avec précision en utilisant C#. Si une police ou un caractère spécifique n'est pas disponible, Aspose.Words recherche une police de remplacement appropriée ou utilise le mécanisme de secours des polices."
type: docs
weight: 10
url: /fr/net/manipulating-and-substitution-truetype-fonts/
---

Aspose.Words nécessite des polices TrueType pour diverses tâches, notamment le rendu de documents dans des formats de page fixe, par exemple PDF ou XPS. Lorsque Aspose.Words restitue un document, il doit effectuer l'incorporation et l'incorporation de sous-ensembles de polices TrueType dans le document résultant, ce qui est une pratique normale lors de la génération d'un document, y compris les formats PDF ou XPS populaires. Cela garantit que le document apparaîtra de la même manière pour n’importe quel spectateur. De plus, la spécification XPS exige que les polices soient toujours intégrées au document.

Pour garantir que Aspose.Words mesure avec précision les caractères et intègre avec succès les polices pertinentes, les conditions suivantes doivent être remplies:

1. Aspose.Words devrait pouvoir trouver et accéder aux fichiers de polices TrueType sur le système.
1. Il doit y avoir suffisamment de polices TrueType disponibles pour Aspose.Words, de préférence avec les mêmes noms de famille de polices que celles utilisées dans le document.

Notez que la police dans le document représente une entité, telle que le nom de famille, le style, la taille, la couleur, qui est différente de l'entité de police `TrueType` (police physique). Aspose.Words résout la police du document en police physique à un certain stade du traitement. Cela permet certaines tâches, le plus souvent la tâche de calcul de la taille du texte lors de la construction de la mise en page et l'intégration/sous-ensemble dans des formats de page fixes. Un certain nombre d'autres tâches moins courantes, telles que la résolution et la substitution de polices lors du chargement de HTML ou l'intégration/sous-composition de certains formats de flux, sont également activées.

## Problèmes de manipulation des polices et de performances

Tous les mécanismes de manipulation de polices disponibles sont contenus dans la classe [FontSettings](https://reference.aspose.com/words/fr/net/aspose.words.fonts/fontsettings/). Cette classe est responsable de la récupération des polices dans les sources de polices définies ainsi que du processus de substitution de polices, comme décrit ci-dessous.

Les polices sont analysées en plusieurs étapes:

1. Obtention d'informations sur la police, résolution à partir de toutes les polices disponibles.
1. Analyse des polices résolues pour obtenir les glyph et les métriques disponibles (horizontales et verticales).
1. Analyse des polices résolues pour l'intégration et le sous-ensemble.

Lorsque Aspose.Words rencontre une police dans le document pour la première fois, il tente d'obtenir des informations de base sur la police, telles que le nom complet de la police, le nom de famille, la version, le style, à partir des fichiers de police situés dans chaque source de police. Une fois toutes les polices récupérées, Aspose.Words utilise ces détails pour trouver les données de police requises ou un remplacement approprié pour la police demandée.

Étant donné que la procédure décrite ci-dessus prend du temps, elle peut affecter négativement les performances de l'application lors de son premier lancement. Cependant, chaque instance de **FontSettings** possède son propre cache, ce qui pourrait réduire le temps de traitement des documents ultérieurs. Par exemple, vous pouvez partager une instance de la classe **FontSettings** entre différents documents, ce qui permet d'accélérer le chargement des documents. L'exemple suivant le démontre:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOption.cs" >}}

Dans le cas où **FontSettings** n'est pas défini explicitement, Aspose.Words utilise l'instance **FontSettings** par défaut. Cette instance est également automatiquement partagée entre les documents et peut être extraite comme suit:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsDefaultInstance.cs" >}}

Si vous êtes sûr que tous les documents de traitement nécessitent les mêmes paramètres de police, il est recommandé de configurer et d'utiliser l'instance **FontSettings** par défaut. Supposons que vous deviez utiliser les mêmes sources de polices pour tous vos documents. Dans ce cas, vous pouvez simplement modifier l'instance par défaut comme suit:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cs" >}}

{{% alert color="primary" %}}

Le **FontSettings** personnalisé a une priorité plus élevée que l'instance par défaut.

{{% /alert %}}

## Disponibilité et substitution des polices

Le texte d'un document peut être formaté avec différentes polices, telles que Arial, Times New Roman, Verdana et autres. Lorsque Aspose.Words restitue un document, il tente de sélectionner les polices spécifiées dans le document.

Cependant, il existe des situations dans lesquelles la police exacte ne peut pas être trouvée et Aspose.Words doit la remplacer par une police similaire. Aspose.Words sélectionne la police selon le processus suivant:
1. Aspose.Words essaie de trouver une police parmi les sources de polices disponibles avec un nom de police exact.
1. Aspose.Words essaie de trouver la police requise parmi les polices intégrées dans le document original. Certains formats de documents tels que DOCX peuvent contenir des polices intégrées.
1. Si Aspose.Words ne parvient pas à localiser la police requise avec le nom exact correspondant et la propriété [AltName](https://reference.aspose.com/words/fr/net/aspose.words.fonts/fontinfo/altname/) définie pour cette police, alors Aspose.Words trouvera la police définie avec **AltName** à partir de la classe [FontInfo](https://reference.aspose.com/words/fr/net/aspose.words.fonts/fontinfo/), qui spécifie les informations sur la police.
1. Si Aspose.Words ne parvient pas à localiser la police définie et que **AltName** n'est pas également défini, alors les règles de substitution de police sont appliquées une par une, comme décrit ci-dessous (lorsque le remplacement approprié est trouvé, le processus de substitution de police s'arrête et le l'étape suivante n'est pas exécutée):
   1. Tout d'abord, Aspose.Words essaie de traiter le nom de la police pour obtenir la substitution, en particulier il essaie de supprimer les suffixes avec les séparateurs "-" et ",".<br>
      Si cette règle de substitution a lieu, une "Police '&lt;OriginalFont&gt;' n'a pas été trouvée. Utilisation de la police '&lt;SubstitutionFont&gt;' à la place. Raison: substitution du nom de police." un avertissement apparaît.<br>
            {{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontsFoldersSystemAndCustomFolder-GetSubstitutionWithoutSuffixes.cs" >}}
   1. Aspose.Words tente ensuite d'appliquer les paramètres de police du système d'exploitation, s'ils sont disponibles, à l'aide de l'utilitaire **FontConfig**. Cette fonctionnalité non Windows doit être utilisée avec un système d'exploitation compatible FontConfig. Presque tous les systèmes d'exploitation basés sur Unix disposent déjà d'une bibliothèque `FontConfig` conçue pour fournir une configuration, une personnalisation et un accès aux applications à l'échelle du système. Sinon, cette bibliothèque peut être facilement installée par l'utilisateur.
      Aspose.Words sait comment interroger les données et interpréter les résultats de FontConfig à ses propres fins. Par défaut, l'utilitaire `FontConfig` est désactivé. Vous pouvez l'activer comme suit:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.FontConfigSubstitution.Enabled = true;
      {{< /highlight >}}
   1. L'étape suivante utilise un mécanisme simple mais puissant appelé règle de substitution **Table**. Par défaut, cette fonctionnalité est active et disponible pour le système d'exploitation donné. Aspose.Words remplacera la police par cette règle si elle n'est pas remplacée par la règle de substitution `FontConfig`.<br>
      Aspose.Words utilise des tables XML, qui définissent les règles de substitution de base pour différents systèmes d'exploitation. Selon la règle de substitution de table, la liste des noms de polices de substitution sera utilisée.<br>
      **XML**<br>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
      	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      La principale caractéristique de cette règle est la possibilité de charger vos propres tables de substitution, comme le montre l'exemple suivant:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Load("Table.xml");
      {{< /highlight >}}
      Malgré la flexibilité de ce mécanisme, il existe certains cas où il est préférable de le désactiver, comme indiqué ci-dessous:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.TableSubstitution.Enabled = false;
      {{< /highlight >}}
   1. La règle de substitution **FontInfo** sera appliquée si la règle de substitution de table ne trouve pas la police. Ce mécanisme est activé par défaut. Aspose.Words trouve la police la plus appropriée en fonction des informations de police contenues dans un document particulier. Ces informations peuvent être obtenues à partir de la classe **FontInfo** comme indiqué ci-dessous:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.FontInfos;
      {{< /highlight >}}
      Les utilisateurs ne peuvent pas interférer dans le workflow de cette fonctionnalité, à moins qu'ils ne décident de la désactiver en cas de résultats insatisfaisants:<br>
      **.NET**<br>
      {{< highlight csharp >}}
            fontSettings.SubstitutionSettings.FontInfoSubstitution.Enabled = false;
      {{< /highlight >}}
      Si **FontInfo** n'est pas disponible pour la police manquante, le processus s'arrête.<br>
   1. La règle de substitution **DefaultFont** sera appliquée dans le cas où la substitution `FontInfo` a également échoué. Cette règle est également activée par défaut. Selon cette règle, Aspose.Words tentera d'utiliser la police par défaut spécifiée dans la propriété [DefaultFontName](https://reference.aspose.com/words/fr/net/aspose.words.fonts/defaultfontsubstitutionrule/defaultfontname/). Si l'utilisateur n'a pas choisi sa propre police par défaut, alors "Times New Roman" sera utilisé comme police par défaut. Cette règle peut être désactivée comme indiqué ci-dessous:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.Enabled = false;
      {{< /highlight >}}
      Pour vérifier la police par défaut actuelle, utilisez:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName;
      {{< /highlight >}}
      Pour configurer votre propre option de remplacement, postulez:<br>
      **.NET**<br>
      {{< highlight csharp >}}
      fontSettings.SubstitutionSettings.DefaultFontSubstitution.DefaultFontName = "Arial";
      {{< /highlight >}}
1. Si Aspose.Words ne parvient pas à effectuer la substitution de police, il essaie d'obtenir la première police disponible à partir des sources de polices disponibles.
1. Enfin, si Aspose.Words ne trouve aucune police parmi les sources de polices disponibles, il restitue le document en utilisant la police gratuite Fanwood intégrée dans l'assemblage Aspose.Words.<br>

Si **FontInfo** est disponible, la *règle de substitution FontInfo* résoudra toujours la police et remplacera la règle de police par défaut. Si vous souhaitez utiliser la règle de police par défaut, vous devez désactiver la *règle de substitution FontInfo*. Notez que la *règle de substitution FontConfig* résoudra la police dans la plupart des cas et remplacera ainsi toutes les autres règles.

## Comment reconnaître que la police a été remplacée

Parfois, il peut être difficile de comprendre pourquoi la mise en page du document a changé ou pourquoi certaines polices ne ressemblent pas à celles attendues. Dans de tels cas, les messages d'avertissement de substitution de police implémentés par l'interface [IWarningCallback](https://reference.aspose.com/words/fr/net/aspose.words/iwarningcallback/) viennent à la rescousse. Ils ont le type d'avertissement [FontSubstitution](https://reference.aspose.com/words/fr/net/aspose.words/warningtype/) et le format de texte de description standard, "Police"<OriginalFont> " n'a pas été trouvé. En utilisant '<SubstitutionFont> ' police à la place. Raison:<Reason> ", pour les raisons suivantes:

- "nom alternatif du document" – pour substitution par [AltName](https://reference.aspose.com/words/fr/net/aspose.words.fonts/fontinfo/properties/altname)
- "fontconfig substitution" – pour la substitution par règle de configuration de police
- "substitution de table" – pour la substitution par règle de table
- "Substitution des informations de police" - pour la substitution par règle d'informations de police
- "Substitution de police par défaut" – pour la substitution par règle de police par défaut
- "première police disponible" - pour la substitution par la première police disponible

## Paramètres de secours de police à partir de XML

Il existe deux mécanismes différents utilisés dans Aspose.Words: la substitution de police et le repli de police. La substitution de police est utilisée lorsque la police spécifiée dans le document n'a pas pu être trouvée parmi les sources de polices comme cela a été décrit dans les sections ci-dessus. Le mécanisme de secours de police est utilisé lorsque la police est résolue, mais elle ne contient pas de caractère spécifique. Dans ce cas, Aspose.Words essaie d'utiliser l'une des polices de secours pour le caractère.

Il existe une méthode [BuildAutomatic](https://reference.aspose.com/words/fr/net/aspose.words.fonts/fontfallbacksettings/buildautomatic/) qui crée automatiquement les paramètres de secours en analysant les polices disponibles. Étant donné que cette méthode peut produire un paramètre de secours non optimal, vous pouvez contrôler le comportement de secours des polices à l’aide des propriétés de la classe [FontFallbackSettings](https://reference.aspose.com/words/fr/net/aspose.words.fonts/fontfallbacksettings/). Cette classe spécifie les paramètres du mécanisme de secours des polices. Vous pouvez obtenir une instance de la classe **FontFallbackSettings** comme suit:

**.NET**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.FallbackSettings;
{{< /highlight >}}

De la même manière que la *Règle de substitution de table*, ce mécanisme utilise des tables XML pour la configuration. Ces tableaux XML peuvent être chargés et enregistrés avec les méthodes suivantes:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.Load("MyNewFallbackTable.xml");
fontSettings.FallbackSettings.Save("Current_FallbackTable.xml");
{{< /highlight >}}

La version Aspose.Words comprend deux tables: *MsOfficeFallbackSetting.xml* et *NotoFallbackSetting.xml*.

La table *MsOfficeFallbackSetting* définit une stratégie de remplacement pour une plage de caractères, similaire à la stratégie utilisée par Microsoft Word. Ainsi, la stratégie nécessite l'installation de polices Microsoft Office. *MsOfficeFallbackSetting* peut être activé en utilisant la méthode suivante:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadMsOfficeFallbackSettings();
{{< /highlight >}}

La table *NotoFallbackSetting* est créée spécialement pour être utilisée avec les polices Google Noto (pour en savoir plus sur les paramètres de police Google Noto dans la section suivante) et peut être activée comme suit:

**.NET**

{{< highlight csharp >}}
fontSettings.FallbackSettings.LoadNotoFallbackSettings();
{{< /highlight >}}

L'exemple de code suivant montre comment charger les paramètres de secours des polices à partir d'un fichier XML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetFontFallbackSettings.cs" >}}

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

## Paramètres de secours de police prédéfinis pour les polices Google Noto

Aspose.Words fournit des paramètres de secours de police prédéfinis pour les polices Google Noto. Il s'agit de polices gratuites sous licence SIL Open Font, qui peuvent être téléchargées à partir de Google Noto Fonts. La classe **FontFallbackSettings** fournit une méthode [LoadNotoFallbackSettings](https://reference.aspose.com/words/fr/net/aspose.words.fonts/fontfallbacksettings/loadnotofallbacksettings/). Il charge les paramètres de secours prédéfinis, qui utilisent les polices Google Noto, comme indiqué dans l'exemple de code ci-dessous:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SetFontSettings-SetPredefinedFontFallbackSettings.cs" >}}

{{% alert color="primary" %}}

Seules les polices Noto de style Sans avec une épaisseur normale sont utilisées dans les paramètres prédéfinis.

{{% /alert %}}

## Où Aspose.Words recherche les polices

Aspose.Words tente de trouver automatiquement les polices TrueType sur le système de fichiers. Habituellement, vous pouvez vous fier au comportement par défaut de Aspose.Words pour rechercher les polices `TrueType`, mais vous devez parfois spécifier vos propres dossiers contenant les polices TrueType. La rubrique [Spécifier l'emplacement des polices TrueType](/words/fr/net/specifying-truetype-fonts-location/) décrit comment et où Aspose.Words recherche les polices, ainsi que comment spécifier vos propres emplacements de polices.

## Différences de traitement des formats de police dans Aspose.Words et Microsoft Word

Il existe quelques différences dans le traitement des formats de police dans Aspose.Words et Microsoft Word, comme indiqué dans le tableau ci-dessous:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Polices TrueType et polices OpenType avec contours TrueType | Prise en charge. | Prise en charge. |
| Polices OpenType avec contours PostScript | Pris en charge pour la plupart des scénarios. L'intégration dans des formats de pages fixes tels que PDF et XPS n'est pas prise en charge. Le texte est remplacé par des images bitmap. | Pris en charge pour la plupart des scénarios, y compris l'intégration dans des formats de page fixe. |
| Variations de polices OpenType | Seules les instances nommées sont prises en charge. Les variations continues ne sont pas prises en charge. | Pris en charge uniquement pour l'instance par défaut. Les instances nommées et les variations continues ne sont pas prises en charge. |
| Polices Type1 | Pris en charge sur les versions Windows antérieures à 2013 et sur les versions MacOS. La prise en charge est abandonnée sur les versions Windows à partir de 2013. | Non supporté. |

## Voir également

- [Polices Google Noto](https://fonts.google.com/noto) pour télécharger des polices gratuites
