---
title: Travailler avec la Table des matières Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec la Table des matières
linktitle: Travailler avec la Table des matières
description: "Table des matières dans les détails. Comment créer et modifier `TOC` champ en utilisant Java."
type: docs
weight: 170
url: /fr/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Souvent vous travaillerez avec des documents contenant une table des matières (TOC). Utilisation Aspose.Words vous pouvez insérer votre propre table des matières ou reconstruire complètement la table des matières existante dans le document en utilisant seulement quelques lignes de code.

Cet article décrit comment travailler avec la table des matières et montre:

- Comment insérer un TOC tout neuf.
- Mettre à jour les COT nouveaux ou existants dans le document.
- Spécifier les commutateurs pour contrôler le formatage et la structure globale du COT.
- Comment modifier les styles et l'apparence de la table des matières.
- Comment supprimer un entier `TOC` champ avec toutes les entrées du document.

## Insérer la table des matières

Vous pouvez insérer un `TOC` (table des matières) dans le document à la position actuelle en appelant le [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) méthode.

Une table des matières dans un document Word peut être construite de plusieurs façons et formatée en utilisant une variété d'options. Le champ change que vous passez à la méthode de contrôle de la façon dont la table est construite et affichée dans votre document.

Les commutateurs par défaut qui sont utilisés dans un `TOC` inséré dans Microsoft Word sont **"* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ***. Des descriptions de ces commutateurs ainsi qu'une liste des commutateurs pris en charge peuvent être trouvés plus loin dans l'article. Vous pouvez soit utiliser ce guide pour obtenir les interrupteurs corrects ou si vous avez déjà un document contenant le `TOC` que vous souhaitez afficher les codes de champ (*ALT+F9*) et copier les commutateurs directement à partir du champ.

L'exemple de code suivant montre comment insérer un champ Table des matières dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

L'exemple de code suivant montre comment insérer une table des matières (TOC) dans un document en utilisant des styles de cap comme entrées:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

Le code montre que la nouvelle table des matières est insérée dans un document vierge. Les [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) On utilise ensuite la classe pour insérer un exemple de formatage du contenu avec les styles de cap appropriés qui sont utilisés pour marquer le contenu à inclure dans le COT. Les lignes suivantes peuplent alors le `TOC` en mettant à jour les champs et la mise en page du document.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Sans les méthodes utilisées dans l'exemple, lorsque vous ouvrez le document de sortie, vous trouverez le `TOC` sans contenu visible. C'est parce que les `TOC` champ a été inséré mais n'est pas encore peuplé avant qu'il soit mis à jour dans le document. On trouvera de plus amples renseignements à ce sujet dans la section suivante.

{{% /alert %}}

## Mise à jour Table des matières

Aspose.Words vous permet de mettre à jour complètement un `TOC` avec seulement quelques lignes de code. Ceci peut être fait pour peupler un nouveau inséré `TOC` ou pour mettre à jour une `TOC` après que des modifications ont été apportées au document.

Les deux méthodes suivantes doivent être utilisées pour mettre à jour `TOC` champs dans le document:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Veuillez noter que ces deux méthodes de mise à jour doivent être appelées dans cet ordre. Si la table des matières est inversée, aucun numéro de page ne sera affiché. Tout nombre de COT différents peut être mis à jour. Ces méthodes mettront automatiquement à jour tous les COT trouvés dans le document.

L'exemple de code suivant montre comment reconstruire complètement `TOC` champs dans le document en invoquant les mises à jour de champs:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

Le premier appel à [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) va construire la <span notrans="<span notrans=" `TOC`"=""></span>""> toutes les entrées de texte sont peuplées et `TOC` semble presque complet. La seule chose manquante est les numéros de page qui pour l'instant sont affichés avec l'option?

Le deuxième appel à [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) va construire la mise en page du document en mémoire. Cela doit être fait pour recueillir les numéros de page des entrées. Les bons numéros de page calculés à partir de cet appel sont ensuite insérés dans le TOC.

## Utiliser les commutateurs pour contrôler Table des matières Comportement

Comme pour tout autre champ, `TOC` champ peut accepter les commutateurs définis dans le code de champ qui contrôle comment la table des matières est construite. Certains commutateurs sont utilisés pour contrôler quelles entrées sont incluses et à quel niveau tandis que d'autres sont utilisés pour contrôler l'apparence du TOC. Les commutateurs peuvent être combinés pour permettre la production d'une table de matières complexe.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Par défaut, ces commutateurs ci-dessus sont inclus lors de l'insertion d'une valeur par défaut `TOC` dans le document. A `TOC` sans interrupteurs comprendra du contenu des styles de cap intégrés (comme si le interrupteur \O est réglé).

Les `TOC` interrupteurs supportés par Aspose.Words sont énumérés ci-dessous et leurs utilisations sont décrites en détail. Ils peuvent être divisés en sections distinctes en fonction de leur type. Les commutateurs dans la première section définissent ce que le contenu à inclure dans la `TOC` et les interrupteurs de la deuxième section contrôlent l'apparence du TOC.

Si un interrupteur n'est pas listé ici, il n'est actuellement pas pris en charge. Tous les commutateurs seront pris en charge dans les versions futures. Nous apportons un soutien supplémentaire à chaque version.

### Interrupteurs de marquage d'entrée

|  Commutateur | Désignation des marchandises |
|  :-  |  :-  |
| **Heading Styles** <br/> *(\O Interrupteur)* <br/> | <p>Ce commutateur définit que le `TOC` devrait être construit à partir des styles de cap intégrés. En Microsoft Word, elles sont définies par la rubrique 1 – Rubrique 9. En Aspose.Words ces styles sont représentés par le dénombrement StyleIdentifier correspondant. Cette énumération représente un identifiant local indépendant d'un style, par exemple, `StyleIdentifier.Heading1` représente le style de la rubrique 1. À l'aide de cela, le formatage et les propriétés du style peuvent être récupérés de la collection Style du document. La classe de style correspondante peut être récupérée de la `Document.Styles` collecte en utilisant la propriété indexée de type StyleIdentifier.</p>

<p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>

<p><br/><br/>Tout contenu formaté avec ces styles est inclus dans la table des matières. Le niveau du titre définira le niveau hiérarchique correspondant de l'entrée dans le TOC. Par exemple, un paragraphe avec le style de la rubrique 1 sera traité comme le premier niveau dans le `TOC` alors qu'un paragraphe avec la rubrique 2 sera traité comme le niveau suivant dans la hiérarchie et ainsi de suite.</p>
 |
| **Outline Levels** <br/> *(\U switch)* <br/> | <p>Chaque paragraphe peut définir un niveau de contour dans les options de paragraphe.</p>

<p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p>

<p><br/><br/>Ce paramètre dicte quel niveau ce paragraphe doit être traité dans la hiérarchie des documents. Il s'agit d'une pratique couramment utilisée pour structurer facilement la présentation d'un document. Cette hiérarchie peut être vue en passant à Vue d'ensemble dans Microsoft Word. Similaire aux styles de cap, il peut y avoir 1 – 9 niveaux de contours en plus du niveau de texte de corps. Les niveaux 1 à 9 apparaîtront `TOC` dans le niveau correspondant de la hiérarchie <br/>Tout contenu ayant un niveau d'esquisse défini dans le style du paragraphe ou directement sur le paragraphe lui-même est inclus dans le COT. En Aspose.Words le niveau de l'esquisse est représenté par `ParagraphFormat.OutlineLevel` propriété du nœud paragraphe. Le niveau de contour d'un style de paragraphe est représenté de la même manière par le `Style.ParagraphFormat` propriété.</p>

<p>{{% alert color="primary" %}}</p>

<p>Notez que les styles de cap intégrés tels que la rubrique 1 ont un niveau de contour obligatoire défini dans les paramètres de style.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/> *(\T switch)* <br/> | <p>Ce commutateur permettra d'utiliser des styles personnalisés lors de la collecte des entrées à utiliser dans le TOC. Ceci est souvent utilisé en conjonction avec le commutateur \O pour inclure des styles personnalisés ainsi que des styles de cap intégrés dans le TOC. <br/>Les paramètres de l'interrupteur doivent être enfermés dans des marques vocales. De nombreux styles personnalisés peuvent être inclus, pour chaque style, le nom doit être spécifié suivi d'une virgule suivie du niveau que le style doit apparaître dans le `TOC` comme. D'autres styles sont également séparés par une virgule. <br/>Par exemple</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>utilisera le contenu style avec CustomHeating1 comme contenu de niveau 1 dans le `TOC` et Customheading2 comme niveau 2.</p>
 |
| Utiliser les champs TC <br/> *(\F et \L Interrupteurs)* <br/> | <p>Dans les anciennes versions de Microsoft Word, la seule façon de construire un `TOC` était l'utilisation de champs de TC. Ces champs sont insérés cachés dans le document même lorsque les codes de champ sont affichés. Ils incluent le texte qui devrait être affiché dans l'entrée et le `TOC` est construit à partir d'eux. Cette fonctionnalité n'est maintenant pas utilisée très souvent, mais peut être utile à certaines occasions pour inclure des entrées dans le `TOC` qui ne sont pas identifiés pour être visibles dans le document. <br/>Lorsqu'ils sont insérés, ces champs apparaissent cachés même lorsque les codes de champ sont affichés. Ils ne peuvent pas être vus sans montrer un contenu caché. Pour voir ces champs Afficher le formatage des paragraphes doit être sélectionné.</p>

<p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p>

<p>Ces champs peuvent être insérés dans un document à n'importe quelle position comme tout autre champ et sont représentés par le `FieldType.FieldTOCEntry` Énumération.<br/>Le commutateur \F dans un `TOC` est utilisé pour préciser que les champs TC doivent être utilisés comme entrées. L'interrupteur seul sans identifiant supplémentaire signifie qu'un champ TC dans le document sera inclus. Tout paramètre supplémentaire, souvent une seule lettre, désignera que seuls les champs TC ayant un commutateur \f correspondant seront inclus dans le COT. Par exemple *</p>

<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p>

<p>ne comprendra que des champs de TC tels que</p>

<p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p>

<p>Les `TOC` le champ a aussi un commutateur connexe, le commutateur --L-- spécifie que seul le champ TC avec des niveaux dans la plage spécifiée sont inclus.</p>

<p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p>

<p><br/><br/>Les `TC` les champs peuvent aussi avoir {several, `multiple`, a few, `many`, numerous} interrupteurs réglés. Ce sont:</p>

<p>- \F – expliqué ci-dessus. *</p>

<p>- \L – Définit quel niveau dans le `TOC` ce champ de TC apparaîtra. A `TOC` qui utilise ce même commutateur n'inclura ce champ TC que s'il se situe dans la plage spécifiée.</p>

<p>- Non. La numérotation de cette page `TOC` l'entrée n'est pas affichée. Vous trouverez un exemple de code pour insérer des champs TC dans la section suivante.</p>
 |

### Commutateurs liés à l'apparence

|  Commutateur | Désignation des marchandises |
|  :-  |  :-  |
| **Omit Page Numbers** <br/> *(\N Interrupteur)* | <p>Ce commutateur est utilisé pour masquer les numéros de page pour certains niveaux du TOC. Par exemple, vous pouvez définir</p>

<p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>et les numéros de page sur les entrées des niveaux 3 et 4 seront cachés avec les points de leader (s'il y en a). Pour n'indiquer qu'un seul niveau, une plage doit encore être utilisée, par exemple, le numéro de page n'est exclu que pour le premier niveau. <br/>En n'offrant aucune plage de niveaux, vous omettreez les numéros de page pour tous les niveaux du COT. Ceci est utile à définir lors de l'exportation d'un document vers un format HTML ou similaire. C'est parce que les formats basés sur HTML n'ont aucun concept de page et donc n'ont pas besoin d'une numérotation de page.</p>

<p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p>
 |
| Insérer comme hyperliens <br/> *(\H Interrupteur)* | <p>Ce commutateur spécifie que `TOC` les entrées sont insérées comme hyperliens. Lorsque vous visualisez un document dans Microsoft Word ces entrées apparaîtront toujours comme texte normal dans le `TOC` mais sont hyperliens et peuvent donc être utilisés pour naviguer à la position de l'entrée originale dans le document en utilisant *Ctrl + Left Click* dans Microsoft Word. Lorsque ce commutateur est inclus, ces liens sont également conservés dans d'autres formats. Par exemple, dans les formats basés sur HTML, y compris EPUB et les formats rendus tels que PDF et XPS, ils seront exportés comme des liens de travail. <br/>Sans ce commutateur, `TOC` dans toutes ces sorties seront exportées en texte simple et ne démontreront pas ce comportement. Si un document est ouvert dans MS Word, le texte des entrées ne sera pas cliquable de cette manière, mais les numéros de page peuvent encore être utilisés pour naviguer vers l'entrée originale.</p>

<p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p>
 |
| **Set Separator Character** <br/> *(\P Commutateur)* <br/> | <p>Ce commutateur permet de modifier facilement le contenu séparant le titre de l'entrée et la numérotation des pages. Le séparateur à utiliser doit être spécifié après ce commutateur et entouré de marques vocales. <br/>Contrairement à ce qui est documenté dans la documentation de l'office, un seul caractère peut être utilisé au lieu de cinq. Ceci s'applique à la fois à MS Word et Aspose.Words. <br/>L'utilisation de ce commutateur n'est pas recommandée car il n'autorise pas beaucoup de contrôle sur ce qu'il a utilisé pour séparer les entrées et les numéros de page dans le COT. Au lieu de cela, il est recommandé de modifier `TOC` style tel que `StyleIdentifier.TOC1` et à partir de là éditer le style leader avec accès à des membres de police spécifiques etc. Vous trouverez plus de détails sur la façon de procéder plus loin dans l'article.</p>

<p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p>
 |
| **Preserve Tab Entries** <br/> *(\W Switch)* | <p>L'utilisation de ce commutateur spécifiera que toutes les entrées qui ont un caractère d'onglet, par exemple, un titre qui a un onglet à la fin de la ligne, seront conservées comme un caractère d'onglet approprié lors de la population du TOC. Cela signifie que la fonction du caractère de l'onglet sera présente dans le `TOC` et peut être utilisé pour formater l'entrée. Par exemple, certaines entrées peuvent utiliser des arrêts d'onglets et des caractères d'onglets pour espacer uniformément le texte. Aussi longtemps que la `TOC` niveau définit l'onglet équivalent s'arrête puis le généré `TOC` les entrées apparaîtront avec un espacement similaire. <br/><br/>Dans la même situation si ce commutateur n'était pas défini, les caractères de l'onglet seraient convertis en équivalent espace blanc comme onglets non fonctionnels. Le produit n'apparaîtrait alors pas comme prévu.</p>

<p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p>
 |
| **Preserve New Line Entries** <br/> *(\X Interrupteur)* <br/> | <p>Comme pour le commutateur ci-dessus, ce commutateur spécifie que les rubriques couvrant plusieurs lignes (en utilisant des caractères de nouvelle ligne, et non des paragraphes distincts) seront conservées comme dans le TOC généré. Par exemple, un titre à diffuser sur plusieurs lignes peut utiliser le caractère de nouvelle ligne (Ctrl + Enter ou `ControlChar.LineBreak`) séparer le contenu entre les différentes lignes. Avec ce commutateur spécifié, l'entrée dans le `TOC` conservera ces nouveaux caractères de ligne comme indiqué ci-dessous. <br/><br/>Dans cette situation, si le commutateur n'est pas défini, les caractères de la nouvelle ligne sont convertis en un seul espace blanc.</p>

<p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p>
 |

## Insérer les champs TC

Vous pouvez insérer un nouveau champ TC à la position actuelle du `DocumentBuilder` en appelant le `DocumentBuilder.InsertField` méthode et en spécifiant le nom de champ comme "TC" avec tous les commutateurs nécessaires.

L'exemple de code suivant montre comment insérer un `TC` dans le document en utilisant [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Souvent, une ligne de texte spécifique est désignée pour `TOC` et est marqué d'un `TC` sur le terrain. La façon la plus simple de le faire dans MS Word est de mettre en évidence le texte et d'appuyer sur *ALT+SHIFT+O*. Cela crée automatiquement un `TC` champ en utilisant le texte sélectionné. La même technique peut être accomplie par le code. Le code ci-dessous trouvera le texte correspondant à l'entrée et insérer un `TC` champ dans la même position que le texte. Le code est basé sur la même technique utilisée dans l'article. L'exemple de code suivant montre comment trouver et insérer un `TC` dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Modifier une table des matières

### Modifier le formatage des styles

Le formatage des entrées `TOC` n'utilise pas les styles originaux des entrées marquées, à la place, chaque niveau est formaté en utilisant un équivalent `TOC` style. Par exemple, le premier niveau `TOC` est formaté avec la **TOC1** style, le deuxième niveau formaté avec le **TOC2** style et ainsi de suite. Cela signifie que pour changer l'apparence de la `TOC` Ces styles doivent être modifiés. En Aspose.Words ces styles sont représentés par le local indépendant `StyleIdentifier.TOC1` jusqu'à `StyleIdentifier.TOC9` et peut être récupéré de la `Document.Styles` collecte à l'aide de ces identifiants.

Une fois que le style approprié du document a été récupéré, le formatage pour ce style peut être modifié. Tout changement apporté à ces styles sera automatiquement reflété dans les COT du document.

L'exemple de code suivant modifie une propriété de formatage utilisée au premier niveau `TOC` style.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

Il est également utile de noter que tout formatage direct d'un paragraphe (défini sur le paragraphe lui-même et non dans le style) à inclure dans le `TOC` sera copié dans l'entrée dans le TOC. Par exemple, si le style de la rubrique 1 est utilisé pour marquer le contenu de la `TOC` et ce style a le formatage Bold tandis que le paragraphe a aussi le formatage italique directement appliqué à lui. Résultat `TOC` entrée ne sera pas en gras car cela fait partie du formatage de style mais il sera en italique car cela est directement formaté sur le paragraphe.

Vous pouvez également contrôler le formatage des séparateurs utilisés entre chaque entrée et le numéro de page. Par défaut, il s'agit d'une ligne pointillée qui est répartie sur la numérotation de la page à l'aide d'un caractère d'onglet et d'un onglet droit stop alignée près de la marge droite.

Utilisation `Style` classe récupérée pour le particulier `TOC` niveau que vous souhaitez modifier, vous pouvez également modifier comment ceux-ci apparaissent dans le document.

Pour changer la façon dont cela apparaît d'abord `Style.ParagraphFormat` doit être appelé pour récupérer le formatage de paragraphe pour le style. À partir de cela, l'onglet s'arrête peut être récupéré en appelant `ParagraphFormat.TabStops` et l'onglet approprié stop modifié. En utilisant cette même technique, l'onglet lui-même peut être déplacé ou retiré complètement.

L'exemple de code suivant montre comment modifier la position de l'onglet droit `TOC` Paragraphes connexes.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Supprimer une table des matières du document

Une table des matières peut être retirée du document en supprimant tous les nœuds trouvés entre les `FieldStart` et du nœud de fin de campagne du `TOC` sur le terrain.

Le code ci-dessous le démontre. La suppression de la `TOC` champ est plus simple qu'un champ normal car nous ne gardons pas trace des champs imbriqués. Nous vérifions plutôt `FieldEnd` le noeud est de type `FieldType.FieldTOC` ce qui signifie que nous avons rencontré la fin de l'actuel TOC. Cette technique peut être utilisée dans ce cas sans s'inquiéter des champs imbriqués car nous pouvons supposer que tout document correctement formé n'aura pas complètement imbriqué `TOC` champ dans un autre `TOC` sur le terrain.

Tout d'abord, `FieldStart` noeuds de chaque `TOC` sont collectées et stockées. Les `TOC` est ensuite énuméré afin que tous les nœuds dans le champ soient visités et stockés. Les noeuds sont ensuite retirés du document. L'exemple de code suivant montre comment supprimer un `TOC` d'un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Extrait Table des matières

Si vous voulez extraire une table des matières de tout document Word, l'échantillon de code suivant peut être utilisé.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
