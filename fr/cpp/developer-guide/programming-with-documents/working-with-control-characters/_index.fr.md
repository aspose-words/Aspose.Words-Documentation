---
title: Utilisation Des Caractères De Contrôle
second_title: Aspose.Words pour C++
articleTitle: Utilisation Des Caractères De Contrôle
linktitle: Utilisation Des Caractères De Contrôle
description: "Introduction à l'utilisation des caractères de contrôle dans Aspose.Words pour C++."
type: docs
weight: 400
url: /fr/cpp/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Les documents Microsoft Word peuvent contenir divers caractères qui ont une signification particulière. Normalement, ils sont utilisés à des fins de formatage et ne sont pas dessinés en mode normal. Vous pouvez les rendre visibles en cliquant sur le bouton Afficher / Masquer les marques de mise en forme situé dans la barre d'outils standard.

Parfois, vous devrez peut-être ajouter ou supprimer des caractères dans/du texte. Par exemple, lors de l'obtention de texte par programme à partir du document, Aspose.Words préserve la plupart des caractères de contrôle, donc si vous avez besoin de travailler avec ce texte, vous devriez probablement supprimer ou remplacer les caractères.

La classe [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) est un référentiel pour les constantes qui représentent les caractères de contrôle souvent rencontrés dans les documents. Il fournit à la fois des versions char et string des mêmes constantes. Par exemple, string [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) et char **ControlChar.LineBreakChar** ont la même valeur.

L'exemple de code suivant montre comment utiliser les caractères de contrôle:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}
