---
title: Travailler avec des sections dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des Sections
linktitle: Travailler avec des Sections
description: "Comprendre les concepts de section de document et les pratiques de manipulation à l'aide de Java. Insérer une section dans un document Java. Supprimer la section Java. Copiez des sections entre les documents."
type: docs
weight: 120
url: /fr/java/working-with-sections/
timestamp: 2024-01-31-14-23-37
---

Parfois, vous voulez un document qui n'a pas la même mise en forme sur toutes les pages. Par exemple, vous devrez peut-être modifier les formats des numéros de page, avoir une taille et une orientation de page différentes, ou avoir la première page du document comme page de garde sans numérotation. Vous pouvez y parvenir avec des sections.

Les sections sont des nœuds de niveau qui contrôlent les en-têtes et les pieds de page, l'orientation, les colonnes, les marges, la mise en forme des numéros de page, etc.

Aspose.Words vous permet de gérer des sections, de diviser un document en sections et d'apporter des modifications de mise en forme qui ne s'appliquent qu'à une section spécifique. Aspose.Words stocke des informations sur la mise en forme des sections, telles que les en-têtes et les pieds de page, la mise en page et les paramètres de colonne dans le saut de section.

Cet article explique comment travailler avec des sections et des sauts de section.

## Quelle Section et Rupture de Section Est

Les sections de document sont représentées par les classes [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) et [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Les objets de section sont des enfants immédiats du nœud [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) et sont accessibles via la propriété [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections). Vous pouvez gérer ces nœuds en utilisant certaines méthodes telles que [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), et d'autres.

Le saut de section est une option qui divise les pages du document en sections avec des mises en page personnalisables.

## Types de saut de section

Aspose.Words vous permet de diviser et de formater des documents en utilisant différents sauts de section de l'énumération [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/):

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

Vous pouvez également utiliser l'énumération [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) pour choisir un type de rupture qui s'applique uniquement à la première section, par exemple NewColumn, NewPage, EvenPage, et OddPage.

## Gérer une Section

Puisqu'une section est un nœud composite normal, toute la manipulation de nœud API peut être utilisée pour manipuler des sections: pour ajouter, supprimer et d'autres opérations sur les sections. Vous pouvez en savoir plus sur les nœuds dans l'article [Aspose.Words Modèle d'objet de document (DOM)](/words/java/aspose-words-document-object-model/).

D'autre part, vous pouvez également utiliser le `DocumentBuilder` API pour travailler avec des sections. Dans cet article, nous allons nous concentrer sur cette façon particulière de travailler avec les sections.

## Insérer ou supprimer un saut de section

Aspose.Words vous permet d'insérer un saut de section dans du texte à l'aide de la méthode [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int).

L'exemple de code suivant montre comment insérer un saut de section dans un document:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

Utilisez la méthode [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) pour supprimer un saut de section. Si vous n'avez pas besoin de supprimer un saut de section spécifique et de supprimer à la place le contenu de cette section, vous pouvez utiliser la méthode [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent).

L'exemple de code suivant montre comment supprimer les sauts de section:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

Notez qu'un saut de section contient des informations sur la section qui le précède, pas sur la section qui le suit. Donc, si vous supprimez un saut de section, le texte précédant le saut supprimé obtiendra les propriétés du saut de section qui le suit. Cela peut entraîner la transformation de l'ensemble du document en paysage, ou la modification ou la disparition complète des en-têtes et des pieds de page.

{{% /alert %}}

## Déplacer une Section

Si vous souhaitez déplacer une section d'une position à une autre dans votre document, vous devez obtenir l'index de cette section. Aspose.Words vous permet d'obtenir une position de section à partir d'un [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/). Vous pouvez utiliser la propriété [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) pour obtenir toutes les sections de votre document. Mais si vous souhaitez obtenir uniquement la première section, vous pouvez utiliser la propriété [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection).

L'exemple de code suivant montre comment accéder à la première section et parcourir les enfants d'un nœud composite:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## Spécifier une disposition de Section

Parfois, vous souhaitez que votre document soit plus beau en créant des mises en page créatives pour différentes sections du document. Si vous souhaitez spécifier le type de la grille de section actuelle, vous pouvez choisir un mode de disposition de section à l'aide de l'énumération [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/):

- Par Défaut
- Grille
- LineGrid
- SnapToChars

L'exemple de code suivant montre comment limiter le nombre de lignes que chaque page peut avoir:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## Modifier une Section

Lorsque vous ajoutez une nouvelle section à votre document, il n'y aura ni corps ni paragraphe que vous pourrez modifier. Aspose.Words vous permet de garantir qu'une section contient un corps avec au moins un paragraphe en utilisant la méthode [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) – elle ajoutera automatiquement un nœud Body (ou HeaderFooter) au document, puis y ajoutera un paragraphe.

L'exemple de code suivant montre comment préparer un nouveau nœud de section à l'aide de **EnsureMinimum**:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### Ajouter ou Ajouter du contenu

Si vous souhaitez dessiner une forme ou ajouter du texte ou une image au début/à la fin d'une section, vous pouvez utiliser les méthodes [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) et [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) de la classe [Section](https://reference.aspose.com/words/java/com.aspose.words/section/).

L'exemple de code suivant montre comment ajouter du contenu d'une section existante:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### Cloner une Section

Aspose.Words vous permet de dupliquer une section en en créant une copie complète à l'aide de la méthode [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone).

L'exemple de code suivant montre comment cloner la première section de votre document:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### Copier des Sections entre des documents

Dans certains cas, vous pouvez avoir de gros documents avec de nombreuses sections et vous souhaitez copier le contenu d'une section d'un document à un autre.

Aspose.Words vous permet de copier des sections entre des documents à l'aide de la méthode [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean).

L'exemple de code suivant montre comment copier des sections entre des documents:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### Travailler avec l'en-tête et le pied de page de section

Les règles de base pour afficher un en-tête ou un pied de page pour chaque section sont assez simples:

1. Si la section n'a pas ses propres en-têtes/pieds de page d'un certain type, elle est extraite de la section précédente.
2. Le type d'en-tête / pied de page affiché sur la page est contrôlé par les paramètres de section "Première page différente" et "Pages paires et impaires différentes" – s'ils sont désactivés, les propres titres de la section sont ignorés.

L'exemple de code suivant montre comment créer 2 sections avec des en-têtes différents:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

Si vous souhaitez supprimer le texte des en-têtes et des pieds de page sans supprimer les objets [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) de votre document, vous pouvez utiliser la méthode [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters). De plus, vous pouvez utiliser la méthode [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) pour supprimer toutes les formes des en-têtes et des pieds de page de votre document.

L'exemple de code suivant montre comment effacer le contenu de tous les en-têtes et pieds de page d'une section:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

L'exemple de code suivant explique comment supprimer toutes les formes de tous les pieds de page des en-têtes d'une section:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## Personnaliser les propriétés de la Page dans une Section

Avant d'imprimer une page ou un document, vous souhaiterez peut-être personnaliser et modifier la taille et la mise en page d'une seule page ou du document entier. Avec la mise en page, vous pouvez modifier les paramètres des pages du document tels que les marges, l'orientation et la taille pour imprimer différentes premières pages ou pages impaires.

Aspose.Words vous permet de personnaliser les propriétés de page et de section à l'aide de la classe [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/).

L'exemple de code suivant montre comment définir des propriétés telles que la taille et l'orientation de la page pour la section en cours:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

L'exemple de code suivant montre comment modifier les propriétés de la page dans toutes les sections:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## Voir Aussi

- [Niveaux logiques des nœuds dans un document](/words/java/logical-levels-of-nodes-in-a-document/)
- [Insérer et ajouter des documents](/words/java/insert-and-append-documents/)
