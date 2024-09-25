---
title: Travailler avec des sections dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des sections
linktitle: Travailler avec des sections
description: "Comprendre les concepts des sections de documents et les pratiques de manipulation à l'aide de C#. Insérer une section dans un document C#. Supprimer la section C#. Copiez des sections entre les documents."
type: docs
weight: 120
url: /fr/net/working-with-sections/
---

Parfois, vous souhaitez un document qui n'a pas le même formatage sur toutes les pages. Par exemple, vous devrez peut-être modifier les formats de numéro de page, avoir une taille et une orientation de page différentes, ou avoir la première page du document comme page de couverture sans aucune numérotation. Vous pouvez y parvenir avec des sections.

Les sections sont des nœuds de niveau qui contrôlent les en-têtes et pieds de page, l'orientation, les colonnes, les marges, le formatage des numéros de page, etc.

Aspose.Words vous permet de gérer les sections, de diviser un document en sections et d'apporter des modifications de formatage qui s'appliquent uniquement à une section spécifique. Aspose.Words stocke des informations sur le formatage des sections telles que les en-têtes et pieds de page, la mise en page et les paramètres de colonne dans le saut de section.

Cet article explique comment utiliser les sections et les sauts de section.

## Qu'est-ce qu'une section et un saut de section

Les sections du document sont représentées par les classes [Section](https://reference.aspose.com/words/fr/net/aspose.words/section/) et [SectionCollection](https://reference.aspose.com/words/fr/net/aspose.words/section/collection). Les objets section sont des enfants immédiats du nœud [Document](https://reference.aspose.com/words/fr/net/aspose.words/document/) et sont accessibles via la propriété [Sections](https://reference.aspose.com/words/fr/net/aspose.words/document//properties/sections). Vous pouvez gérer ces nœuds en utilisant certaines méthodes telles que [Remove](https://reference.aspose.com/words/fr/net/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/fr/net/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/fr/net/aspose.words/nodecollection/indexof/) et autres.

Le saut de section est une option qui divise les pages du document en sections avec des mises en page personnalisables.

## Types de saut de section

Aspose.Words vous permet de diviser et de formater des documents en utilisant différents sauts de section de l'énumération [BreakType](https://reference.aspose.com/words/fr/net/aspose.words/breaktype/):

* SectionBreakContinu
* SectionBreakNewColumn
* SectionBreakNewPage
* SectionBreakEvenPage
* SectionBreakOddPage

Vous pouvez également utiliser l'énumération [SectionStart](https://reference.aspose.com/words/fr/net/aspose.words/sectionstart/) pour choisir un type de saut qui s'applique uniquement à la première section, tel que NewColumn, NewPage, EvenPage et OddPage.

## Gérer une rubrique

Puisqu'une section est un nœud composite normal, l'ensemble de la manipulation de nœud API peut être utilisé pour manipuler des sections: pour ajouter, supprimer et d'autres opérations sur les sections. Vous pouvez en savoir plus sur les nœuds dans l'article [Aspose.Words Document Object Model (DOM)](/words/fr/net/aspose-words-document-object-model/).

D'un autre côté, vous pouvez également utiliser le `DocumentBuilder` API pour travailler avec des sections. Dans cet article, nous allons nous concentrer sur cette manière particulière de travailler avec les sections.

## Insérer ou supprimer un saut de section

Aspose.Words vous permet d'insérer un saut de section dans le texte à l'aide de la méthode [InsertBreak](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertbreak/).

L'exemple de code suivant montre comment insérer un saut de section dans un document:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

Utilisez la méthode [Remove](https://reference.aspose.com/words/fr/net/aspose.words/node/remove/) pour supprimer un saut de section. Si vous n'avez pas besoin de supprimer un saut de section spécifique mais de supprimer le contenu de cette section, vous pouvez utiliser la méthode [ClearContent](https://reference.aspose.com/words/fr/net/aspose.words/section/clearcontent/).

L'exemple de code suivant montre comment supprimer les sauts de section:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

Notez qu’un saut de section contient des informations sur la section qui le précède, et non sur la section qui le suit. Ainsi, si vous supprimez un saut de section, le texte précédant le saut supprimé obtiendra les propriétés du saut de section qui le suit. Cela peut entraîner la transformation de l'ensemble du document en mode paysage, ou la modification ou la disparition complète des en-têtes et des pieds de page.

{{% /alert %}}

## Déplacer une section

Si vous souhaitez déplacer une section d'une position à une autre dans votre document, vous devez obtenir l'index de cette section. Aspose.Words vous permet d'obtenir une position de section à partir d'un [SectionCollection](https://reference.aspose.com/words/fr/net/aspose.words/sectioncollection/) en utilisant la propriété [Item](https://reference.aspose.com/words/fr/net/aspose.words/sectioncollection//properties/item). Vous pouvez utiliser la propriété [Sections](https://reference.aspose.com/words/fr/net/aspose.words/document/sections/) pour obtenir toutes les sections de votre document. Mais si vous souhaitez obtenir uniquement la première section, vous pouvez utiliser la propriété [FirstSection](https://reference.aspose.com/words/fr/net/aspose.words/document/firstsection/).

L'exemple de code suivant montre comment accéder à la première section et parcourir les enfants d'un nœud composite:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## Spécifier une disposition de section

Parfois, vous souhaitez améliorer l'apparence de votre document en créant des mises en page créatives pour différentes sections du document. Si vous souhaitez spécifier le type de la grille de section actuelle, vous pouvez choisir un mode de disposition des sections à l'aide de l'énumération [SectionLayoutMode](https://reference.aspose.com/words/fr/net/aspose.words/sectionlayoutmode/):

* Défaut
* Grille
* Grille de lignes
* SnapToChars

L'exemple de code suivant montre comment limiter le nombre de lignes que chaque page peut contenir:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## Modifier une section

Lorsque vous ajoutez une nouvelle section à votre document, vous ne pourrez modifier aucun corps ni paragraphe. Aspose.Words vous permet de garantir qu'une section contient un corps avec au moins un paragraphe en utilisant la méthode [EnsureMinimum](https://reference.aspose.com/words/fr/net/aspose.words/section/ensureminimum/) – il ajoutera automatiquement un nœud Body (ou HeaderFooter) au document puis y ajoutera un paragraphe.

L'exemple de code suivant montre comment préparer un nouveau nœud de section à l'aide de **EnsureMinimum**:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### Ajouter ou ajouter du contenu

Si vous souhaitez dessiner une forme ou ajouter du texte ou une image au début/fin d'une section, vous pouvez utiliser les méthodes [AppendContent](https://reference.aspose.com/words/fr/net/aspose.words/section/appendcontent/) et [PrependContent](https://reference.aspose.com/words/fr/net/aspose.words/section/prependcontent/) de la classe [Section](https://reference.aspose.com/words/fr/net/aspose.words/section/).

L'exemple de code suivant montre comment ajouter le contenu d'une section existante:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### Cloner une section

Aspose.Words vous permet de dupliquer une section en en créant une copie complète à l'aide de la méthode [Clone](https://reference.aspose.com/words/fr/net/aspose.words/section/clone/).

L'exemple de code suivant montre comment cloner la première section de votre document:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### Copier des sections entre des documents

Dans certains cas, vous pouvez avoir des documents volumineux comportant de nombreuses sections et vous souhaitez copier le contenu d'une section d'un document à un autre.

Aspose.Words vous permet de copier des sections entre des documents en utilisant la méthode [ImportNode](https://reference.aspose.com/words/fr/net/aspose.words/nodeimporter/importnode/).

L'exemple de code suivant montre comment copier des sections entre des documents:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### Travailler avec l'en-tête et le pied de page de section

Les règles de base pour afficher un en-tête ou un pied de page pour chaque section sont assez simples:

1. Si la section ne possède pas ses propres en-têtes/pieds de page d'un certain type, elle est alors extraite de la section précédente.
2. Le type d'en-tête/pied de page affiché sur la page est contrôlé par les paramètres des sections "Première page différente" et "Pages paires et impaires différentes" – s'ils sont désactivés, les titres de la section sont ignorés.

L'exemple de code suivant montre comment créer 2 sections avec des en-têtes différents:

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

Si vous souhaitez supprimer le texte des en-têtes et des pieds de page sans supprimer les objets [HeaderFooter](https://reference.aspose.com/words/fr/net/aspose.words/headerfooter/) de votre document, vous pouvez utiliser la méthode [ClearHeadersFooters](https://reference.aspose.com/words/fr/net/aspose.words/section/clearheadersfooters/). De plus, vous pouvez utiliser la méthode [DeleteHeaderFooterShapes](https://reference.aspose.com/words/fr/net/aspose.words/section/deleteheaderfootershapes/) pour supprimer toutes les formes des en-têtes et pieds de page de votre document.

L'exemple de code suivant montre comment effacer le contenu de tous les en-têtes et pieds de page d'une section:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

L'exemple de code suivant montre comment supprimer toutes les formes de tous les en-têtes et pieds de page d'une section:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## Personnaliser les propriétés de la page dans une section

Avant d'imprimer une page ou un document, vous souhaiterez peut-être personnaliser et modifier la taille et la mise en page d'une seule page ou de l'ensemble du document. Avec la mise en page, vous pouvez modifier les paramètres des pages du document tels que les marges, l'orientation et la taille pour imprimer différentes premières pages ou des pages impaires.

Aspose.Words vous permet de personnaliser les propriétés des pages et des sections à l'aide de la classe [PageSetup](https://reference.aspose.com/words/fr/net/aspose.words/pagesetup/).

L'exemple de code suivant montre comment définir des propriétés telles que la taille et l'orientation de la page pour la section actuelle:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

L'exemple de code suivant montre comment modifier les propriétés de la page dans toutes les sections:

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## Voir également

* [Niveaux logiques des nœuds dans un document](/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [Insérer et joindre des documents](/words/fr/net/insert-and-append-documents/)

