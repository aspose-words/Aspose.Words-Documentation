---
title: Extraire le contenu entre les nœuds de document
second_title: Aspose.Words pour Python
articleTitle: Extraire le contenu entre les nœuds d'un document
linktitle: Extraire le contenu entre les nœuds
description: "Comment extraire facilement du contenu spécifique d'une plage du document à l'aide de Python."
type: docs
weight: 140
url: /fr/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Lorsque vous travaillez avec des documents, il est important de pouvoir extraire facilement le contenu d'une plage spécifique au sein d'un document. Cependant, le contenu peut être constitué d’éléments complexes tels que des paragraphes, des tableaux, des images, etc.

Quel que soit le contenu à extraire, la méthode d'extraction de ce contenu sera toujours déterminée par les nœuds sélectionnés pour extraire le contenu. Il peut s'agir de corps de texte entiers ou de simples passages de texte.

Il existe de nombreuses situations possibles et donc de nombreux types de nœuds différents à prendre en compte lors de l'extraction de contenu. Par exemple, vous souhaiterez peut-être extraire du contenu entre:

- Deux paragraphes spécifiques
- Des séquences de texte spécifiques
- Champs de différents types, tels que les champs de fusion
- Plages de début et de fin d'un signet ou d'un commentaire
- Divers corps de texte contenus dans des sections distinctes

Dans certaines situations, vous devrez peut-être même combiner différents types de nœuds, comme extraire du contenu entre un paragraphe et un champ, ou entre une exécution et un signet.

Cet article fournit l'implémentation du code pour extraire du texte entre différents nœuds, ainsi que des exemples de scénarios courants.

{{% alert color="primary" %}}

Ces exemples ne sont que quelques démonstrations des nombreuses possibilités. Nous prévoyons que la fonctionnalité d'extraction de texte fasse partie du API public à l'avenir, et aucun code supplémentaire ne sera requis. En attendant, n'hésitez pas à poster vos demandes concernant cette fonctionnalité sur le [Forum Aspose.Words](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Pourquoi extraire du contenu

Souvent, l’objectif de l’extraction du contenu est de le dupliquer ou de l’enregistrer séparément dans un nouveau document. Par exemple, vous pouvez extraire du contenu et:

- Copiez-le dans un document séparé
- Convertir une partie spécifique d'un document en PDF ou en image
- Dupliquer le contenu du document plusieurs fois
- Travailler avec du contenu extrait séparé du reste du document

Cela peut être facilement réalisé en utilisant Aspose.Words et l'implémentation du code ci-dessous.

## Algorithme d’extraction de contenu

Le code de cette section aborde toutes les situations possibles décrites ci-dessus avec une méthode généralisée et réutilisable. Les grandes lignes de cette technique impliquent:

1. Rassembler les nœuds qui dictent la zone de contenu qui sera extraite de votre document. La récupération de ces nœuds est gérée par l'utilisateur dans son code, en fonction de ce qu'il souhaite extraire.
1. Passer ces nœuds à la méthode **ExtractContent** fournie ci-dessous. Vous devez également passer un paramètre booléen qui indique si ces nœuds, faisant office de marqueurs, doivent être inclus ou non dans l'extraction.
1. Récupération d'une liste de contenu cloné (nœuds copiés) spécifié pour être extrait. Vous pouvez utiliser cette liste de nœuds de n'importe quelle manière applicable, par exemple en créant un nouveau document contenant uniquement le contenu sélectionné.

## Comment extraire du contenu

Pour extraire le contenu de votre document, vous devez appeler la méthode **extrait_content** ci-dessous et transmettre les paramètres appropriés. La base sous-jacente de cette méthode consiste à rechercher des nœuds au niveau des blocs (paragraphes et tableaux) et à les cloner pour créer des copies identiques. Si les nœuds marqueurs transmis sont au niveau du bloc, la méthode peut simplement copier le contenu à ce niveau et l'ajouter au tableau.

Cependant, si les nœuds marqueurs sont en ligne (un enfant d'un paragraphe), la situation devient alors plus complexe, car il est nécessaire de diviser le paragraphe au niveau du nœud en ligne, qu'il s'agisse d'une exécution, de champs de signet, etc. Le contenu des nœuds parents clonés n'est pas présent entre les marqueurs est supprimé. Ce processus est utilisé pour garantir que les nœuds en ligne conserveront toujours la mise en forme du paragraphe parent. La méthode exécutera également des vérifications sur les nœuds passés en paramètres et lèvera une exception si l'un des nœuds n'est pas valide. Les paramètres à passer à cette méthode sont:

1. **noeud de démarrage** et **nœud de fin**. Les deux premiers paramètres sont les nœuds qui définissent respectivement où l'extraction du contenu doit commencer et se terminer. Ces nœuds peuvent être à la fois au niveau bloc ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ou au niveau inline (par exemple [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) etc.):
   1. Pour transmettre un champ, vous devez transmettre l'objet [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) correspondant.
   1. Pour transmettre les signets, les nœuds [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) et [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) doivent être transmis.
   1. Pour transmettre des commentaires, les nœuds [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) et [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) doivent être utilisés.
1. **est inclusif**. Définit si les marqueurs sont inclus dans l'extraction ou non. Si cette option est définie sur false et que le même nœud ou des nœuds consécutifs sont transmis, alors une liste vide sera renvoyée:
   1. Si un nœud [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) est transmis, cette option définit si le champ entier doit être inclus ou exclu.
   1. Si un nœud [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) ou [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) est passé, cette option définit si le signet est inclus ou simplement le contenu entre la plage du signet.
   1. Si un nœud [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) ou [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) est transmis, cette option définit si le commentaire lui-même doit être inclus ou uniquement le contenu de la plage de commentaires.

La mise en œuvre de la méthode **extrait_content**, vous pouvez trouver [ici](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Cette méthode sera évoquée dans les scénarios de cet article.

Nous définirons également une méthode personnalisée pour générer facilement un document à partir des nœuds extraits. Cette méthode est utilisée dans de nombreux scénarios ci-dessous et crée simplement un nouveau document et y importe le contenu extrait.

L'exemple de code suivant montre comment prendre une liste de nœuds et les insérer dans un nouveau document:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Extraire le contenu entre les paragraphes

Cela montre comment utiliser la méthode ci-dessus pour extraire le contenu entre des paragraphes spécifiques. Dans ce cas, nous souhaitons extraire le corps de la lettre trouvée dans la première moitié du document. Nous pouvons dire que cela se situe entre le 7ème et le 11ème paragraphe.

Le code ci-dessous accomplit cette tâche. Les paragraphes appropriés sont extraits à l'aide de la méthode [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) sur le document et en passant les indices spécifiés. Nous transmettons ensuite ces nœuds à la méthode **extrait_content** et déclarons qu'ils doivent être inclus dans l'extraction. Cette méthode renverra le contenu copié entre ces nœuds qui sera ensuite inséré dans un nouveau document.

L'exemple de code suivant montre comment extraire le contenu entre des paragraphes spécifiques à l'aide de la méthode **extrait_content** ci-dessus:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraire du contenu entre différents types de nœuds

Nous pouvons extraire du contenu entre n’importe quelle combinaison de niveaux de bloc ou de nœuds en ligne. Dans ce scénario ci-dessous, nous extrairons le contenu entre le premier paragraphe et le tableau de la deuxième section inclusivement. Nous obtenons les nœuds marqueurs en appelant les méthodes [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) et [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) sur la deuxième section du document pour récupérer les nœuds [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) et [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) appropriés. Pour une légère variation, dupliquons plutôt le contenu et insérons-le sous l'original.

L'exemple de code suivant montre comment extraire le contenu entre un paragraphe et un tableau à l'aide de la méthode **extrait_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraire le contenu entre les paragraphes en fonction du style

Vous devrez peut-être extraire le contenu entre des paragraphes de style identique ou différent, par exemple entre des paragraphes marqués de styles de titre.

Le code ci-dessous montre comment y parvenir. Il s'agit d'un exemple simple qui extraira le contenu entre la première instance des styles "Titre 1" et "En-tête 3" sans extraire également les titres. Pour ce faire, nous définissons le dernier paramètre sur false, qui spécifie que les nœuds marqueurs ne doivent pas être inclus.

Dans une implémentation appropriée, cela doit être exécuté en boucle pour extraire le contenu entre tous les paragraphes de ces styles du document. Le contenu extrait est copié dans un nouveau document.

L'exemple de code suivant montre comment extraire le contenu entre des paragraphes avec des styles spécifiques à l'aide de la méthode **extrait_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraire le contenu entre des exécutions spécifiques

Vous pouvez également extraire du contenu entre des nœuds en ligne tels qu'un [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). Les passages de différents paragraphes peuvent être transmis comme marqueurs. Le code ci-dessous montre comment extraire un texte spécifique entre le même nœud [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

L'exemple de code suivant montre comment extraire le contenu entre des exécutions spécifiques du même paragraphe à l'aide de la méthode **extrait_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraire du contenu à l'aide d'un champ

Pour utiliser un champ comme marqueur, il faut passer le nœud [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/). Le dernier paramètre de la méthode **extrait_content** définira si l'intégralité du champ doit être inclus ou non. Extrayons le contenu entre le champ de fusion "FullName" et un paragraphe du document. Nous utilisons la méthode [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) de la classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Cela renverra le nœud [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) à partir du nom du champ de fusion qui lui a été transmis.

Dans notre cas, définissons le dernier paramètre passé à la méthode **extrait_content** sur `False` pour exclure le champ de l'extraction. Nous rendrons le contenu extrait au format PDF.

L'exemple de code suivant montre comment extraire le contenu entre un champ et un paragraphe spécifiques du document à l'aide de la méthode **extrait_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraire le contenu d'un signet

Dans un document, le contenu défini dans un signet est encapsulé par les nœuds [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) et [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/). Le contenu trouvé entre ces deux nœuds constitue le signet. Vous pouvez transmettre l'un ou l'autre de ces nœuds comme n'importe quel marqueur, même ceux provenant de différents signets, à condition que le marqueur de début apparaisse avant le marqueur de fin dans le document. Nous allons extraire ce contenu dans un nouveau document en utilisant le code ci-dessous. L'option du paramètre **est inclusif** montre comment conserver ou supprimer le signet.

L'exemple de code suivant montre comment extraire le contenu référencé par un signet à l'aide de la méthode **extrait_content**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Extraire le contenu d'un commentaire

Un commentaire est composé des nœuds [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) et [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Tous ces nœuds sont en ligne. Les deux premiers nœuds encapsulent le contenu du document référencé par le commentaire, comme le montre la capture d'écran ci-dessous. Le nœud [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) lui-même est un [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) pouvant contenir des paragraphes et des séquences. Il représente le message du commentaire tel qu'il apparaît sous la forme d'une bulle de commentaire dans le volet de révision. Comme ce nœud est en ligne et descendant d'un corps, vous pouvez également extraire le contenu de ce message.

Le commentaire résume le titre, le premier paragraphe et le tableau de la deuxième section. Extrayons ce commentaire dans un nouveau document. L'option **est inclusif** indique si le commentaire lui-même est conservé ou supprimé.

L'exemple de code suivant montre comment procéder:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Comment extraire du texte uniquement

Les façons de récupérer le texte du document sont les suivantes:

- Utilisez [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) pour enregistrer sous forme de texte brut dans un fichier ou un flux
- Utilisez [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) et transmettez le paramètre [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text). En interne, cela appelle l'enregistrement en tant que texte dans un flux mémoire et renvoie la chaîne résultante
- Utilisez [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) pour récupérer le texte avec tous les caractères de contrôle Microsoft Word, y compris les codes de champ

### Utilisation de Node.get_text et Node.to_string

Un document Word peut contenir des caractères de contrôle qui désignent des éléments spéciaux tels qu'un champ, une fin de cellule, une fin de section, etc. La liste complète des caractères de contrôle Word possibles est définie dans la classe [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/). La méthode [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) renvoie du texte avec tous les caractères de contrôle présents dans le nœud.

L'appel de [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) renvoie la représentation en texte brut du document uniquement sans caractères de contrôle. Pour plus d'informations sur l'exportation en texte brut, voir Utilisation de [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)

L'exemple de code suivant montre la différence entre l'appel des méthodes [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) et [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) sur un nœud:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Utiliser `SaveFormat.Text`

Cet exemple enregistre le document comme suit:

- Filtre les caractères de champ et les codes de champ, les références de forme, de note de bas de page, de note de fin et de commentaire
- Remplace les caractères **ControlChar.Cr** de fin de paragraphe par des combinaisons **ControlChar.CrLf**
- Utilise l'encodage UTF8

L'exemple de code suivant montre comment enregistrer un document au format TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Extraire des images de formes

Vous devrez peut-être extraire des images de documents pour effectuer certaines tâches. Aspose.Words vous permet également de le faire.

L'exemple de code suivant montre comment extraire des images d'un document:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
