---
title: Rechercher et remplacer dans Java
second_title: Aspose.Words pour Java
articleTitle: Trouver et Remplacer
linktitle: Trouver et Remplacer
type: docs
description: "Recherchez une chaîne ou un modèle d'expression régulière dans votre document et remplacez - le par le texte souhaité à l'aide de Java."
weight: 100
url: /fr/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Vous pouvez facilement naviguer dans votre document à l'aide d'un clavier et d'une souris, mais si vous avez de nombreuses pages à parcourir, il vous faudra un certain temps pour trouver un texte spécifique dans un long document. Cela prendra plus de temps lorsque vous souhaiterez remplacer certains caractères ou mots que vous avez utilisés dans votre document. La fonctionnalité "Rechercher et remplacer" vous permet de rechercher une séquence de caractères dans un document et de la remplacer par une autre séquence de caractères.

Aspose.Words vous permet de rechercher une chaîne spécifique ou un modèle d'expression régulière dans votre document et de le remplacer par une alternative sans installer et utiliser d'applications supplémentaires telles que Microsoft Word. Cela accélérera de nombreuses tâches de saisie et de formatage, vous permettant potentiellement d'économiser des heures de travail.

Cet article explique comment appliquer le remplacement de chaîne et les expressions régulières avec le support des métacaractères.

## Façons de trouver et de remplacer {#ways-to-find-and-replace}

Aspose.Words fournit deux façons d'appliquer l'opération de recherche et de remplacement à l'aide des éléments suivants:

1. *Simple string replacement* - pour rechercher et remplacer une chaîne spécifique par une autre, vous devez spécifier une chaîne de recherche (caractères alphanumériques) qui va être remplacée en fonction de toutes les occurrences par une autre chaîne de remplacement spécifiée. Les deux chaînes ne doivent pas contenir de symboles. Tenez compte du fait que la comparaison de chaînes peut être sensible à la casse, ou vous pouvez ne pas être sûr de l'orthographe ou avoir plusieurs orthographes similaires.
2. *Regular expressions* - pour spécifier une expression régulière pour trouver les correspondances de chaîne exactes et les remplacer en fonction de votre expression régulière. Notez qu'un mot est défini comme étant composé uniquement de caractères alphanumériques. Si un remplacement est exécuté avec uniquement des mots entiers correspondants et que la chaîne d'entrée contient des symboles, aucune phrase ne sera trouvée.

En outre, vous pouvez utiliser des métacaractères spéciaux avec un simple remplacement de chaîne et des expressions régulières pour spécifier des pauses dans l'opération de recherche et de remplacement.

Aspose.Words présente la fonctionnalité rechercher et remplacer avec [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). Vous pouvez travailler avec de nombreuses options pendant le processus de recherche et de remplacement en utilisant la classe [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/).

### Rechercher et remplacer du Texte à l'Aide d'un simple Remplacement de Chaîne {#find-and-replace-text-using-simple-string-replacement}

Vous pouvez utiliser l'une des méthodes [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) pour rechercher ou remplacer une chaîne particulière et renvoyer le nombre de remplacements effectués. Dans ce cas, vous pouvez spécifier une chaîne à remplacer, une chaîne qui remplacera toutes ses occurrences, si le remplacement est sensible à la casse et si seuls les mots autonomes seront affectés.

L'exemple de code suivant montre comment trouver la chaîne "_CustomerName_ " et la remplacer par la chaîne *"James Bond"*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Vous pouvez remarquer la différence entre le document avant d'appliquer un simple remplacement de chaîne:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

Et après avoir appliqué un simple remplacement de chaîne:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Rechercher et remplacer du Texte à l'aide d'Expressions Régulières {#find-and-replace-text-using-regular-expressions}

Une expression régulière (regex) est un motif qui décrit une certaine séquence de texte. Supposons que vous souhaitiez remplacer toutes les occurrences doubles d'un mot par une occurrence d'un seul mot. Ensuite, vous pouvez appliquer l'expression régulière suivante pour spécifier le modèle de double mot: `([a-zA-Z]+) \1`.

Utilisez l'autre méthode [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) pour rechercher et remplacer des combinaisons de caractères particulières en définissant le paramètre `Regex` comme modèle d'expression régulière pour trouver des correspondances.

L'exemple de code suivant montre comment remplacer les chaînes qui correspondent à un modèle d'expression régulière par une chaîne de remplacement spécifiée:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Vous pouvez remarquer la différence entre le document avant d'appliquer le remplacement de chaîne par des expressions régulières:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

Et après avoir appliqué le remplacement de chaîne avec des expressions régulières:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Rechercher et remplacer une Chaîne à l'aide de métacaractères {#find-and-replace-text-using-metacharacters}

Vous pouvez utiliser des métacaractères dans la chaîne de recherche ou la chaîne de remplacement si un texte ou une phrase particulière est composé de plusieurs paragraphes, sections ou pages. Certains des métacaractères incluent **&p** pour un saut de paragraphe, **&b** pour un saut de section, **&m** pour un saut de page et **&l** pour un saut de ligne.

{{% alert color="primary" %}}

Notez que le métacaractère **&&** est égal à **&**. Par exemple, si vous avez besoin de trouver le texte pour **&p** qui n'est pas un saut de paragraphe, vous pouvez utiliser **&&p**.

{{% /alert %}}

L'exemple de code suivant montre comment remplacer le texte par un paragraphe et un saut de page:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Rechercher et remplacer une chaîne dans l'en-tête/le pied de page d'un Document {#find-and-replace-string-in-header-or-footer-of-a-document}

Vous pouvez rechercher et remplacer du texte dans la section en-tête/pied de page d'un document Word à l'aide de la classe [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/).

L'exemple de code suivant montre comment remplacer le texte de la section d'en-tête dans votre document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Vous pouvez remarquer la différence entre le document avant d'appliquer le remplacement de la chaîne d'en-tête:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Et après avoir appliqué le remplacement de la chaîne d'en-tête:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

L'exemple de code pour remplacer le texte de la section de pied de page dans votre document est très similaire à l'exemple de code d'en-tête précédent. Il vous suffit de remplacer les deux lignes suivantes:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Avec ce qui suit:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Vous pouvez remarquer la différence entre le document avant d'appliquer le remplacement de la chaîne de pied de page:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

Et après avoir appliqué le remplacement de la chaîne de pied de page:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Ignorer le texte Pendant la Recherche et le remplacement {#ignore-text-during-find-and-replace}

Lors de l'application de l'opération de recherche et de remplacement, vous pouvez ignorer certains segments du texte. Ainsi, certaines parties du texte peuvent être exclues de la recherche, et la recherche et le remplacement ne peuvent être appliqués qu'aux parties restantes.

Aspose.Words fournit de nombreuses propriétés de recherche et de remplacement pour ignorer le texte, telles que [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), et [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

L'exemple de code suivant montre comment ignorer le texte dans les révisions de suppression:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Personnaliser l'opération de recherche et de remplacement {#customize-find-and-replace-operation}

Aspose.Words fournit de nombreux [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) différents pour rechercher et remplacer du texte, tels que l'application d'un format spécifique avec les propriétés [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) et [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat), l'utilisation de substitutions dans les modèles de remplacement avec la propriété [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions), et d'autres.

L'exemple de code suivant montre comment mettre en évidence un mot spécifique dans votre document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words vous permet d'utiliser l'interface [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) pour créer et appeler une méthode personnalisée lors d'une opération de remplacement. Vous pouvez avoir des cas d'utilisation où vous devez personnaliser l'opération de recherche et de remplacement, comme le remplacement du texte spécifié par une expression régulière avec des balises HTML, donc en gros, vous appliquerez replace en insérant HTML.

Si vous devez remplacer une chaîne par une balise HTML, appliquez l'interface **IReplacingCallback** pour personnaliser l'opération de recherche et de remplacement afin que la correspondance commence au début d'une exécution avec le nœud de correspondance de votre document. Donnons plusieurs exemples d'utilisation de **IReplacingCallback**.

L'exemple de code suivant montre comment remplacer le texte spécifié par HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


L'exemple de code suivant montre comment mettre en évidence les nombres positifs de couleur verte et les nombres négatifs de couleur rouge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

L'exemple de code suivant montre comment ajouter un numéro de ligne à chaque ligne:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
