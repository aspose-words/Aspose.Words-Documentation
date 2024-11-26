---
title: Travailler avec les propriétés du document
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec les propriétés du document
linktitle: Travailler avec les propriétés du document
description: "Aspose.Words pour Python permet de stocker certaines informations utiles sur votre document, telles que API et le numéro de version ou Date autorisé, dans les propriétés de document intégrées ou personnalisées."
type: docs
weight: 10
url: /fr/python-net/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Les propriétés du document permettent de stocker des informations utiles sur votre document. Ces propriétés peuvent être divisées en deux groupes:

* Système ou intégré contenant des valeurs telles que le titre du document, le nom de l'auteur, les statistiques du document, etc.
* Défini par l'utilisateur ou personnalisé, fourni sous forme de paires nom-valeur où l'utilisateur peut définir à la fois le nom et la valeur.

Il est utile de savoir que les informations sur API et le numéro de version sont directement écrites dans les documents de sortie. Par exemple, lors de la conversion d'un document en PDF, Aspose.Words remplit le champ "Application" avec "Aspose.Words" et le champ "PDF Producer" avec "Aspose.Words pour .NET YY.MN", où *YY.M.N* est la version de Aspose.Words utilisée pour la conversion.. Pour plus de détails, consultez [Nom du générateur ou du producteur inclus dans les documents de sortie](/words/fr/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Notez que vous devez **ne peut pas diriger** Aspose.Words pour modifier ou supprimer ces informations des documents de sortie.

{{% /alert %}}

## Accéder aux propriétés du document

Pour accéder aux propriétés du document dans Aspose.Words, utilisez:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) pour obtenir les propriétés intégrées.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) pour obtenir des propriétés personnalisées.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) et [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) sont des collections d'objets [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/). Ces objets peuvent être obtenus via la propriété indexeur par nom ou par index.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) fournit en outre un accès aux propriétés du document via un ensemble de propriétés saisies qui renvoient des valeurs du type approprié. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) vous permet d'ajouter ou de supprimer des propriétés de document d'un document.

La classe [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) vous permet d'obtenir le nom, la valeur et le type d'une propriété de document. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) renvoie un objet, mais il existe un ensemble de méthodes vous permettant de convertir la valeur de la propriété en un type spécifique. Une fois que vous savez de quel type est la propriété, vous pouvez utiliser l'une des méthodes **DocumentProperty.to_XXX**, telles que **DocumentProperty.\_\_str\_\_** et [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), pour obtenir la valeur du type approprié.

L'exemple de code suivant montre comment énumérer toutes les propriétés intégrées et personnalisées dans un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Dans Microsoft Word, vous pouvez accéder aux propriétés du document en utilisant le menu "Fichier → Propriétés".

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="travailler avec-document-properties-1.png" style="width:400px"/>

## Ajouter ou supprimer des propriétés de document

Vous ne pouvez pas ajouter ou supprimer des propriétés de document intégrées à l'aide de Aspose.Words. Vous pouvez uniquement modifier ou mettre à jour leurs valeurs.

Pour ajouter des propriétés de document personnalisées avec Aspose.Words, utilisez la méthode [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/), en transmettant le nouveau nom de propriété et la valeur du type approprié. La méthode renvoie l'objet [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) nouvellement créé.

Pour supprimer des propriétés personnalisées, utilisez la méthode [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/), en lui transmettant le nom de la propriété à supprimer, ou la méthode [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) pour supprimer la propriété par index. Vous pouvez également supprimer toutes les propriétés à l'aide de la méthode [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/).

L'exemple de code suivant vérifie si une propriété personnalisée portant un nom donné existe dans un document et ajoute quelques propriétés de document personnalisées supplémentaires:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

L'exemple de code suivant montre comment supprimer une propriété de document personnalisée:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Mettre à jour les propriétés du document intégré

Aspose.Words ne met pas automatiquement à jour les propriétés du document, comme Microsoft Word le fait avec certaines propriétés, mais fournit une méthode pour mettre à jour certaines propriétés statistiques intégrées du document. Appelez la méthode [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) pour recalculer et mettre à jour les propriétés suivantes:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Créer une nouvelle propriété personnalisée liée au contenu

Aspose.Words fournit la méthode [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) pour créer une nouvelle propriété de document personnalisée liée au contenu. Cette propriété renvoie l'objet de propriété nouvellement créé ou null si le **lien_source** n'est pas valide.

L'exemple de code suivant montre comment configurer un lien vers une propriété personnalisée:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Obtenir les variables du document

Vous pouvez obtenir une collection de variables de document à l'aide de la propriété [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/). Les noms et valeurs des variables sont des chaînes.

L'exemple de code suivant montre comment ajouter et accéder aux variables de document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Supprimer les informations personnelles du document

Si vous souhaitez partager un document Word avec d'autres personnes, vous souhaiterez peut-être supprimer des informations personnelles telles que le nom de l'auteur et l'entreprise. Pour ce faire, utilisez la propriété [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) pour définir l'indicateur indiquant que Microsoft Word supprimera toutes les informations utilisateur des commentaires, des révisions et des propriétés du document lors de l'enregistrement du document.

L'exemple de code suivant montre comment supprimer des informations personnelles:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

La définition de cette option ne supprime pas réellement les informations personnelles lors du traitement d'un document dans Aspose.Words et affecte uniquement le comportement de Microsoft Word.

{{% /alert %}}
