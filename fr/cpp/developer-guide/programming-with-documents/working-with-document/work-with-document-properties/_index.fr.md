---
title: Travailler avec les propriétés du document en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec les propriétés du Document
linktitle: Travailler avec les propriétés du Document
description: "Aspose.Words pour C++ permet de stocker des informations utiles sur votre document, telles que l'API et le numéro de version ou la Date autorisée, dans les propriétés intégrées ou personnalisées du document."
type: docs
weight: 10
url: /fr/cpp/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Les propriétés du document permettent de stocker des informations utiles sur votre document. Ces propriétés peuvent être divisées en deux groupes:

* Système ou intégré contenant des valeurs telles que le titre du document, le nom de l'auteur, les statistiques du document, etc.
* Défini par l'utilisateur ou personnalisé, fourni sous forme de paires nom-valeur où l'utilisateur peut définir à la fois le nom et la valeur.

Il est utile de savoir que les informations sur l'API et le numéro de version sont directement écrites dans les documents de sortie. Par exemple, lors de la conversion d'un document en PDF, Aspose.Words remplit le champ "Application" avec " Aspose.Words" et le champ "PDF Producteur " avec "Aspose.Words pour C++ YY.M. N", où *YY.M.N* est la version de Aspose.Words utilisée pour la conversion. Pour plus de détails, voir [Nom du générateur ou du Producteur Inclus dans les Documents de sortie](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Notez que vous **cannot direct** Aspose.Words pour modifier ou supprimer ces informations des documents de sortie.

{{% /alert %}}

## Accéder aux Propriétés du Document

Pour accéder aux propriétés du document dans Aspose.Words, utilisez:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) pour obtenir des propriétés intégrées.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) pour obtenir des propriétés personnalisées.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

La classe [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) vous permet d'obtenir le nom, la valeur et le type d'une propriété de document. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) renvoie un objet, mais il existe un ensemble de méthodes vous permettant d'obtenir la valeur de la propriété convertie en un type spécifique. Une fois que vous connaissez le type de la propriété, vous pouvez utiliser l'une des méthodes **DocumentProperty.ToXXX**, telles que **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) et **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/), pour obtenir la valeur du type approprié.

L'exemple de code suivant montre comment énumérer toutes les propriétés intégrées et personnalisées dans un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Dans Microsoft Word, vous pouvez accéder aux propriétés du document à l'aide du menu "Fichier → Propriétés".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## Ajouter ou Supprimer des propriétés de Document

Vous ne pouvez pas ajouter ou supprimer des propriétés de document intégrées à l'aide de Aspose.Words. Vous pouvez uniquement modifier ou mettre à jour leurs valeurs.

Pour ajouter des propriétés de document personnalisées avec Aspose.Words, utilisez la méthode [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/), en transmettant le nouveau nom de propriété et la valeur du type approprié. La méthode renvoie l'objet **DocumentProperty** nouvellement créé.

Pour supprimer des propriétés personnalisées, utilisez la méthode [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/), en lui transmettant le nom de la propriété à supprimer, ou la méthode [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/) pour supprimer la propriété par index. Vous pouvez également supprimer toutes les propriétés à l'aide de la méthode [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/).

L'exemple de code suivant vérifie si une propriété personnalisée avec un nom donné existe dans un document et ajoute quelques propriétés de document personnalisées supplémentaires:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

L'exemple de code suivant montre comment supprimer une propriété de document personnalisée:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Mettre À Jour Les Propriétés Intégrées Du Document

Aspose.Words ne met pas automatiquement à jour les propriétés du document, comme Microsoft Word le fait avec certaines propriétés, mais fournit une méthode pour mettre à jour certaines propriétés statistiques intégrées du document. Appelez la méthode [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/) pour recalculer et mettre à jour les propriétés suivantes:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## Créer une Nouvelle Propriété Personnalisée Liée au Contenu

Aspose.Words fournit la méthode [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) pour créer une nouvelle propriété de document personnalisée liée au contenu. Cette propriété renvoie l'objet de propriété nouvellement créé ou null si le [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) n'est pas valide.

L'exemple de code suivant montre comment configurer un lien vers une propriété personnalisée:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Obtenir des Variables de Document

Vous pouvez obtenir une collection de variables de document à l'aide de la propriété [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/). Les noms et les valeurs des variables sont des chaînes.

L'exemple de code suivant montre comment énumérer les variables de document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Supprimer des informations personnelles du Document

Si vous souhaitez partager un document Word avec d'autres personnes, vous souhaiterez peut-être supprimer des informations personnelles telles que le nom de l'auteur et la société. Pour ce faire, utilisez la propriété [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/) pour définir l'indicateur indiquant que Microsoft Word supprimera toutes les informations utilisateur des commentaires, des révisions et des propriétés du document lors de l'enregistrement du document.

L'exemple de code suivant montre comment supprimer des informations personnelles:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

La définition de cette option ne supprime pas réellement les informations personnelles lors du traitement d'un document dans Aspose.Words et affecte uniquement le comportement de Microsoft Word.

{{% /alert %}}
