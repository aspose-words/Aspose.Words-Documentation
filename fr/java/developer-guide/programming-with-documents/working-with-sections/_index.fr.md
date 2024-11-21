---
title: Travailler avec les sections Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec les sections
linktitle: Travailler avec les sections
description: "Comprendre les concepts de la section des documents et les pratiques de manipulation en utilisant Java. Insérer une section dans un document Java. Supprimer la rubrique Java. Copier les sections entre les documents."
type: docs
weight: 120
url: /fr/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Parfois, vous voulez un document qui n'a pas le même formatage sur toutes les pages. Par exemple, vous devrez peut-être modifier le format des numéros de page, avoir une taille et une orientation différentes, ou avoir la première page de document comme page couverture sans numérotation. Vous pouvez y parvenir avec des sections.

Les sections sont des nœuds de niveau qui contrôlent les en-têtes et les pied de page, l'orientation, les colonnes, les marges, le formatage des numéros de page, et d'autres.

Aspose.Words vous permet de gérer les sections, de diviser un document en sections et d'effectuer des modifications de formatage qui ne s'appliquent qu'à une section donnée. Aspose.Words stocke des informations sur le formatage de section telles que les en-têtes et les pied de page, la configuration de page et les paramètres de colonne dans la pause section.

Cet article explique comment travailler avec les sections et les pauses.

## Ce qu'est la section et la section

Les sections des documents sont représentées par [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) et [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) les cours. Les objets de section sont des enfants immédiats de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) noeud et peut être consulté via le [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) propriété. Vous pouvez gérer ces nœuds en utilisant certaines méthodes telles que [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), et d'autres.

Section break est une option qui divise les pages de document en sections avec des mises en page personnalisables.

## Types de pause de section

Aspose.Words vous permet de diviser et de formater les documents en utilisant différentes sections [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) énumération:

- SectionBreakContinu
- SectionBreakNewColumn
- SectionBreakNouvellePage
- SectionBreakEvenPage
- SectionBreakOddPage

Vous pouvez également utiliser le [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) énumération pour choisir un type de pause qui s'applique uniquement à la première section comme NewColumn, NewPage, EvenPage et OddPage.

## Gérer une section

Comme une section est un noeud composite normal, toute la manipulation du noeud API peut être utilisé pour manipuler des sections: ajouter, supprimer et d'autres opérations sur des sections. Vous pouvez en savoir plus sur les nœuds dans l'article [Aspose.Words Document Object Model (DOM)](/words/fr/java/aspose-words-document-object-model/).

D'autre part, vous pouvez également utiliser le `DocumentBuilder` API travailler avec les sections. Dans cet article, nous nous concentrerons sur cette façon particulière de travailler avec les sections.

## Insérer ou supprimer une pause section

Aspose.Words vous permet d'insérer une section dans le texte en utilisant [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) méthode.

L'exemple de code suivant montre comment insérer une section dans un document:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Utiliser [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) méthode pour supprimer une rupture de section. Si vous n'avez pas besoin de supprimer une pause de section spécifique et plutôt supprimer le contenu de cette section, vous pouvez utiliser le [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) méthode.

L'exemple de code suivant montre comment supprimer les cassures de sections:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Notez qu'une pause de section contient de l'information sur la section qui la précède, et non sur la section qui la suit. Donc, si vous supprimez une pause de section, le texte avant la pause supprimée obtiendra les propriétés de la pause de section qui la suit. Cela peut faire en sorte que tout le document devienne paysage, ou que les en-têtes et les pied de page changent ou disparaissent complètement.

{{% /alert %}}

## Déplacer une section

Si vous voulez déplacer une section d'une position à une autre dans votre document, vous devez obtenir l'index de cette section. Aspose.Words vous permet d'obtenir une position de section [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Vous pouvez utiliser le [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) propriété pour obtenir toutes les sections de votre document. Mais si vous voulez obtenir seulement la première section, vous pouvez utiliser le [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) propriété.

L'exemple de code suivant montre comment accéder à la première section et itérer à travers les enfants d'un noeud composite:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Spécifier une disposition de section

Parfois, vous voulez que votre document soit plus beau en faisant des mises en page créatives pour différentes sections de documents. Si vous voulez spécifier le type de la grille de section actuelle, vous pouvez choisir un mode de mise en page de section en utilisant le [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) énumération:

- Par défaut
- Grille
- LigneGrid
- Enfilez-les à Chars

L'exemple de code suivant montre comment limiter le nombre de lignes que chaque page peut avoir:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Modifier une section

Lorsque vous ajoutez une nouvelle section à votre document, il n'y aura pas de corps ou de paragraphe que vous pouvez modifier. Aspose.Words vous permet de garantir qu'une section contient un corps avec au moins un paragraphe [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) méthode – elle ajoutera automatiquement un nœud Corps (ou HeaderFooter) au document, puis y ajoutera un paragraphe.

L'exemple de code suivant montre comment préparer un nouveau nœud de section en utilisant **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Ajouter ou prépendre du contenu

Si vous voulez dessiner une forme ou ajouter du texte ou une image au début/à la fin d'une section, vous pouvez utiliser la [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) et [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) les méthodes de [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) En cours.

L'exemple de code suivant montre comment ajouter le contenu d'une section existante:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Clone une section

Aspose.Words vous permet de dupliquer une section en créant une copie complète de celle-ci en utilisant [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) méthode.

L'exemple de code suivant montre comment cloner la première section de votre document:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Copier les sections entre les documents

Dans certains cas, vous pouvez avoir de grands documents avec de nombreuses sections et vous voulez copier le contenu d'une section d'un document à l'autre.

Aspose.Words vous permet de copier des sections entre les documents en utilisant [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) méthode.

L'exemple de code suivant montre comment copier les sections entre les documents:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Travailler avec l'en-tête de section et le pied de page

Les règles de base pour afficher un en-tête ou un pied de page pour chaque section sont assez simples:

1. Si la section n'a pas ses propres en-têtes/pieds d'un certain type, elle est reprise de la section précédente.
2. Le type d'en-tête/footer affiché sur la page est contrôlé par les paramètres de la section "Différent Première Page" et "Différente Odd & Even pages" – s'ils sont désactivés, alors les titres de la section sont ignorés.

L'exemple de code suivant montre comment créer 2 sections avec différents en-têtes:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Si vous voulez supprimer le texte des en-têtes et des pieds de page sans supprimer [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) objets dans votre document, vous pouvez utiliser [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) méthode. En outre, vous pouvez utiliser le [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) méthode pour enlever toutes les formes des en-têtes et des pied de page dans votre document.

L'exemple de code suivant montre comment effacer le contenu de tous les en-têtes et les pied de page dans une section:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

L'exemple de code suivant comment supprimer toutes les formes de tous les pieds de page en-têtes dans une section:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Personnaliser les propriétés de la page dans une section

Avant d'imprimer une page ou un document, vous pouvez personnaliser et modifier la taille et la mise en page d'une seule page ou de l'ensemble du document. Avec la configuration des pages, vous pouvez modifier les paramètres des pages de documents tels que les marges, l'orientation et la taille pour imprimer différentes premières pages ou pages impaires.

Aspose.Words vous permet de personnaliser les propriétés de la page et de la section [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) En cours.

L'exemple de code suivant montre comment définir des propriétés telles que la taille et l'orientation de la page pour la section actuelle:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

L'exemple de code suivant montre comment modifier les propriétés de la page dans toutes les sections:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Voir aussi

- [Niveau logique des nœuds dans un document](/words/fr/java/logical-levels-of-nodes-in-a-document/)
- [Insérer et annexer des documents](/words/fr/java/insert-and-append-documents/)
