---
title: Rechercher et remplacer dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Trouver et remplacer
linktitle: Trouver et remplacer
type: docs
description: "Recherchez un modèle de chaîne ou d'expression régulière dans votre document et remplacez-le par le texte souhaité à l'aide de Python."
weight: 100
url: /fr/python-net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Vous pouvez facilement naviguer dans votre document à l'aide d'un clavier et d'une souris, mais si vous avez de nombreuses pages à parcourir, il faudra un certain temps pour trouver un texte spécifique dans un long document. Cela prendra plus de temps lorsque vous souhaiterez remplacer certains caractères ou mots que vous avez utilisés dans votre document. La fonctionnalité "Rechercher et remplacer" permet de rechercher une séquence de caractères dans un document et de la remplacer par une autre séquence de caractères.

Aspose.Words vous permet de rechercher une chaîne ou un modèle d'expression régulière spécifique dans votre document et de le remplacer par une alternative sans installer ni utiliser d'applications supplémentaires telles que Microsoft Word. Cela accélérera de nombreuses tâches de saisie et de formatage, vous faisant potentiellement économiser des heures de travail.

Cet article explique comment appliquer le remplacement de chaîne et les expressions régulières avec la prise en charge des métacaractères.

## Façons de rechercher et de remplacer {#ways-to-find-and-replace}

Aspose.Words propose deux manières d'appliquer l'opération de recherche et de remplacement en utilisant les éléments suivants:

1. *Remplacement simple de chaîne* – pour rechercher et remplacer une chaîne spécifique par une autre, vous devez spécifier une chaîne de recherche (caractères alphanumériques) qui sera remplacée selon toutes les occurrences par une autre chaîne de remplacement spécifiée. Les deux chaînes ne doivent pas contenir de symboles. Tenez compte du fait que la comparaison de chaînes peut être sensible à la casse, ou que vous n'êtes peut-être pas sûr de l'orthographe ou que vous avez plusieurs orthographes similaires.
2. *Expressions régulières* – pour spécifier une expression régulière afin de rechercher les correspondances exactes de chaînes et de les remplacer en fonction de votre expression régulière. Notez qu'un mot est défini comme étant composé uniquement de caractères alphanumériques. Si le remplacement est exécuté avec uniquement des mots entiers correspondant et que la chaîne d'entrée contient des symboles, aucune phrase ne sera trouvée.

De plus, vous pouvez utiliser des métacaractères spéciaux avec un simple remplacement de chaîne et des expressions régulières pour spécifier des sauts dans l'opération de recherche et de remplacement.

Aspose.Words présente la fonctionnalité de recherche et de remplacement avec le module [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/). Vous pouvez travailler avec de nombreuses options pendant le processus de recherche et de remplacement à l'aide de la classe [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### Rechercher et remplacer du texte à l'aide du remplacement de chaîne simple {#find-and-replace-text-using-simple-string-replacement}

Vous pouvez utiliser l'une des méthodes [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) et [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) pour rechercher ou remplacer une chaîne particulière et renvoyer le nombre de remplacements effectués. Dans ce cas, vous pouvez spécifier une chaîne à remplacer, une chaîne qui remplacera toutes ses occurrences, si le remplacement est sensible à la casse et si seuls les mots autonomes seront affectés.

L'exemple de code suivant montre comment rechercher la chaîne "_CustomerName_" et la remplacer par la chaîne *"James Bond"*:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

Vous pouvez remarquer la différence entre le document avant d'appliquer un simple remplacement de chaîne:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="avant le remplacement de chaîne simple" style="width:600px"/>

Et après avoir appliqué un simple remplacement de chaîne:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="après un simple remplacement de chaîne" style="width:600px"/>

### Rechercher et remplacer du texte à l'aide d'expressions régulières {#find-and-replace-text-using-regular-expressions}

Une expression régulière est un modèle qui décrit une certaine séquence de texte. Supposons que vous souhaitiez remplacer toutes les doubles occurrences d’un mot par une seule occurrence de mot. Vous pouvez ensuite appliquer l'expression régulière suivante pour spécifier le modèle de mot double: `([a-zA-Z]+) \1`.

Utilisez la méthode [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) pour rechercher et remplacer des combinaisons de caractères particulières en définissant le paramètre d'expression régulière comme modèle pour rechercher des correspondances.

L'exemple de code suivant montre comment remplacer les chaînes qui correspondent à un modèle d'expression régulière par une chaîne de remplacement spécifiée:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

Vous pouvez remarquer la différence entre le document avant d'appliquer le remplacement de chaîne par des expressions régulières:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="avant-remplacement-par-expressions-régulières" style="width:600px"/>

Et après avoir appliqué le remplacement de chaîne par des expressions régulières:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="après-remplacement-par-expressions-régulières" style="width:600px"/>

### Rechercher et remplacer une chaîne à l'aide de métacaractères {#find-and-replace-text-using-metacharacters}

Vous pouvez utiliser des métacaractères dans la chaîne de recherche ou dans la chaîne de remplacement si un texte ou une expression particulière est composé de plusieurs paragraphes, sections ou pages. Certains métacaractères incluent **&amp;p** pour un saut de paragraphe, **&amp;b** pour un saut de section, **&amp; m** pour un saut de page et **&amp;l** pour un saut de ligne.

{{% alert color="primary" %}}

Notez que le métacaractère **&&** est égal à **&**. Par exemple, si vous avez besoin de rechercher du texte pour **&amp;p** qui n'est pas un saut de paragraphe, vous pouvez utiliser **&amp;&amp;p**.

{{% /alert %}}

L'exemple de code suivant montre comment remplacer du texte par un paragraphe et un saut de page:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Rechercher et remplacer une chaîne dans l'en-tête/pied de page d'un document {#find-and-replace-string-in-header-or-footer-of-a-document}

Vous pouvez rechercher et remplacer du texte dans la section en-tête/pied de page d'un document Word à l'aide de la classe [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/).

L'exemple de code suivant montre comment remplacer le texte de la section d'en-tête dans votre document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

Vous pouvez remarquer la différence entre le document avant d'appliquer le remplacement de la chaîne d'en-tête:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="avant d'appliquer le remplacement de la chaîne d'en-tête" style="width:600px"/>

Et après avoir appliqué le remplacement de la chaîne d'en-tête:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="après application du remplacement de la chaîne d'en-tête" style="width:600px"/>

L'exemple de code permettant de remplacer le texte de la section de pied de page de votre document est très similaire à l'exemple de code d'en-tête précédent. Il vous suffit de remplacer les deux lignes suivantes:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Avec ce qui suit:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Vous pouvez remarquer la différence entre le document avant d'appliquer le remplacement de la chaîne de pied de page:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="avant d'appliquer le remplacement de la chaîne de pied de page" style="width:600px"/>

Et après avoir appliqué le remplacement de la chaîne de pied de page:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="après l'application du remplacement de la chaîne de pied de page" style="width:600px"/>

## Ignorer le texte lors de la recherche et du remplacement de {#ignore-text-during-find-and-replace}

Lors de l'application de l'opération de recherche et de remplacement, vous pouvez ignorer certains segments du texte. Ainsi, certaines parties du texte peuvent être exclues de la recherche, et la recherche et le remplacement ne peuvent être appliqués qu'aux parties restantes.

Aspose.Words fournit de nombreuses propriétés de recherche et de remplacement pour ignorer le texte tel que [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/) et [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

L'exemple de code suivant montre comment ignorer le texte dans les révisions supprimées:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Personnaliser l'opération Rechercher et remplacer {#customize-find-and-replace-operation}

Aspose.Words fournit de nombreuses propriétés différentes pour rechercher et remplacer du texte, telles que l'application d'un format spécifique avec les propriétés [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) et [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/), l'utilisation de substitutions dans les modèles de remplacement avec la propriété [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/), etc.

L'exemple de code suivant montre comment mettre en surbrillance un mot spécifique dans votre document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
