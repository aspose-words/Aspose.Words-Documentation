---
title: Trouver et remplacer Java
second_title: Aspose.Words pour Java
articleTitle: Trouver et remplacer
linktitle: Trouver et remplacer
type: docs
description: "Trouvez une chaîne ou un motif d'expression régulière dans votre document et remplacez-le par le texte que vous voulez utiliser Java."
weight: 100
url: /fr/java/find-and-replace/
---

Vous pouvez facilement naviguer dans votre document à l'aide d'un clavier et d'une souris, mais si vous avez beaucoup de pages à défiler, il faudra un certain temps pour trouver un texte spécifique dans un document long. Il vous faudra plus de temps pour remplacer certains caractères ou mots que vous avez utilisés dans votre document. La fonctionnalité "Trouver et remplacer" vous permet de trouver une séquence de caractères dans un document et de le remplacer par une autre séquence de caractères.

Aspose.Words vous permet de trouver une chaîne spécifique ou un motif d'expression régulière dans votre document et de le remplacer par une alternative sans installer et en utilisant des applications supplémentaires telles que Microsoft Word. Cela accélérera de nombreuses tâches de dactylographie et de formatage, ce qui vous permettra d'économiser des heures de travail.

Cet article explique comment appliquer le remplacement des chaînes et les expressions régulières avec le support des métacaractères.

## Moyens de trouver et de remplacer {#ways-to-find-and-replace}

Aspose.Words fournit deux façons d'appliquer l'opération de recherche et de remplacement en utilisant ce qui suit:

1. *Simple remplacement de chaîne* – pour trouver et remplacer une chaîne spécifique par une autre, vous devez spécifier une chaîne de recherche (caractères alphanumériques) qui va être remplacée en fonction de toutes les occurrences par une autre chaîne de remplacement spécifiée. Les deux chaînes ne doivent pas contenir de symboles. Prenez en compte que la comparaison de chaînes peut être sensible à la casse, ou vous pouvez ne pas être sûr de l'orthographe ou avoir plusieurs orthographes similaires.
2. *Expressions régulières* – pour spécifier une expression régulière pour trouver la chaîne exacte et les remplacer selon votre expression régulière. Notez qu'un mot est défini comme étant composé uniquement de caractères alphanumériques. Si un remplacement est exécuté avec seulement des mots entiers en correspondance et que la chaîne d'entrée contient des symboles, aucune phrase ne sera trouvée.

En outre, vous pouvez utiliser des métacaractères spéciaux avec remplacement de chaînes simples et des expressions régulières pour spécifier les ruptures dans l'opération de recherche et de remplacement.

Aspose.Words présente la fonctionnalité de recherche et de remplacement avec le [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). Vous pouvez travailler avec de nombreuses options pendant le processus trouver et remplacer en utilisant [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) En cours.

### Trouver et remplacer le texte en utilisant le remplacement de chaînes simples {#find-and-replace-text-using-simple-string-replacement}

Vous pouvez utiliser l'un des [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) méthodes pour trouver ou remplacer une chaîne particulière et retourner le nombre de remplacements qui ont été faits. Dans ce cas, vous pouvez spécifier une chaîne à remplacer, une chaîne qui remplacera toutes ses occurrences, si le remplacement est sensible à la casse, et si seuls les mots autonomes seront affectés.

L'exemple de code suivant montre comment trouver la chaîne de caractères "_CustomerName" et le remplacer par la chaîne de caractères "*"James Bond"*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Vous pouvez remarquer la différence entre le document avant d'appliquer un simple remplacement de chaîne:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

Et après avoir appliqué le remplacement simple de la chaîne:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Trouver et remplacer le texte en utilisant des expressions régulières {#find-and-replace-text-using-regular-expressions}

Une expression régulière (regex) est un motif qui décrit une certaine séquence de texte. Supposons que vous vouliez remplacer toutes les doubles occurrences d'un mot par un seul mot. Ensuite, vous pouvez appliquer l'expression régulière suivante pour spécifier le motif double-mot: `([a-zA-Z]+) \1`.

Utiliser l'autre [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) méthode de recherche et de remplacement de combinaisons de caractères particulières en définissant la `Regex` paramètre comme motif d'expression régulière pour trouver des correspondances.

L'exemple de code suivant montre comment remplacer des chaînes qui correspondent à un motif d'expression régulière avec une chaîne de remplacement spécifiée:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Vous pouvez remarquer la différence entre le document avant d'appliquer le remplacement de la chaîne par des expressions régulières:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

Et après avoir appliqué le remplacement de la chaîne par des expressions régulières:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Trouver et remplacer les chaînes en utilisant des métacaractères {#find-and-replace-text-using-metacharacters}

Vous pouvez utiliser des métacaractères dans la chaîne de recherche ou la chaîne de remplacement si un texte ou une phrase est composé de plusieurs paragraphes, sections ou pages. Certains des métacaractères incluent **&p** pour une pause de paragraphe, **&b** pour une pause de section, **&m** pour une pause page, et **&l** pour une rupture de ligne.

{{% alert color="primary" %}}

Notez que le métacaractère **&&** égale à **&**. Par exemple, si vous devez trouver le texte pour **&p** ce n'est pas une pause de paragraphe, alors vous pouvez utiliser **&&p**.

{{% /alert %}}

L'exemple de code suivant montre comment remplacer le texte par une pause de paragraphe et de page:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Trouver et remplacer la chaîne dans l'en-tête/le moteur d'un document {#find-and-replace-string-in-header-or-footer-of-a-document}

Vous pouvez trouver et remplacer le texte dans la section en-tête/pied de page d'un document Word en utilisant le [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) En cours.

L'exemple de code suivant montre comment remplacer le texte de la section en-tête de votre document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Vous pouvez remarquer la différence entre le document avant d'appliquer le remplacement de la chaîne d'en-tête:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Et après avoir appliqué le remplacement de la chaîne d'en-tête:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

L'exemple de code pour remplacer le texte de la section de pied de page de votre document est très similaire à l'exemple de code d'en-tête précédent. Il vous suffit de remplacer les deux lignes suivantes:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Avec les éléments suivants:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Vous pouvez remarquer la différence entre le document avant d'appliquer le remplacement de la chaîne de pied de page:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

Et après avoir appliqué le remplacement de la corde:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Ignorer le texte pendant la recherche et le remplacement {#ignore-text-during-find-and-replace}

En appliquant l'opération de recherche et de remplacement, vous pouvez ignorer certains segments du texte. Ainsi, certaines parties du texte peuvent être exclues de la recherche, et la recherche et le remplacement ne peuvent être appliqués qu'aux autres parties.

Aspose.Words fournit de nombreuses propriétés de trouver et de remplacer pour ignorer le texte comme [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), et [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

L'exemple de code suivant montre comment ignorer le texte à l'intérieur des révisions de suppression:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Personnaliser l'opération Rechercher et remplacer {#customize-find-and-replace-operation}

Aspose.Words offre beaucoup de différences [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) trouver et remplacer le texte tel que l'application d'un format spécifique par [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) et [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) propriétés, en utilisant des substitutions dans les modèles de remplacement avec [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) propriété, et d'autres.

L'exemple de code suivant montre comment mettre en évidence un mot spécifique dans votre document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words vous permet d'utiliser [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) interface pour créer et appeler une méthode personnalisée pendant une opération de remplacement. Vous pouvez avoir quelques cas d'utilisation où vous devez personnaliser l'opération de recherche et de remplacement comme remplacer le texte spécifié par une expression régulière avec des balises HTML, donc fondamentalement vous appliquerez remplacer par insérer HTML.

Si vous devez remplacer une chaîne par une balise HTML, appliquez la **IReplacingCallback** interface pour personnaliser l'opération de recherche et de remplacement de sorte que le match commence au début d'une course avec le nœud de correspondance de votre document. Donnons plusieurs exemples d'utilisation **IReplacingCallback**.

L'exemple de code suivant montre comment remplacer le texte spécifié par HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


L'exemple de code suivant montre comment mettre en évidence des nombres positifs avec couleur verte et des nombres négatifs avec couleur rouge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

L'exemple de code suivant montre comment préparer un numéro de ligne à chaque ligne:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
