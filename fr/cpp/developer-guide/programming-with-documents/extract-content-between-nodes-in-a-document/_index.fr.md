---
title: Comment Extraire du Contenu Entre Les Nœuds de Document
second_title: Aspose.Words pour C++
articleTitle: Extraire le contenu entre les nœuds d'un Document
linktitle: Extraire Le Contenu Entre Les Nœuds
type: docs
description: "Extraction du contenu du document dans différents formats à l'aide de C++."
weight: 140
url: /fr/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
---

Lorsque vous travaillez avec des documents, il est important de pouvoir extraire facilement le contenu d'une plage spécifique d'un document. Cependant, le contenu peut être constitué d'éléments complexes tels que des paragraphes, des tableaux, des images, etc.

Quel que soit le contenu à extraire, la méthode d'extraction de ce contenu sera toujours déterminée par les nœuds sélectionnés entre lesquels extraire le contenu. Il peut s'agir de corps de texte entiers ou de simples exécutions de texte.

Il existe de nombreuses situations possibles et donc de nombreux types de nœuds différents à prendre en compte lors de l'extraction de contenu. Par exemple, vous souhaiterez peut-être extraire du contenu entre:

- Deux paragraphes spécifiques
- Séquences de texte spécifiques
- Champs de différents types, tels que les champs de fusion
- Plages de début et de fin d'un signet ou d'un commentaire
- Divers corps de texte contenus dans des sections distinctes

Dans certaines situations, vous devrez peut-être même combiner différents types de nœuds, tels que l'extraction de contenu entre un paragraphe et un champ, ou entre une exécution et un signet.

Cet article fournit l'implémentation du code pour extraire du texte entre différents nœuds, ainsi que des exemples de scénarios courants.

{{% alert color="primary" %}}

Ces exemples ne sont que quelques démonstrations des nombreuses possibilités. Nous prévoyons que la fonctionnalité d'extraction de texte fasse partie de l'API publique à l'avenir, et aucun code supplémentaire ne sera requis. En attendant, n'hésitez pas à poster vos demandes concernant cette fonctionnalité sur le [Aspose.Words le forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Pourquoi Extraire du Contenu

Souvent, le but de l'extraction du contenu est de le dupliquer ou de l'enregistrer séparément dans un nouveau document. Par exemple, vous pouvez extraire du contenu et:

- Copiez-le dans un document séparé
- Convertir une partie spécifique d'un document en PDF ou en image
- Dupliquez le contenu du document plusieurs fois
- Travaillez avec du contenu extrait séparément du reste du document

Ceci peut être facilement réalisé en utilisant Aspose.Words et l'implémentation de code ci-dessous.

## Algorithme d'Extraction de Contenu

Le code de cette section aborde toutes les situations possibles décrites ci-dessus avec une méthode généralisée et réutilisable. Les grandes lignes de cette technique impliquent:

1. Rassembler les nœuds qui dictent la zone de contenu qui sera extraite de votre document. La récupération de ces nœuds est gérée par l'utilisateur dans son code, en fonction de ce qu'il souhaite extraire.
1. Passer ces nœuds à la méthode **ExtractContent** fournie ci-dessous. Vous devez également passer un paramètre booléen qui indique si ces nœuds, agissant comme des marqueurs, doivent être inclus dans l'extraction ou non.
1. Récupération d'une liste de contenus clonés (nœuds copiés) spécifiés à extraire. Vous pouvez utiliser cette liste de nœuds de n'importe quelle manière applicable, par exemple en créant un nouveau document contenant uniquement le contenu sélectionné.

## Comment Extraire du Contenu

Pour extraire le contenu de votre document, vous devez appeler la méthode `ExtractContent` ci-dessous et transmettre les paramètres appropriés. La base sous-jacente de cette méthode consiste à trouver des nœuds au niveau du bloc (paragraphes et tableaux) et à les cloner pour créer des copies identiques. Si les nœuds marqueurs passés sont au niveau du bloc, la méthode peut simplement copier le contenu à ce niveau et l'ajouter au tableau.

Cependant, si les nœuds marqueurs sont en ligne (un enfant d'un paragraphe), la situation devient plus complexe, car il est nécessaire de diviser le paragraphe au niveau du nœud en ligne, qu'il s'agisse d'une exécution, de champs de signets, etc. Le contenu des nœuds parents clonés non présents entre les marqueurs est supprimé. Ce processus est utilisé pour s'assurer que les nœuds en ligne conserveront toujours la mise en forme du paragraphe parent. La méthode exécutera également des vérifications sur les nœuds passés en paramètres et lèvera une exception si l'un des nœuds n'est pas valide. Les paramètres à transmettre à cette méthode sont:

1. **StartNode** et **EndNode**. Les deux premiers paramètres sont les nœuds qui définissent respectivement le début et la fin de l'extraction du contenu. Ces nœuds peuvent être à la fois au niveau du bloc (Paragraphe, Tableau ) ou au niveau de la ligne (par exemple Run, FieldStart, BookmarkStart etc.):
   1. Pour passer un champ, vous devez passer l'objet **FieldStart** correspondant.
   1. Pour passer des signets, les nœuds **BookmarkStart** et BookmarkEnd doivent être passés.
   1. Pour passer des commentaires, les nœuds CommentRangeStart et CommentRangeEnd doivent être utilisés.
1. **IsInclusive**. Définit si les marqueurs sont inclus dans l'extraction ou non. Si cette option est définie sur false et que le même nœud ou des nœuds consécutifs sont passés, une liste vide sera renvoyée:

      1. Si un nœud **FieldStart** est passé, cette option définit si le champ entier doit être inclus ou exclu.
      1. Si un nœud **BookmarkStart** ou **BookmarkEnd** est transmis, cette option définit si le signet est inclus ou simplement le contenu entre la plage de signets.
      1. Si un nœud **CommentRangeStart** ou **CommentRangeEnd** est transmis, cette option définit si le commentaire lui-même doit être inclus ou simplement le contenu de la plage de commentaires.

L'implémentation de la méthode **ExtractContent** que vous pouvez trouver [ici](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). Cette méthode sera mentionnée dans les scénarios de cet article.

Nous allons également définir une méthode personnalisée pour générer facilement un document à partir de nœuds extraits. Cette méthode est utilisée dans de nombreux scénarios ci-dessous et crée simplement un nouveau document et y importe le contenu extrait.

L'exemple de code suivant montre comment prendre une liste de nœuds et les insérer dans un nouveau document.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## Extraire Le Contenu Entre Les Paragraphes

Cela montre comment utiliser la méthode ci-dessus pour extraire du contenu entre des paragraphes spécifiques. Dans ce cas, nous voulons extraire le corps de la lettre trouvée dans la première moitié du document. On peut dire que c'est entre le 7ème et le 11ème paragraphe.

Le code ci-dessous accomplit cette tâche. Les paragraphes appropriés sont extraits en utilisant la méthode [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) sur le document et en passant les index spécifiés. Nous passons ensuite ces nœuds à la méthode **ExtractContent** et déclarons qu'ils doivent être inclus dans l'extraction. Cette méthode renverra le contenu copié entre ces nœuds qui sont ensuite insérés dans un nouveau document.

L'exemple de code suivant montre comment extraire le contenu entre des paragraphes spécifiques à l'aide de la méthode `ExtractContent` ci-dessus:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## Extraire du contenu Entre Différents Types de Nœuds

Nous pouvons extraire du contenu entre n'importe quelle combinaison de nœuds au niveau du bloc ou en ligne. Dans ce scénario ci-dessous, nous extrairons le contenu entre le premier paragraphe et le tableau de la deuxième section inclusivement. Nous obtenons les nœuds de marqueurs en appelant les méthodes `Body.FirstParagraph` et [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) sur la deuxième section du document pour récupérer les nœuds de paragraphe et de tableau appropriés. Pour une légère variation, dupliquons plutôt le contenu et insérons-le sous l'original.

L'exemple de code suivant montre comment extraire le contenu entre un paragraphe et un tableau à l'aide de la méthode `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## Extraire le contenu Entre les Paragraphes En fonction du Style

Vous devrez peut-être extraire le contenu entre des paragraphes de styles identiques ou différents, par exemple entre des paragraphes marqués de styles de titre. Le code ci-dessous montre comment y parvenir. C'est un exemple simple qui extraira le contenu entre la première instance des styles "En-tête 1" et "En-tête 3" sans extraire également les en-têtes. Pour ce faire, nous définissons le dernier paramètre sur false, ce qui spécifie que les nœuds marqueurs ne doivent pas être inclus.

Dans une implémentation correcte, cela devrait être exécuté en boucle pour extraire le contenu entre tous les paragraphes de ces styles du document. Le contenu extrait est copié dans un nouveau document.

L'exemple de code suivant montre comment extraire du contenu entre des paragraphes avec des styles spécifiques à l'aide de la méthode `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## Extraire Du Contenu Entre Des Exécutions Spécifiques

Vous pouvez également extraire du contenu entre des nœuds en ligne tels qu'un [Run](https://reference.aspose.com/words/cpp/aspose.words/run/). **Runs** de différents paragraphes peuvent être passés comme marqueurs. Le code ci-dessous montre comment extraire du texte spécifique entre le même nœud **Paragraph**.

L'exemple de code suivant montre comment extraire du contenu entre des exécutions spécifiques du même paragraphe à l'aide de la méthode **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## Extraire du contenu à l'aide d'un champ

Pour utiliser un champ comme marqueur, le nœud `FieldStart` doit être passé. Le dernier paramètre de la méthode `ExtractContent` définira si le champ entier doit être inclus ou non. Extrayons le contenu entre le champ de fusion" FullName " et un paragraphe du document. Nous utilisons la méthode [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) de la classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Cela renverra le nœud **FieldStart** du nom du champ de fusion qui lui a été transmis.

Dans notre cas, définissons le dernier paramètre passé à la méthode **ExtractContent** sur false pour exclure le champ de l'extraction. Nous allons rendre le contenu extrait à PDF.

L'exemple de code suivant montre comment extraire du contenu entre un champ et un paragraphe spécifiques du document à l'aide de la méthode **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## Extraire le contenu d'un signet

Dans un document, le contenu défini dans un signet est encapsulé par les nœuds `BookmarkStart` et BookmarkEnd. Le contenu trouvé entre ces deux nœuds constitue le signet. Vous pouvez passer l'un de ces nœuds comme n'importe quel marqueur, même ceux de signets différents, tant que le marqueur de départ apparaît avant le marqueur de fin dans le document. Nous allons extraire ce contenu dans un nouveau document en utilisant le code ci-dessous. L'option de paramètre **IsInclusive** indique comment conserver ou supprimer le signet.

L'exemple de code suivant montre comment extraire le contenu référencé par un signet à l'aide de la méthode **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## Extraire le contenu d'un Commentaire

Un commentaire est composé des nœuds CommentRangeStart, CommentRangeEnd et Comment. Tous ces nœuds sont en ligne. Les deux premiers nœuds encapsulent le contenu du document référencé par le commentaire, comme le montre la capture d'écran ci-dessous.

Le nœud **Comment** lui-même est un InlineStory qui peut contenir des paragraphes et des exécutions. Il représente le message du commentaire sous la forme d'une bulle de commentaire dans le volet d'aperçu. Comme ce nœud est en ligne et un descendant d'un corps, vous pouvez également extraire le contenu de l'intérieur de ce message.

Le commentaire résume l'en-tête, le premier paragraphe et le tableau de la deuxième section. Extrayons ce commentaire dans un nouveau document. L'option **IsInclusive** indique si le commentaire lui-même est conservé ou supprimé.

L'exemple de code suivant montre comment procéder:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## Comment extraire du contenu à l'aide de DocumentVisitor

Utilisez la classe [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) pour implémenter ce scénario d'utilisation. Cette classe correspond au modèle de conception des visiteurs bien connu. Avec **DocumentVisitor,**, vous pouvez définir et exécuter des opérations personnalisées qui nécessitent une énumération sur l'arborescence du document.

**DocumentVisitor**

Chaque méthode **DocumentVisitor.VisitXXX** renvoie une valeur [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) qui contrôle l'énumération des nœuds. Vous pouvez demander soit de continuer l'énumération, d'ignorer le nœud actuel (mais de continuer l'énumération), soit d'arrêter l'énumération des nœuds.

Voici les étapes à suivre pour déterminer et extraire par programmation diverses parties d'un document:

- Créer une classe dérivée de **DocumentVisitor**
- Remplacer et fournir des implémentations pour certaines ou toutes les méthodes **DocumentVisitor.VisitXXX** pour effectuer certaines opérations personnalisées
- Appelez `Node.Accept` sur le nœud à partir duquel vous souhaitez démarrer l'énumération. Par exemple, si vous souhaitez énumérer l'ensemble du document, utilisez `Document.Accept`

**DocumentVisitor**

Cet exemple montre comment utiliser le modèle Visiteur pour ajouter de nouvelles opérations au modèle d'objet Aspose.Words. Dans ce cas, nous créons un simple convertisseur de document au format texte:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Comment extraire du Texte uniquement

Les moyens de récupérer du texte à partir du document sont:

- Utilisez [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) avec [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) pour enregistrer en texte brut dans un fichier ou un flux
- Utilisez [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) et transmettez le paramètre **SaveFormat.Text**. En interne, cela appelle enregistrer sous forme de texte dans un flux de mémoire et renvoie la chaîne résultante
- Utilisez [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/) pour récupérer du texte avec tous les caractères de contrôle Microsoft Word, y compris les codes de champ
- Implémentez un [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) personnalisé pour effectuer une extraction personnalisée

### En utilisant `Node.GetText` et `Node.ToString`

Un document Word peut contenir des caractères de contrôle qui désignent des éléments spéciaux tels que le champ, la fin de la cellule,la fin de la section, etc. La liste complète des caractères de contrôle de mot possibles est définie dans la classe [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/). La méthode **Node.GetText** renvoie du texte avec tous les caractères de caractère de contrôle présents dans le nœud.

L'appel de **ToString** renvoie la représentation en texte brut du document uniquement sans caractères de contrôle.

L'exemple de code suivant montre la différence entre l'appel des méthodes **GetText** et **ToString** sur un nœud:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### En utilisant `SaveFormat.Text`

Cet exemple enregistre le document comme suit:

- Filtre les caractères de champ et les codes de champ, la forme, la note de bas de page, la note de fin et les références de commentaire
- Remplace les caractères de fin de paragraphe **ControlChar.Cr** par des combinaisons **ControlChar.CrLf**
- Utilise l'encodage UTF8

L'exemple de code suivant montre comment enregistrer un document au format TXT:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## Extraire des images à partir de formes

Vous devrez peut-être extraire des images de document pour effectuer certaines tâches. Aspose.Words vous permet de le faire aussi.

L'exemple de code suivant montre comment extraire des images d'un document:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}