---
title: Travailler avec la table des matières dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec la table des matières
linktitle: Travailler avec la table des matières
description: "Champ Table des matières en détails. Comment créer et modifier un champ `TOC` à l'aide de C#. Insérez `TOC` C#."
type: docs
weight: 170
url: /fr/net/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Souvent, vous travaillerez avec des documents contenant une table des matières (TOC). En utilisant Aspose.Words, vous pouvez insérer votre propre table des matières ou reconstruire complètement la table des matières existante dans le document en utilisant seulement quelques lignes de code. Cet article explique comment utiliser le champ de table des matières et démontre:

- Comment insérer un tout nouveau `TOC`
- Mettre à jour les tables des matières nouvelles ou existantes dans le document.
- Spécifiez les commutateurs pour contrôler le formatage et la structure globale de la table des matières.
- Comment modifier les styles et l'apparence de la table des matières.
- Comment supprimer un champ `TOC` entier ainsi que toutes les entrées du document.

## Insérer une table des matières par programme

Vous pouvez insérer un champ `TOC` (table des matières) dans le document à la position actuelle en appelant la méthode [InsertTableOfContents](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/inserttableofcontents/).

Une table des matières dans un document Word peut être créée de plusieurs manières et formatée à l'aide de diverses options. Les commutateurs de champ que vous transmettez à la méthode contrôlent la façon dont le tableau est construit et affiché dans votre document.

Les commutateurs par défaut utilisés dans un `TOC` inséré dans Microsoft Word sont **"\o "1-3 \h \z \u"**. Les descriptions de ces commutateurs ainsi qu'une liste des commutateurs pris en charge sont disponibles plus loin dans l'article. Vous pouvez soit utiliser ce guide pour obtenir les bons commutateurs, soit si vous disposez déjà d'un document contenant le `TOC` similaire que vous souhaitez, vous pouvez afficher les codes de champ (*ALT+F9*) et copier les commutateurs directement à partir du champ.

L'exemple de code suivant montre comment insérer un champ Table des matières dans un document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-DocumentBuilderInsertTOC.cs" >}}

L'exemple de code suivant montre comment insérer une table des matières (TOC) dans un document en utilisant des styles de titre comme entrées.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTableOfContents.cs" >}}

{{% alert color="primary" %}}

Sans les méthodes utilisées dans l'exemple, lorsque vous ouvrez le document de sortie, vous trouveriez le champ `TOC`, mais sans contenu visible. En effet, le champ `TOC` a été inséré mais n'est pas encore renseigné tant qu'il n'est pas mis à jour dans le document. De plus amples informations à ce sujet sont abordées dans la section suivante.

{{% /alert %}}

## Mettre à jour la table des matières

Aspose.Words vous permet de mettre à jour complètement un `TOC` avec seulement quelques lignes de code. Cela peut être fait pour remplir un `TOC` nouvellement inséré ou pour mettre à jour un `TOC` existant après que des modifications ont été apportées au document. Les deux méthodes suivantes doivent être utilisées afin de mettre à jour les champs `TOC` dans le document:

1. [UpdateFields](https://reference.aspose.com/words/fr/net/aspose.words/document/updatefields/)
1. [UpdatePageLayout](https://reference.aspose.com/words/fr/net/aspose.words/document/updatepagelayout/)

Veuillez noter que ces deux méthodes de mise à jour doivent être appelées dans cet ordre. En cas d'inversion, la table des matières sera renseignée mais aucun numéro de page ne sera affiché. N'importe quel nombre de tables des matières différentes peut être mis à jour. Ces méthodes mettront automatiquement à jour toutes les tables des matières trouvées dans le document.

L'exemple de code suivant montre comment reconstruire complètement les champs `TOC` dans le document en appelant la mise à jour des champs:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-UpdateFields.cs" >}}

Le premier appel à **UpdateFields** créera le `TOC`, toutes les entrées de texte seront renseignées et le `TOC` apparaîtra presque terminé. Il ne manque plus que les numéros de page qui pour l'instant sont affichés avec "?". Le deuxième appel à **UpdatePageLayout** construira la mise en page du document en mémoire. Cela doit être fait pour rassembler les numéros de page des entrées. Les numéros de page corrects calculés à partir de cet appel sont ensuite insérés dans la table des matières.

## Utilisez des commutateurs pour contrôler le comportement de la table des matières

Comme pour tout autre champ, le champ `TOC` peut accepter des commutateurs définis dans le code du champ qui contrôlent la manière dont la table des matières est construite. Certains commutateurs sont utilisés pour contrôler quelles entrées sont incluses et à quel niveau tandis que d'autres sont utilisés pour contrôler l'apparence de la table des matières. Les commutateurs peuvent être combinés entre eux pour permettre la production de tables des matières complexes.

![working-with-table-of-contents-aspose-words-net](/words/net/working-with-table-of-contents/working-with-table-of-contents-1.png)


Par défaut, ces commutateurs ci-dessus sont inclus lors de l'insertion d'un `TOC` par défaut dans le document. Un `TOC` sans commutateur inclura le contenu des styles de titre intégrés (comme si le commutateur \O était activé). Les commutateurs `TOC` disponibles pris en charge par Aspose.Words sont répertoriés ci-dessous et leurs utilisations sont décrites en détail. Ils peuvent être divisés en sections distinctes en fonction de leur type. Les commutateurs de la première section définissent le contenu à inclure dans le `TOC` et les commutateurs de la deuxième section contrôlent l'apparence de la table des matières. Si un commutateur n'est pas répertorié ici, cela signifie qu'il n'est actuellement pas pris en charge. Tous les commutateurs seront pris en charge dans les versions futures. Nous ajoutons un support supplémentaire à chaque version.

### Commutateurs de marquage d'entrée

|  Changer | Description |
|  :-  |  :-  |
| **Heading Styles**<br>*(Commutateur \O)* | <p>Ce commutateur définit que le `TOC` doit être construit à partir des styles de titre intégrés. Dans Microsoft Word, ceux-ci sont définis par Titre 1 – Titre 9. Dans Aspose.Words, ces styles sont représentés par l’énumération StyleIdentifier correspondante. Cette énumération représente un identifiant d'un style indépendant des paramètres régionaux, par exemple `StyleIdentifier.Heading1` représente le style Titre 1. Grâce à cela, la mise en forme et les propriétés du style peuvent être récupérées à partir de la collection Style du document. La classe Style correspondante peut être récupérée de la collection `Document.Styles` en utilisant la propriété indexée de type StyleIdentifier.</p>

<p>![working-with-table-of-contents-styles](/words/net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>Tout contenu formaté avec ces styles est inclus dans la table des matières. Le niveau de la rubrique définira le niveau hiérarchique correspondant de l'entrée dans la table des matières. Par exemple, un paragraphe avec le style Titre 1 sera traité comme le premier niveau du `TOC` tandis qu'un paragraphe avec le style Titre 2 sera traité comme le niveau suivant dans la hiérarchie et ainsi de suite.</p> |
| **Outline Levels**<br>*(Commutateur \U)* | <p>Chaque paragraphe peut définir un niveau de plan sous Options de paragraphe.</p>

<p>![working-with-table-of-contents-paragraph](/words/net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>Ce paramètre détermine à quel niveau ce paragraphe doit être traité dans la hiérarchie du document. Il s’agit d’une pratique couramment utilisée pour structurer facilement la mise en page d’un document. Cette hiérarchie peut être visualisée en passant à la vue Plan dans Microsoft Word. Semblable aux styles de titre, il peut y avoir 1 à 9 niveaux de plan en plus du niveau "Corps du texte". Les niveaux de plan 1 à 9 apparaîtront dans le `TOC` au niveau correspondant de la hiérarchie.<br>Tout contenu avec un niveau de plan défini dans le style de paragraphe ou directement sur le paragraphe lui-même est inclus dans la table des matières. En Aspose.Words, le niveau hiérarchique est représenté par la propriété `ParagraphFormat.OutlineLevel` du nœud Paragraphe. Le niveau hiérarchique d'un style de paragraphe est représenté de la même manière par la propriété `Style.ParagraphFormat`.</p>

<p>{{% alert color="primary" %}}</p>

<p>Notez que les styles de titre intégrés tels que Titre 1 ont un niveau de plan obligatoire défini dans les paramètres de style.</p>

<p>{{% /alert %}}</p> |
| **Custom Styles**<br>*(Commutateur \T)* | <p>Ce commutateur permettra d'utiliser des styles personnalisés lors de la collecte des entrées à utiliser dans la table des matières. Ceci est souvent utilisé conjointement avec le commutateur \O pour inclure des styles personnalisés ainsi que des styles de titre intégrés dans la table des matières.<br>Les paramètres du commutateur doivent être entourés de marques vocales. De nombreux styles personnalisés peuvent être inclus, pour chaque style, le nom doit être spécifié suivi d'une virgule suivi du niveau sous lequel le style doit apparaître dans le `TOC`. Les autres styles sont également séparés par une virgule.<br>Par exemple</p>

<p>{{< highlight csharp >}}

<p>  { TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"} </p><p>{{< /highlight >}}</p>

<p>utilisera le contenu stylisé avec CustomHeading1 comme contenu de niveau 1 dans le `TOC` et CustomHeading2 comme niveau 2.</p> |
| **Use TC Fields**<br>*(Commutateurs \F et \L)* | <p>Dans les anciennes versions de Microsoft Word, la seule façon de créer un `TOC` était d'utiliser des champs TC. Ces champs sont insérés masqués dans le document même lorsque les codes de champ sont affichés. Ils incluent le texte qui doit être affiché dans l'entrée et le `TOC` est construit à partir d'eux. Cette fonctionnalité n'est plus utilisée très souvent mais peut encore être utile dans certaines occasions pour inclure dans le `TOC` des entrées qui ne sont pas en retrait pour être visibles dans le document.<br>Une fois insérés, ces champs apparaissent masqués même lorsque les codes de champ sont affichés. Ils ne peuvent pas être vus sans afficher du contenu caché. Pour voir ces champs, Afficher le formatage des paragraphes doit être sélectionné.</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p> Ces champs peuvent être insérés dans un document à n'importe quelle position comme n'importe quel autre champ et sont représentés par l'énumération `FieldType.FieldTOCEntry`.<br>Le commutateur \F dans un `TOC` est utilisé pour spécifier que les champs TC doivent être utilisés comme entrées. Le commutateur seul, sans aucun identifiant supplémentaire, signifie que tout champ TC du document sera inclus. Tout paramètre supplémentaire, souvent une seule lettre, indiquera que seuls les champs TC qui ont un commutateur \f correspondant seront inclus dans la table des matières. Par exemple *</p>

<p>{{< highlight csharp >}}

<p>  { TOC \f t } </p><p>{{< /highlight >}}</p>

<p>n'inclura que les champs TC tels que</p>

<p>{{< highlight csharp >}}
p> {   TC \f t }</p><p>{{< /highlight >}}</p>

<p>Le champ `TOC` possède également un commutateur associé, le commutateur "\L" spécifie que seuls les champs TC dont les niveaux se situent dans la plage spécifiée sont inclus.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>Les champs `TC` eux-mêmes peuvent également avoir des commutateurs `{several, multiple, a few, many, numerous}` définis. Ceux-ci sont:</p>

<p>- *\F – Expliqué ci-dessus.*</p>

<p>- *\L – Définit à quel niveau du `TOC` ce champ TC apparaîtra. Un `TOC` qui utilise ce même commutateur n'inclura ce champ TC que s'il se trouve dans la plage spécifiée.*</p>

<p>- `_\N` – La numérotation des pages de cette entrée `TOC` n'est pas affichée. Un exemple de code sur la façon d'insérer des champs TC peut être trouvé dans la section suivante.</p> |

### Commutateurs liés à l’apparence

|  Changer | Description |
|  :-  |  :-  |
| **Omit Page Numbers**<br>*(Commutateur \N)* | <p>Ce commutateur est utilisé pour masquer les numéros de page pour certains niveaux de la table des matières. Par exemple, vous pouvez définir</p>

<p>{{< highlight csharp >}}
<p>  {TOC \o "1-4" \n "3-4" } </p><p>{{< /highlight >}}</p>

<p>et les numéros de page sur les entrées des niveaux 3 et quatre seront masqués avec les points de repère (s'il y en a). Pour spécifier un seul niveau, une plage doit toujours être utilisée, par exemple "1-1" exclura les numéros de page uniquement pour le premier niveau.<br>Si vous ne fournissez aucune plage de niveaux, les numéros de page seront omis pour tous les niveaux de la table des matières. Ceci est utile à définir lors de l’exportation d’un document au format HTML ou similaire. En effet, les formats HTML n'ont aucun concept de page et n'ont donc pas besoin de numérotation de page.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks**<br>*(Commutateur \H)* | <p>Ce commutateur spécifie que les entrées `TOC` sont insérées sous forme d'hyperliens. Lors de la visualisation d'un document au format Microsoft Word, ces entrées apparaîtront toujours sous forme de texte normal dans le `TOC` mais sont liées par un hyperlien et peuvent donc être utilisées pour accéder à la position de l'entrée d'origine dans le document en utilisant *Ctrl + Clic gauche* dans Microsoft Word. Lorsque ce commutateur est inclus, ces liens sont également conservés dans d'autres formats. Par exemple, dans les formats HTML, notamment EPUB, et les formats rendus tels que PDF et XPS, ceux-ci seront exportés sous forme de liens de travail.<br>Sans ce commutateur, le `TOC` dans toutes ces sorties sera exporté sous forme de texte brut et ne démontrera pas ce comportement. Si un document est ouvert dans MS Word, le texte des entrées ne sera pas non plus cliquable de cette manière, mais les numéros de page pourront toujours être utilisés pour accéder à l'entrée d'origine.</p>

<p>![working-with-table-of-contents-titles](/words/net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p> |
| **Set Separator Character**<br>*(Commutateur \P)* | <p>Ce commutateur permet de modifier facilement le contenu séparant le titre de l'entrée et la numérotation des pages dans la table des matières. Le séparateur à utiliser doit être spécifié après ce changement et entouré de marques vocales.<br>Contrairement à ce qui est documenté dans la documentation Office, un seul caractère peut être utilisé au lieu de cinq maximum. Cela s'applique à la fois à MS Word et à Aspose.Words.<br>L'utilisation de ce commutateur n'est pas recommandée car elle ne permet pas beaucoup de contrôle sur ce qui est utilisé pour séparer les entrées et les numéros de page dans la table des matières. Au lieu de cela, il est recommandé de modifier le style `TOC` approprié, tel que `StyleIdentifier.TOC1`, puis de modifier le style de ligne de repère avec accès à des membres de police spécifiques, etc. Vous trouverez plus de détails sur la façon de procéder plus loin dans l'article.</p>

<p>![working-with-table-of-contents-toc](/words/net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p> |
| **Preserve Tab Entries**<br>*(\WCommutateur)* | <p>L'utilisation de ce commutateur spécifiera que toutes les entrées comportant un caractère de tabulation, par exemple un en-tête comportant une tabulation à la fin de la ligne, seront conservées en tant que caractère de tabulation approprié lors du remplissage de la table des matières. Cela signifie que la fonction du caractère de tabulation sera présente dans le `TOC` et pourra être utilisée pour formater l'entrée. Par exemple, certaines entrées peuvent utiliser des taquets de tabulation et des caractères de tabulation pour espacer uniformément le texte. Tant que le niveau `TOC` correspondant définit les taquets de tabulation équivalents, les entrées `TOC` générées apparaîtront avec un espacement similaire.<br><br>Dans la même situation, si ce commutateur n'était pas défini, les caractères de tabulation seraient convertis en espaces blancs équivalents à des tabulations non fonctionnelles. Le résultat n’apparaîtrait alors pas comme prévu.</p>

<p>![working-with-table-of-contents-aspose](/words/net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries**<br>*(\Commutateur X)* | <p>Semblable au commutateur ci-dessus, ce commutateur spécifie que les titres s'étendant sur plusieurs lignes (en utilisant des caractères de nouvelle ligne et non des paragraphes séparés) seront conservés tels qu'ils sont dans la table des matières générée. Par exemple, un titre qui doit s'étendre sur plusieurs lignes peut utiliser le caractère de nouvelle ligne (Ctrl + Entrée ou `ControlChar.LineBreak`) pour séparer le contenu sur différentes lignes. Avec ce commutateur spécifié, l'entrée dans le `TOC` conservera ces nouveaux caractères de ligne comme indiqué ci-dessous.<br><br>Dans cette situation, si le commutateur n'est pas défini, les caractères de nouvelle ligne sont convertis en un seul espace blanc.</p>

<p>![working-with-table-of-contents-aspose-words](/words/net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p> |

## Insérer des champs TC

Vous pouvez insérer un nouveau champ TC à la position actuelle du [DocumentBuilder](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/) en appelant la méthode [InsertField](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertfield/) et en spécifiant le nom du champ comme "TC" ainsi que tous les commutateurs nécessaires.

L'exemple de code suivant montre comment insérer un champ `TC` dans le document à l'aide de **DocumentBuilder**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCField-DocumentBuilderInsertTCField.cs" >}}

Souvent, une ligne de texte spécifique est désignée pour le `TOC` et est marquée par un champ `TC`. Le moyen le plus simple de le faire en Microsoft Word consiste à mettre le texte en surbrillance et à appuyer sur *ALT+SHIFT+O*. Cela crée automatiquement un champ `TC` en utilisant le texte sélectionné. La même technique peut être réalisée via le code. Le code ci-dessous trouvera le texte correspondant à l'entrée et insérera un champ `TC` à la même position que le texte. Le code est basé sur la même technique utilisée dans l'article.

L'exemple de code suivant montre comment rechercher et insérer un champ `TC` dans le texte d'un document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cs" >}}

## Modifier la table des matières

Le formatage des entrées dans le `TOC` n'utilise pas les styles d'origine des entrées marquées, mais chaque niveau est formaté en utilisant un style `TOC` équivalent. Par exemple, le premier niveau du `TOC` est formaté avec le style **Table des matières1**, le deuxième niveau avec le style **Table des matières2**, etc. Cela signifie que pour changer l'apparence du `TOC`, ces styles doivent être modifiés. En Aspose.Words, ces styles sont représentés par le `StyleIdentifier.TOC1` indépendant des paramètres régionaux jusqu'au `StyleIdentifier.TOC9` et peuvent être récupérés à partir de la collection [Styles](https://reference.aspose.com/words/fr/net/aspose.words/documentbase/styles/) à l'aide de ces identifiants.

Une fois le style approprié du document récupéré, le formatage de ce style peut être modifié. Toute modification apportée à ces styles sera automatiquement reflétée dans la table des matières du document.

L'exemple de code suivant modifie une propriété de formatage utilisée dans le style `TOC` de premier niveau:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cs" >}}

Il est également utile de noter que toute mise en forme directe d'un paragraphe (définie sur le paragraphe lui-même et non dans le style) marquée pour être incluse dans le `TOC` sera copiée dans l'entrée de la TOC. Par exemple, si le style Titre 1 est utilisé pour marquer le contenu du `TOC` et que ce style a un format gras tandis que le paragraphe a également un format italique directement appliqué. L'entrée `TOC` résultante ne sera pas en gras car cela fait partie du formatage du style, mais elle sera en italique car elle est directement formatée sur le paragraphe.

Vous pouvez également contrôler le formatage des séparateurs utilisés entre chaque entrée et numéro de page. Par défaut, il s'agit d'une ligne pointillée qui s'étend sur la numérotation des pages à l'aide d'un caractère de tabulation et d'un taquet de tabulation droit aligné près de la marge droite.

En utilisant la classe [Style](https://reference.aspose.com/words/fr/net/aspose.words/style/) récupérée pour le niveau `TOC` particulier que vous souhaitez modifier, vous pouvez également modifier la façon dont ceux-ci apparaissent dans le document. Pour modifier la façon dont cela apparaît, [ParagraphFormat](https://reference.aspose.com/words/fr/net/aspose.words/style/paragraphformat/) doit d'abord être appelé pour récupérer le formatage du paragraphe pour le style. À partir de là, les taquets de tabulation peuvent être récupérés en appelant [TabStops](https://reference.aspose.com/words/fr/net/aspose.words/paragraphformat/tabstops/) et le taquet de tabulation approprié modifié. En utilisant cette même technique, l'onglet lui-même peut être déplacé ou supprimé complètement.

L'exemple de code suivant montre comment modifier la position du taquet de tabulation droit dans les paragraphes liés à `TOC`:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cs" >}}

## Supprimer la table des matières du document

Une table des matières peut être supprimée du document en supprimant tous les nœuds trouvés entre le nœud `FieldStart` et FieldEnd du champ `TOC`. Le code ci-dessous le démontre. La suppression du champ `TOC` est plus simple qu'un champ normal car nous ne gardons pas la trace des champs imbriqués. Au lieu de cela, nous vérifions que le nœud [FieldEnd](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldend/) est de type [FieldType.FieldTOC](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldtype/), ce qui signifie que nous avons rencontré la fin de la table des matières actuelle. Cette technique peut être utilisée dans ce cas sans se soucier des champs imbriqués, car nous pouvons supposer que tout document correctement formé n'aura pas de champ `TOC` entièrement imbriqué dans un autre champ `TOC`.

Tout d'abord, les nœuds [FieldStart](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldstart/) de chaque `TOC` sont collectés et stockés. Le `TOC` spécifié est ensuite énuméré afin que tous les nœuds du champ soient visités et stockés. Les nœuds sont ensuite supprimés du document.

L'exemple de code suivant montre comment supprimer un `TOC` spécifié d'un document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cs" >}}

## Extraire la table des matières

Si vous souhaitez extraire une table des matières de n'importe quel document Word, l'exemple de code suivant peut être utilisé:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ExtractTableOfContents-ExtractTableOfContents.cs" >}}
