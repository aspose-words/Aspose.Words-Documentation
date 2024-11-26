---
title: MFont Disponibilité et substitution en C++
second_title: Aspose.Words pour C++
articleTitle: Disponibilité et Substitution des Polices
linktitle: Disponibilité et Substitution des Polices
description: "Lorsque la police de substitution exacte est introuvable, Aspose.Words doit la remplacer par une police similaire à la place. Cet article décrit le processus de recherche de la police la plus appropriée."
type: docs
weight: 12
url: /fr/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

Un texte dans un document peut être formaté avec différentes polices, telles que Arial, Times New Roman, Verdana et autres. Lorsque Aspose.Words affiche un document, il tente de sélectionner les polices spécifiées dans le document.

Cependant, il y a des situations où la police exacte ne peut pas être trouvée et Aspose.Words doit la remplacer par une police similaire à la place. Aspose.Words sélectionne la police selon le processus suivant:

1. Aspose.Words essaie de trouver une police parmi les sources de polices disponibles avec un nom de police exact.
1. Aspose.Words essaie de trouver la police requise parmi les polices incorporées dans le document d'origine. Certains formats de document tels que DOCX peuvent contenir des polices incorporées.
1. Si Aspose.Words ne parvient pas à localiser la police requise avec la correspondance de nom exacte et que la propriété [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) est définie pour cette police, alors Aspose.Words trouvera la police définie avec **AltName** à partir de la classe [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info), qui spécifie les informations de police.
1. Si Aspose.Words ne parvient pas à localiser la police définie et que **AltName** n'est pas également défini, les règles de substitution de police sont appliquées une par une, comme décrit ci-dessous (lorsque le remplacement approprié est trouvé, le processus de substitution de police s'arrête et l'étape suivante n'est pas exécutée):
   1. Aspose.Words tentera d'appliquer les paramètres de police du système d'exploitation, s'ils sont disponibles, en utilisant l'utilitaire `FontConfig`. Cette fonctionnalité nonWindows doit être utilisée avec un système d'exploitation compatible FontConfig. Presque tous les systèmes d'exploitation basés sur Unix disposent déjà d'une bibliothèque `FontConfig` conçue pour fournir une configuration de polices, une personnalisation et un accès aux applications à l'échelle du système. Sinon, cette bibliothèque peut être facilement installée par l'utilisateur.<br>
      Aspose.Words sait interroger les données et interpréter les résultats FontConfig à ses propres fins. Par défaut, l'utilitaire `FontConfig` est désactivé. Vous pouvez l'activer comme suit:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. L'étape suivante est un mécanisme simple, mais incroyablement puissant appelé [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). Par défaut, cette fonctionnalité est active et disponible pour n'importe quel système d'exploitation. Aspose.Words utilise des tables XML qui définissent des règles de substitution de base pour différents systèmes d'exploitation. Selon la règle de substitution de table, la liste des noms de polices de substitution sera utilisée.<br>
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
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      Vous pouvez prendre comme base la table existante du fichier jar ou l'enregistrer par programme de la manière suivante:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      Malgré la flexibilité de ce mécanisme, il existe certains cas où il est préférable de le désactiver, comme indiqué ci-dessous:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. La règle de substitution **FontInfo** sera appliquée si la règle de substitution de table ne trouve pas la police. Ce mécanisme est activé par défaut. Aspose.Words trouve la police la plus appropriée en fonction des informations de police contenues dans un document particulier. Ces informations peuvent être obtenues à partir de la classe **FontInfo** comme indiqué ci-dessous:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Les utilisateurs ne peuvent pas interférer dans le flux de travail de cette fonctionnalité à moins qu'ils ne décident de la désactiver en cas de résultats insatisfaisants:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Si **FontInfo** n'est pas disponible pour la police manquante, le processus s'arrête.
   1. la règle de substitution **DefaultFont** sera appliquée dans le cas où la substitution `FontInfo` a également échoué. Cette règle est également activée par défaut. Selon cette règle, Aspose.Words tentera d'utiliser la police par défaut spécifiée dans la propriété [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). Si l'utilisateur n'a pas choisi sa propre police par défaut, "Times New Roman" sera utilisé comme police par défaut. Cette règle peut être désactivée comme indiqué ci-dessous:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Pour vérifier la police par défaut actuelle, utilisez:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Pour configurer votre propre option de remplacement, appliquez:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Si Aspose.Words ne parvient pas à effectuer la substitution de police, il essaie d'obtenir la première police disponible à partir des sources de polices disponibles.
1. Enfin, si Aspose.Words ne trouve aucune police parmi les sources de polices disponibles, il affiche le document à l'aide de la police Fanwood gratuite intégrée à l'assembly Aspose.Words.

{{% alert color="primary" %}}

Si **FontInfo** est disponible, *FontInfo substitution rule* résoudra toujours la police et remplacera la règle de police par défaut. Si vous souhaitez utiliser la règle de police par défaut, vous devez désactiver le *FontInfo substitution rule*. Notez que le *FontConfig substitution rule* résoudra la police dans la plupart des cas et remplacera donc toutes les autres règles.

{{% /alert %}}


