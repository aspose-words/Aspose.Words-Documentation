---
title: Utilisation de la table des matières dans Java
second_title: Aspose.Words pour Java
articleTitle: Utilisation de la Table des matières
linktitle: Utilisation de la Table des matières
description: "Champ de la Table des matières en détails. Comment créer et modifier un champ `TOC` à l'aide de Java."
type: docs
weight: 170
url: /fr/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Souvent, vous travaillerez avec des documents contenant une table des matières (TOC). En utilisant Aspose.Words, vous pouvez insérer votre propre table des matières ou reconstruire complètement la table des matières existante dans le document en utilisant seulement quelques lignes de code.

Cet article explique comment utiliser le champ Table des matières et démontre:

- Comment insérer un tout nouveau TOC.
- Mettez à jour TOCs nouveau ou existant dans le document.
- Spécifiez des commutateurs pour contrôler la mise en forme et la structure globale du TOC.
- Comment modifier les styles et l'apparence de la table des matières.
- Comment supprimer un champ `TOC` entier ainsi que toutes les entrées du document.

## Insérer la Table des matières par programmation

Vous pouvez insérer un champ `TOC` (table des matières) dans le document à la position actuelle en appelant la méthode [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String).

Une table des matières dans un document Word peut être construite de plusieurs manières et formatée à l'aide de diverses options. Les commutateurs de champ que vous transmettez à la méthode contrôlent la manière dont le tableau est construit et affiché dans votre document.

Les commutateurs par défaut utilisés dans un `TOC` inséré dans Microsoft Word sont **"\o "1-3 \h \z \u"**. Des descriptions de ces commutateurs ainsi qu'une liste des commutateurs pris en charge peuvent être trouvées plus loin dans l'article. Vous pouvez soit utiliser ce guide pour obtenir les commutateurs corrects, soit si vous avez déjà un document contenant le `TOC` similaire que vous souhaitez, vous pouvez afficher les codes de champ (*ALT+F9*) et copier les commutateurs directement à partir du champ.

L'exemple de code suivant montre comment insérer un champ de Table des matières dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

L'exemple de code suivant montre comment insérer une table des matières (TOC) dans un document en utilisant des styles de titre comme entrées:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

Le code montre que la nouvelle table des matières est insérée dans un document vierge. La classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) est ensuite utilisée pour insérer un exemple de formatage de contenu avec les styles de titre appropriés qui sont utilisés pour marquer le contenu à inclure dans le TOC. Les lignes suivantes remplissent ensuite le `TOC` en mettant à jour les champs et la mise en page du document.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Sans les méthodes utilisées dans l'exemple, lorsque vous ouvrez le document de sortie, vous trouverez le champ `TOC`, mais sans contenu visible. C'est parce que le champ `TOC` a été inséré mais n'est pas encore rempli tant qu'il n'est pas mis à jour dans le document. De plus amples informations à ce sujet sont discutées dans la section suivante.

{{% /alert %}}

## Mettre à jour la Table des matières

Aspose.Words vous permet de mettre à jour complètement un `TOC` avec seulement quelques lignes de code. Cela peut être fait pour remplir un `TOC` nouvellement inséré ou pour mettre à jour un `TOC` existant après que des modifications aient été apportées au document.

Les deux méthodes suivantes doivent être utilisées pour mettre à jour les champs `TOC` dans le document:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Veuillez noter que ces deux méthodes de mise à jour doivent être appelées dans cet ordre. En cas d'inversion, la table des matières sera remplie mais aucun numéro de page ne sera affiché. N'importe quel nombre de TOCs différents peut être mis à jour. Ces méthodes mettront automatiquement à jour tous les TOCs trouvés dans le document.

L'exemple de code suivant montre comment reconstruire complètement les champs `TOC` dans le document en appelant les mises à jour des champs:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

Le premier appel à [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) construira le `TOC`, toutes les entrées de texte sont remplies et le `TOC` apparaît presque terminé. La seule chose qui manque, ce sont les numéros de page qui pour l'instant sont affichés avec "?".

Le deuxième appel à [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) construira la mise en page du document en mémoire. Cela doit être fait pour rassembler les numéros de page des entrées. Les numéros de page corrects calculés à partir de cet appel sont ensuite insérés dans le TOC.

## Utilisez des commutateurs pour contrôler le comportement de la Table des matières

Comme pour tout autre champ, le champ `TOC` peut accepter des commutateurs définis dans le code de champ qui contrôle la construction de la table des matières. Certains commutateurs sont utilisés pour contrôler quelles entrées sont incluses et à quel niveau tandis que d'autres sont utilisés pour contrôler l'apparence du TOC. Les commutateurs peuvent être combinés entre eux pour permettre la production d'une table des matières complexe.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Par défaut, ces commutateurs ci-dessus sont inclus lors de l'insertion d'un `TOC` par défaut dans le document. Un `TOC` sans commutateur inclura le contenu des styles de titre intégrés (comme si le commutateur \O était défini).

Les commutateurs `TOC` disponibles pris en charge par Aspose.Words sont répertoriés ci-dessous et leurs utilisations sont décrites en détail. Ils peuvent être divisés en sections distinctes en fonction de leur type. Les commutateurs de la première section définissent le contenu à inclure dans le `TOC` et les commutateurs de la deuxième section contrôlent l'apparence du TOC.

Si un commutateur n'est pas répertorié ici, il n'est actuellement pas pris en charge. Tous les commutateurs seront pris en charge dans les versions futures. Nous ajoutons un support supplémentaire à chaque version.

### Interrupteurs de Marquage D'Entrée

| Commutateur | Descriptif |
| :- | :- |
| **Heading Styles** <br>* (\O Commutateur)* <br> | <p>Ce commutateur définit que le `TOC` doit être construit à partir des styles de titre intégrés. Dans Microsoft Word, ceux – ci sont définis par Heading 1 - Heading 9. Dans Aspose.Words, ces styles sont représentés par l'énumération StyleIdentifier correspondante. Cette énumération représente un identifiant indépendant des paramètres régionaux d'un style, par exemple, `StyleIdentifier.Heading1` représente le style Heading 1. Grâce à cela, la mise en forme et les propriétés du style peuvent être récupérées à partir de la collection de styles du document. La classe de style correspondante peut être récupérée à partir de la collection `Document.Styles` en utilisant la propriété indexée de type StyleIdentifier.</p><p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p><p><br><br>Tout contenu formaté avec ces styles est inclus dans la table des matières. Le niveau de l'en-tête définira le niveau hiérarchique correspondant de l'entrée dans le TOC. Par exemple, un paragraphe avec un style Heading 1 sera traité comme le premier niveau dans le `TOC` tandis qu'un paragraphe avec Heading 2 sera traité comme le niveau suivant dans la hiérarchie et ainsi de suite.</p> |
| **Outline Levels**<br>*(\U switch)*<br> | <p>Chaque paragraphe peut définir un niveau de contour sous Options de paragraphe.</p><p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p><p><br><br>Ce paramètre dicte à quel niveau ce paragraphe doit être traité dans la hiérarchie du document. Il s'agit d'une pratique couramment utilisée pour structurer facilement la mise en page d'un document. Cette hiérarchie peut être visualisée en passant en mode Plan dans Microsoft Word. Semblable aux styles de titre, il peut y avoir 1 à 9 niveaux de contour en plus du niveau "Corps du texte". Les niveaux de contour 1 à 9 apparaîtront dans le `TOC` au niveau correspondant de la hiérarchie <br>Tout contenu avec un niveau de contour défini dans le style de paragraphe ou directement sur le paragraphe lui-même est inclus dans le TOC. Dans Aspose.Words, le niveau de contour est représenté par la propriété `ParagraphFormat.OutlineLevel` du nœud de paragraphe. Le niveau de contour d'un style de paragraphe est représenté de la même manière par la propriété `Style.ParagraphFormat`.</p><p>{{% alert color="primary" %}}</p><p>Notez que les styles de titre intégrés tels que Heading 1 ont un niveau de contour obligatoire défini dans les paramètres de style.</p><p>{{% /alert %}}</p> |
| **Custom Styles** <br>* (\T commutateur)* <br> | <p>Ce commutateur permettra d'utiliser des styles personnalisés lors de la collecte des entrées à utiliser dans le TOC. Ceci est souvent utilisé en conjonction avec le commutateur \O pour inclure des styles personnalisés ainsi que des styles de titre intégrés dans le TOC. <br>Les paramètres de l'interrupteur doivent être inclus dans les marques de parole. De nombreux styles personnalisés peuvent être inclus, pour chaque style, le nom doit être spécifié suivi d'une virgule suivie du niveau auquel le style doit apparaître dans le `TOC` comme. D'autres styles sont également séparés par une virgule. <br>Par exemple</p><p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p><p>utilisera le contenu stylisé avec CustomHeading1 comme contenu de niveau 1 dans `TOC` et CustomHeading2 comme niveau 2.</p> |
| Utiliser les champs TC <br>* (Commutateurs\F et \L)* <br> | <p>Dans les anciennes versions de Microsoft Word, la seule façon de construire un `TOC` était d'utiliser des champs TC. Ces champs sont insérés cachés dans le document même lorsque les codes de champ sont affichés. Ils incluent le texte qui doit être affiché dans l'entrée et le `TOC` est construit à partir d'eux. Cette fonctionnalité n'est plus utilisée très souvent mais peut encore être utile dans certaines occasions pour inclure des entrées dans le `TOC` qui ne sont pas indentées pour être visibles dans le document. <br>Une fois insérés, ces champs apparaissent masqués même lorsque les codes de champ sont affichés. Ils ne peuvent pas être vus sans montrer du contenu caché. Pour voir ces champs Afficher le formatage du paragraphe doit être sélectionné.</p><p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p><p>Ces champs peuvent être insérés dans un document à n'importe quelle position comme n'importe quel autre champ et sont représentés par l'énumération `FieldType.FieldTOCEntry`.<br>Le commutateur \F dans un `TOC` est utilisé pour spécifier que les champs TC doivent être utilisés comme entrées. Le commutateur seul sans identifiant supplémentaire signifie que n'importe quel champ TC du document sera inclus. Tout paramètre supplémentaire, souvent une seule lettre, indiquera que seuls les champs TC qui ont un commutateur \f correspondant seront inclus dans le TOC. Par exemple *</p><p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p><p>n'inclura que les champs TC tels que</p><p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p><p>Le champ `TOC` a également un commutateur associé, le commutateur "\L " spécifie que seul le champ TC avec des niveaux dans la plage spécifiée est inclus.</p><p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p><p><br><br>Les champs `TC` eux-mêmes peuvent également avoir des commutateurs `{several, multiple, a few, many, numerous}` définis. Ce sont:</p><p>– \ F-Expliqué ci-dessus.*</p><p>- \L-Définit dans quel niveau dans le `TOC` ce champ TC apparaîtra. Un `TOC` qui utilise ce même commutateur n'inclura ce champ TC que s'il se trouve dans la plage spécifiée.</p><p>- `_\N` - La numérotation des pages de cette entrée `TOC` n'est pas affichée.Un exemple de code expliquant comment insérer des champs TC se trouve dans la section suivante.</p> |

### Commutateurs Liés à l'Apparence

| Commutateur | Descriptif |
| :- | :- |
| **Omit Page Numbers** <br>* (\N Commutateur)* | <p>Ce commutateur est utilisé pour masquer les numéros de page pour certains niveaux du TOC. Par exemple, vous pouvez définir</p><p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p><p>et les numéros de page sur les entrées des niveaux 3 et quatre seront masqués avec les points de repère (s'il y en a). Pour spécifier un seul niveau, une plage doit toujours être utilisée, par exemple, "1-1" exclura les numéros de page uniquement pour le premier niveau. <br>Ne fournir aucune plage de niveaux omettra les numéros de page pour tous les niveaux du TOC. Ceci est utile à définir lors de l'exportation d'un document vers HTML ou un format similaire. C'est parce que les formats basés sur HTML n'ont aucun concept de page et n'ont donc pas besoin de numérotation des pages.</p><p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p> |
| Insérer En Tant Qu'Hyperliens <br>* (Commutateur\H)* | <p>Ce commutateur spécifie que `TOC` entrées sont insérées sous forme d'hyperliens. Lors de l'affichage d'un document dans Microsoft Word, ces entrées apparaîtront toujours comme du texte normal à l'intérieur du `TOC` mais sont liées par des hyperliens et peuvent donc être utilisées pour accéder à la position de l'entrée d'origine dans le document en utilisant *Ctrl + Left Click* dans Microsoft Word. Lorsque ce commutateur est inclus, ces liens sont également conservés dans d'autres formats. Par exemple, dans les formats basés sur HTML, y compris EPUB et les formats rendus tels que PDF et XPS, ceux-ci seront exportés sous forme de liens de travail. <br>Sans cet ensemble de commutateurs, le `TOC` dans toutes ces sorties sera exporté en texte brut et ne démontrera pas ce comportement. Si un document est ouvert dans MS Word, le texte des entrées ne sera pas non plus cliquable de cette manière, mais les numéros de page peuvent toujours être utilisés pour accéder à l'entrée d'origine.</p><p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p> |
| **Set Separator Character** <br>* (Commutateur\P)* <br> | <p>Ce commutateur permet de modifier facilement le contenu séparant le titre de l'entrée et la numérotation des pages dans le TOC. Le séparateur à utiliser doit être spécifié après ce commutateur et entouré de marques vocales. <br>Contrairement à ce qui est documenté dans la documentation Office, un seul caractère peut être utilisé au lieu de cinq maximum. Ceci s'applique à la fois à MS Word et Aspose.Words. <br>L'utilisation de ce commutateur n'est pas recommandée car elle ne permet pas beaucoup de contrôle sur ce qu'elle a utilisé pour séparer les entrées et les numéros de page dans le TOC. Au lieu de cela, il est recommandé de modifier le style `TOC` approprié tel que `StyleIdentifier.TOC1` et à partir de là, de modifier le style de tête avec accès à des membres de police spécifiques, etc. Vous trouverez plus de détails sur la façon de procéder plus loin dans l'article.</p><p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p> |
| **Preserve Tab Entries** <br>* (Commutateur\W)* | <p>L'utilisation de ce commutateur spécifiera que toutes les entrées qui ont un caractère de tabulation, par exemple, un en-tête qui a un onglet à la fin de la ligne, seront conservées en tant que caractère de tabulation approprié lors du remplissage du TOC. Cela signifie que la fonction du caractère de tabulation sera présente dans le `TOC` et pourra être utilisée pour formater l'entrée. Par exemple, certaines entrées peuvent utiliser des tabulations et des caractères de tabulation pour espacer uniformément le texte. Tant que le niveau `TOC` correspondant définit les taquets de tabulation équivalents, les entrées `TOC` générées apparaîtront avec un espacement similaire. <br><br>Dans la même situation, si ce commutateur n'était pas défini, les caractères de tabulation seraient convertis en espaces blancs équivalents aux onglets non fonctionnels. La sortie n'apparaîtrait alors pas comme prévu.</p><p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p> |
| **Preserve New Line Entries** <br>* (\X Commutateur)* <br> | <p>Semblable au commutateur ci-dessus, ce commutateur spécifie que les en-têtes s'étendant sur plusieurs lignes (en utilisant des caractères de nouvelle ligne, pas des paragraphes séparés) seront conservés tels qu'ils sont dans le TOC généré. Par exemple, un en-tête qui doit s'étendre sur plusieurs lignes peut utiliser le caractère de nouvelle ligne (Ctrl + Entrée ou `ControlChar.LineBreak`) pour séparer le contenu sur différentes lignes. Avec ce commutateur spécifié, l'entrée dans `TOC` conservera ces nouveaux caractères de ligne comme indiqué ci-dessous. <br><br>Dans cette situation, si le commutateur n'est pas défini, les caractères de nouvelle ligne sont convertis en un seul espace blanc.</p><p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p> |

## Insérer des champs TC

Vous pouvez insérer un nouveau champ TC à la position actuelle du `DocumentBuilder` en appelant la méthode `DocumentBuilder.InsertField` et en spécifiant le nom du champ comme "TC " avec tous les commutateurs nécessaires.

L'exemple de code suivant montre comment insérer un champ `TC` dans le document à l'aide de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Souvent, une ligne de texte spécifique est désignée pour le `TOC` et est marquée d'un champ `TC`. Le moyen le plus simple de le faire dans MS Word est de surligner le texte et d'appuyer sur *ALT+SHIFT+O*. Cela crée automatiquement un champ `TC` en utilisant le texte sélectionné. La même technique peut être accomplie par le code. Le code ci-dessous trouvera le texte correspondant à l'entrée et insérera un champ `TC` à la même position que le texte. Le code est basé sur la même technique utilisée dans l'article. L'exemple de code suivant montre comment rechercher et insérer un champ `TC` au niveau du texte dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Modifier une Table des matières

### Modifier la mise en forme des styles

Le formatage des entrées dans le `TOC` n'utilise pas les styles d'origine des entrées marquées, à la place, chaque niveau est formaté en utilisant un style `TOC` équivalent. Par exemple, le premier niveau du `TOC` est formaté avec le style **TOC1**, le deuxième niveau formaté avec le style **TOC2** et ainsi de suite. Cela signifie que pour changer l'apparence des `TOC`, ces styles doivent être modifiés. Dans Aspose.Words, ces styles sont représentés par les paramètres régionaux indépendants de `StyleIdentifier.TOC1` à `StyleIdentifier.TOC9` et peuvent être récupérés à partir de la collection `Document.Styles` à l'aide de ces identifiants.

Une fois que le style approprié du document a été récupéré, la mise en forme de ce style peut être modifiée. Toute modification de ces styles sera automatiquement reflétée dans le TOCs du document.

L'exemple de code suivant modifie une propriété de formatage utilisée dans le style de premier niveau `TOC`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

Il est également utile de noter que tout formatage direct d'un paragraphe (défini sur le paragraphe lui-même et non dans le style) marqué pour être inclus dans le `TOC` sera copié dans l'entrée du TOC. Par exemple, si le style Heading 1 est utilisé pour marquer le contenu du `TOC` et que ce style a une mise en forme en gras tandis que le paragraphe a également une mise en forme en italique directement appliquée. L'entrée `TOC` résultante ne sera pas en gras car cela fait partie de la mise en forme du style, mais elle sera en italique car elle est directement formatée sur le paragraphe.

Vous pouvez également contrôler la mise en forme des séparateurs utilisés entre chaque entrée et le numéro de page. Par défaut, il s'agit d'une ligne pointillée qui est répartie sur la numérotation des pages à l'aide d'un caractère de tabulation et d'un taquet de tabulation droit aligné près de la marge de droite.

En utilisant la classe `Style` récupérée pour le niveau `TOC` particulier que vous souhaitez modifier, vous pouvez également modifier leur apparence dans le document.

Pour changer la façon dont cela apparaît, il faut d'abord appeler `Style.ParagraphFormat` pour récupérer la mise en forme du paragraphe pour le style. À partir de là, les taquets de tabulation peuvent être récupérés en appelant `ParagraphFormat.TabStops` et le taquet de tabulation approprié modifié. En utilisant cette même technique, l'onglet lui-même peut être déplacé ou supprimé complètement.

L'exemple de code suivant montre comment modifier la position du taquet de tabulation de droite dans les paragraphes associés `TOC`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Supprimer une Table des matières du document

Une table des matières peut être supprimée du document en supprimant tous les nœuds trouvés entre les nœuds `FieldStart` et FieldEnd du champ `TOC`.

Le code ci-dessous le démontre. La suppression du champ `TOC` est plus simple qu'un champ normal car nous ne gardons pas trace des champs imbriqués. Au lieu de cela, nous vérifions que le nœud `FieldEnd` est de type `FieldType.FieldTOC`, ce qui signifie que nous avons rencontré la fin du TOC actuel. Cette technique peut être utilisée dans ce cas sans se soucier des champs imbriqués, car nous pouvons supposer que tout document correctement formé n'aura pas de champ `TOC` entièrement imbriqué dans un autre champ `TOC`.

Tout d'abord, les `FieldStart` nœuds de chaque `TOC` sont collectés et stockés. Le `TOC` spécifié est ensuite énuméré afin que tous les nœuds du champ soient visités et stockés. Les nœuds sont ensuite supprimés du document. L'exemple de code suivant montre comment supprimer un `TOC` spécifié d'un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Extraire la Table des matières

Si vous souhaitez extraire une table des matières de n'importe quel document Word, l'exemple de code suivant peut être utilisé.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
