---
title: Travailler avec des caractères de contrôle
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des caractères de contrôle
linktitle: Travailler avec des caractères de contrôle
description: "Introduction à l'utilisation des caractères de contrôle dans Aspose.Words pour .NET."
type: docs
weight: 400
url: /fr/net/working-with-control-characters/
---

Les documents Microsoft Word peuvent contenir divers caractères ayant une signification particulière. Normalement, ils sont utilisés à des fins de formatage et ne sont pas dessinés en mode normal. Vous pouvez les rendre visibles si vous cliquez sur le bouton Afficher/Masquer les marques de formatage situé dans la barre d'outils Standard.

Parfois, vous devrez peut-être ajouter ou supprimer des caractères dans le texte. Par exemple, lors de l'obtention de texte par programmation à partir d'un document, Aspose.Words conserve la plupart des caractères de contrôle. Par conséquent, si vous devez travailler avec ce texte, vous devrez probablement supprimer ou remplacer les caractères.

La classe [ControlChar](https://reference.aspose.com/words/net/aspose.words/controlchar/) est un référentiel pour les constantes qui représentent les caractères de contrôle souvent rencontrés dans les documents. Il fournit des versions char et chaîne des mêmes constantes. Par exemple, la chaîne [LineBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreak/) et le char [LineBreakChar](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreakchar) ont la même valeur.

L'exemple de code suivant montre comment utiliser les caractères de contrôle:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)
