---
title: Manipuler et remplacer les polices TrueType en C++
second_title: Aspose.Words pour C++
articleTitle: Manipuler et remplacer les polices TrueType
linktitle: Manipuler et remplacer les polices TrueType
description: "Aspose.Words pour C++ peut incorporer les polices TrueType correctes dans le document résultant pour s'assurer qu'il s'affiche avec précision. Si une police ou un caractère spécifique n'est pas disponible, Aspose.Words recherche une police de remplacement appropriée ou utilise le mécanisme de remplacement de police."
type: docs
weight: 10
url: /fr/cpp/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words nécessite TrueType polices pour une variété de tâches, y compris le rendu de documents dans des formats de page fixe, par exemple, PDF ou XPS. Lorsque Aspose.Words rend un document, il doit effectuer l'incorporation et l'incorporation de sous-ensembles de polices TrueType dans le document résultant, ce qui est une pratique normale lors d'une génération de document, y compris les formats populaires PDF ou XPS. Cela garantit que le document apparaîtra de la même manière à n'importe quel visualiseur. De plus, la spécification XPS exige que les polices soient toujours intégrées dans le document.

Pour garantir que Aspose.Words mesure avec précision les caractères et intègre avec succès les polices pertinentes, les conditions suivantes doivent être remplies:

1. Aspose.Words devrait pouvoir trouver et accéder aux fichiers de polices TrueType sur le système.
1. Il doit y avoir suffisamment de polices TrueType disponibles pour Aspose.Words, de préférence avec les mêmes noms de famille de polices que ceux utilisés dans le document.

Notez que la police dans le document représente une entité, telle que le nom de famille, le style, la taille, la couleur, qui est différente de l'entité `TrueType` font (police physique). Aspose.Words résout la police du document en une police physique à un certain stade du traitement. Cela permet certaines tâches, le plus souvent la tâche de calculer la taille du texte lors de la construction de la mise en page et de l'incorporation/sous-ensemble dans des formats de page fixes. Un certain nombre d'autres tâches moins courantes, telles que la résolution et la substitution de polices lors du chargement de HTML ou l'incorporation/sous-ensemble dans certains formats de flux, sont également activées.

## Où Aspose.Words Recherche les polices

Aspose.Words tente de trouver automatiquement TrueType polices sur le système de fichiers. Habituellement, vous pouvez compter sur le comportement par défaut de Aspose.Words pour trouver les polices `TrueType`, mais parfois vous devez spécifier vos propres dossiers contenant les polices TrueType. Les [Spécifiez l'emplacement des polices TrueType ](/words/cpp/specify-truetype-fonts-location/) la rubrique décrit comment et où Aspose.Words recherche les polices, ainsi que comment spécifier vos propres emplacements de police.

## Différences dans le traitement des formats de police dans Aspose.Words et Microsoft Word

Il existe quelques différences dans le traitement des formats de police dans Aspose.Words et Microsoft Word, comme indiqué dans le tableau ci-dessous:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType polices et OpenType polices avec TrueType contours | Soutenu. | Soutenu. |
| OpenType polices avec PostScript contours | Pris en charge pour la plupart des scénarios. L'incorporation dans des formats de page fixe tels que PDF et XPS n'est pas prise en charge. Le texte est remplacé par des images bitmap. | Pris en charge pour la plupart des scénarios, y compris l'incorporation dans des formats de pages fixes. |
| OpenType Variations de polices | Seules les instances nommées sont prises en charge. Variations continues non prises en charge. | Pris en charge pour la seule instance par défaut. Les instances nommées et les variations continues ne sont pas prises en charge. |
| Polices de Type1 | Pris en charge sur Windows versions antérieures à 2013 et sur les versions macOS. Le support est supprimé sur les versions Windows à partir de 2013. | Non pris en charge. |


