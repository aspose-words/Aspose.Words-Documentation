---
title: Rechercher et remplacer dans C#
second_title: Aspose.Words pour .NET
articleTitle: Trouver et remplacer
linktitle: Trouver et remplacer
type: docs
description: "Recherchez un modèle de chaîne ou d'expression régulière dans votre document et remplacez-le par le texte souhaité à l'aide de C#."
weight: 100
url: /fr/net/find-and-replace/
---

Vous pouvez facilement naviguer dans votre document à l'aide d'un clavier et d'une souris, mais si vous avez de nombreuses pages à parcourir, il faudra un certain temps pour trouver un texte spécifique dans un long document. Cela prendra plus de temps lorsque vous souhaiterez remplacer certains caractères ou mots que vous avez utilisés dans votre document. La fonctionnalité "Rechercher et remplacer" permet de rechercher une séquence de caractères dans un document et de la remplacer par une autre séquence de caractères.

Aspose.Words vous permet de rechercher une chaîne ou un modèle d'expression régulière spécifique dans votre document et de le remplacer par une alternative sans installer ni utiliser d'applications supplémentaires telles que Microsoft Word. Cela accélérera de nombreuses tâches de saisie et de formatage, vous faisant potentiellement économiser des heures de travail.

Cet article explique comment appliquer le remplacement de chaîne et les expressions régulières avec la prise en charge des métacaractères.

## Façons de rechercher et de remplacer {#ways-to-find-and-replace}

Aspose.Words propose deux manières d'appliquer l'opération de recherche et de remplacement en utilisant les éléments suivants:

1. *Remplacement simple de chaîne* – pour rechercher et remplacer une chaîne spécifique par une autre, vous devez spécifier une chaîne de recherche (caractères alphanumériques) qui sera remplacée selon toutes les occurrences par une autre chaîne de remplacement spécifiée. Les deux chaînes ne doivent pas contenir de symboles. Tenez compte du fait que la comparaison de chaînes peut être sensible à la casse, ou que vous n'êtes peut-être pas sûr de l'orthographe ou que vous avez plusieurs orthographes similaires.
2. *Expressions régulières* – pour spécifier une expression régulière afin de rechercher les correspondances exactes de chaînes et de les remplacer en fonction de votre expression régulière. Notez qu'un mot est défini comme étant composé uniquement de caractères alphanumériques. Si le remplacement est exécuté avec uniquement des mots entiers correspondant et que la chaîne d'entrée contient des symboles, aucune phrase ne sera trouvée.

De plus, vous pouvez utiliser des métacaractères spéciaux avec un simple remplacement de chaîne et des expressions régulières pour spécifier des sauts dans l'opération de recherche et de remplacement.

Aspose.Words présente la fonctionnalité de recherche et de remplacement avec l'espace de noms [Aspose.Words.Replacing](https://reference.aspose.com/words/fr/net/aspose.words.replacing/). Vous pouvez travailler avec de nombreuses options pendant le processus de recherche et de remplacement à l'aide de la classe [FindReplaceOptions](https://reference.aspose.com/words/fr/net/aspose.words.replacing/findreplaceoptions/).

### Rechercher et remplacer du texte à l'aide du remplacement de chaîne simple {#find-and-replace-text-using-simple-string-replacement}

Vous pouvez utiliser l'une des méthodes [Replace](https://reference.aspose.com/words/fr/net/aspose.words/range/replace/#replace/) pour rechercher ou remplacer une chaîne particulière et renvoyer le nombre de remplacements effectués. Dans ce cas, vous pouvez spécifier une chaîne à remplacer, une chaîne qui remplacera toutes ses occurrences, si le remplacement est sensible à la casse et si seuls les mots autonomes seront affectés.

L'exemple de code suivant montre comment rechercher la chaîne "_CustomerName_" et la remplacer par la chaîne *"James Bond"*:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

Vous pouvez remarquer la différence entre le document avant d'appliquer un simple remplacement de chaîne:

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="avant le remplacement de chaîne simple" style="width:600px"/>

Et après avoir appliqué un simple remplacement de chaîne:

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="après un simple remplacement de chaîne" style="width:600px"/>

### Rechercher et remplacer du texte à l'aide d'expressions régulières {#find-and-replace-text-using-regular-expressions}

Une expression régulière (regex) est un modèle qui décrit une certaine séquence de texte. Supposons que vous souhaitiez remplacer toutes les doubles occurrences d’un mot par une seule occurrence de mot. Vous pouvez ensuite appliquer l'expression régulière suivante pour spécifier le modèle de mot double: `([a-zA-Z]+) \1`.

Utilisez l'autre méthode [Replace](https://reference.aspose.com/words/fr/net/aspose.words/range/replace/) pour rechercher et remplacer des combinaisons de caractères particulières en définissant le paramètre `Regex` comme modèle d'expression régulière pour rechercher des correspondances.

L'exemple de code suivant montre comment remplacer les chaînes qui correspondent à un modèle d'expression régulière par une chaîne de remplacement spécifiée:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

Vous pouvez remarquer la différence entre le document avant d'appliquer le remplacement de chaîne par des expressions régulières:

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="avant-remplacement-par-expressions-régulières" style="width:600px"/>

Et après avoir appliqué le remplacement de chaîne par des expressions régulières:

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="après-remplacement-par-expressions-régulières" style="width:600px"/>

### Rechercher et remplacer une chaîne à l'aide de métacaractères {#find-and-replace-text-using-metacharacters}

Vous pouvez utiliser des métacaractères dans la chaîne de recherche ou dans la chaîne de remplacement si un texte ou une expression particulière est composé de plusieurs paragraphes, sections ou pages. Certains métacaractères incluent **&amp;p** pour un saut de paragraphe, **&amp;b** pour un saut de section, **&amp; m** pour un saut de page et **&amp;l** pour un saut de ligne.

{{% alert color="primary" %}}

Notez que le métacaractère **&&** est égal à **&**. Par exemple, si vous avez besoin de rechercher du texte pour **&amp;p** qui n'est pas un saut de paragraphe, vous pouvez utiliser **&amp;&amp;p**.

{{% /alert %}}

L'exemple de code suivant montre comment remplacer du texte par un paragraphe et un saut de page:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## Rechercher et remplacer une chaîne dans l'en-tête/pied de page d'un document {#find-and-replace-string-in-header-or-footer-of-a-document}

Vous pouvez rechercher et remplacer du texte dans la section en-tête/pied de page d'un document Word à l'aide de la classe [HeaderFooter](https://reference.aspose.com/words/fr/net/aspose.words/headerfooter/).

L'exemple de code suivant montre comment remplacer le texte de la section d'en-tête dans votre document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

Vous pouvez remarquer la différence entre le document avant d'appliquer le remplacement de la chaîne d'en-tête:

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="avant d'appliquer le remplacement de la chaîne d'en-tête" style="width:600px"/>

Et après avoir appliqué le remplacement de la chaîne d'en-tête:

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="après application du remplacement de la chaîne d'en-tête" style="width:600px"/>

L'exemple de code permettant de remplacer le texte de la section de pied de page de votre document est très similaire à l'exemple de code d'en-tête précédent. Il vous suffit de remplacer les deux lignes suivantes:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Avec ce qui suit:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

Vous pouvez remarquer la différence entre le document avant d'appliquer le remplacement de la chaîne de pied de page:

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="avant d'appliquer le remplacement de la chaîne de pied de page" style="width:600px"/>

Et après avoir appliqué le remplacement de la chaîne de pied de page:

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="après l'application du remplacement de la chaîne de pied de page" style="width:600px"/>

## Ignorer le texte lors de la recherche et du remplacement de {#ignore-text-during-find-and-replace}

Lors de l'application de l'opération de recherche et de remplacement, vous pouvez ignorer certains segments du texte. Ainsi, certaines parties du texte peuvent être exclues de la recherche, et la recherche et le remplacement ne peuvent être appliqués qu'aux parties restantes.

Aspose.Words fournit de nombreuses propriétés de recherche et de remplacement pour ignorer le texte tel que [IgnoreDeleted](https://reference.aspose.com/words/fr/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/), [IgnoreFieldCodes](https://reference.aspose.com/words/fr/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/fr/net/aspose.words.replacing/findreplaceoptions/ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/fr/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/) et [IgnoreInserted](https://reference.aspose.com/words/fr/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/).

L'exemple de code suivant montre comment ignorer le texte dans les révisions supprimées:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## Personnaliser l'opération Rechercher et remplacer {#customize-find-and-replace-operation}

Aspose.Words fournit de nombreux [properties](https://reference.aspose.com/words/fr/net/aspose.words.replacing/findreplaceoptions/) différents pour rechercher et remplacer du texte, par exemple en appliquant un format spécifique avec les propriétés [ApplyFont](https://reference.aspose.com/words/fr/net/aspose.words.replacing/findreplaceoptions/applyfont/) et [ApplyParagraphFormats](https://reference.aspose.com/words/fr/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), en utilisant des substitutions dans les modèles de remplacement avec la propriété [UseSubstitutions](https://reference.aspose.com/words/fr/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/), etc.

L'exemple de code suivant montre comment mettre en surbrillance un mot spécifique dans votre document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words vous permet d'utiliser l'interface [IReplacingCallback](https://reference.aspose.com/words/fr/net/aspose.words.replacing/ireplacingcallback/) pour créer et appeler une méthode personnalisée lors d'une opération de remplacement. Vous pouvez avoir certains cas d'utilisation dans lesquels vous devez personnaliser l'opération de recherche et de remplacement, comme le remplacement du texte spécifié par une expression régulière par des balises HTML, donc fondamentalement, vous appliquerez le remplacement en insérant du HTML.

Si vous devez remplacer une chaîne par une balise HTML, appliquez l'interface **IReplacingCallback** pour personnaliser l'opération de recherche et de remplacement afin que la correspondance commence au début d'une exécution avec le nœud de correspondance de votre document. Donnons quelques exemples d'utilisation de **IReplacingCallback**.

L'exemple de code suivant montre comment remplacer le texte spécifié par HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

L'exemple de code suivant montre comment mettre en surbrillance les nombres positifs en vert et les nombres négatifs en rouge:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

L'exemple de code suivant montre comment ajouter un numéro de ligne à chaque ligne:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
