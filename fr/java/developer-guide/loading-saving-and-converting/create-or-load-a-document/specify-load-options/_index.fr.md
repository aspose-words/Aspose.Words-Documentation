---
title: Spécifiez les options de chargement dans Java
second_title: Aspose.Words pour Java
articleTitle: Spécifier Les Options De Chargement
linktitle: Spécifier Les Options De Chargement
description: "Définissez des propriétés avancées lors du chargement d'un document à l'aide de Java pour obtenir un contrôle plus précis du processus."
type: docs
weight: 10
url: /fr/java/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

Lors du chargement d'un document, vous pouvez définir certaines propriétés avancées. Aspose.Words vous fournit la classe [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/), qui permet un contrôle plus précis du processus de chargement. Certains formats de chargement ont une classe correspondante qui contient des options de chargement pour ce format de chargement, par exemple, il y a [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) pour le chargement au format PDF ou [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) pour le chargement au format TXT. Cet article fournit des exemples d'utilisation des options de la classe **LoadOptions**.

## Définissez Microsoft Word Version pour modifier l'apparence

Différentes versions de l'application Microsoft Word peuvent afficher les documents différemment. Par exemple, il existe un problème bien connu avec OOXML documents tels que DOCX ou DOTX produits à l'aide de WPS Office. Dans de tels cas, des éléments de balisage essentiels du document peuvent être manquants ou peuvent être interprétés différemment, ce qui fait que Microsoft Word 2019 affiche un tel document différemment de Microsoft Word 2010.

Par défaut, Aspose.Words ouvre les documents en utilisant les règles Microsoft Word 2019. Si vous avez besoin de faire apparaître le chargement du document comme cela se produirait dans l'une des versions précédentes de l'application Microsoft Word, vous devez spécifier explicitement la version souhaitée à l'aide de la propriété [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) de la classe **LoadOptions**.

L'exemple de code suivant montre comment définir la version Microsoft Word avec des options de chargement:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Définissez les préférences de langue pour modifier l'apparence

Les détails de l'affichage d'un document dans Microsoft Word dépendent non seulement de la version de l'application et de la valeur de la propriété **MswVersion**, mais également des paramètres de langue. Microsoft Word peut afficher les documents différemment selon les paramètres de la boîte de dialogue" Préférences linguistiques du bureau", qui se trouvent dans "Fichier → Options → Langue". En utilisant cette boîte de dialogue, un utilisateur peut sélectionner, par exemple, la langue principale, les langues d'épreuvage, les langues d'affichage,etc. Aspose.Words fournit la propriété [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) comme l'équivalent de cette boîte de dialogue. Si la sortie Aspose.Words diffère de la sortie Microsoft Word, définissez la valeur appropriée pour **EditingLanguage** – cela peut améliorer le document de sortie.

L'exemple de code suivant montre comment définir le japonais sur **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Utilisez WarningCallback pour Contrôler les Problèmes Lors du Chargement d'un Document

Certains documents peuvent être corrompus, contenir des entrées invalides ou avoir des fonctionnalités non actuellement prises en charge par Aspose.Words. Si vous souhaitez connaître les problèmes survenus lors du chargement d'un document, Aspose.Words fournit l'interface [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/).

L'exemple de code suivant montre l'implémentation de l'interface **IWarningCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Pour obtenir des informations sur tous les problèmes tout au long du temps de chargement, utilisez la propriété [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback).

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Utilisez ResourceLoadingCallback pour contrôler le chargement des Ressources externes

Un document peut contenir des liens externes vers des images situées quelque part sur un disque local, un réseau ou Internet. Aspose.Words charge automatiquement ces images dans un document, mais il existe des situations où ce processus doit être contrôlé. Par exemple, pour décider si nous devons vraiment charger une certaine image ou peut-être l'ignorer. L'option de chargement [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) vous permet de contrôler cela.

L'exemple de code suivant montre l'implémentation de l'interface [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

L'exemple de code suivant montre comment utiliser la propriété **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Utilisez TempFolder pour éviter une exception de mémoire

Aspose.Words prend en charge des documents extrêmement volumineux contenant des milliers de pages pleines de contenu riche. Le chargement de tels documents peut nécessiter beaucoup de RAM. En cours de chargement, Aspose.Words a besoin d'encore plus de mémoire pour contenir les structures temporaires utilisées pour analyser un document.

Si vous rencontrez un problème avec l'exception de mémoire insuffisante lors du chargement d'un document, essayez d'utiliser la propriété [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder). Dans ce cas, Aspose.Words stockera certaines données dans des fichiers temporaires au lieu de la mémoire, ce qui peut aider à éviter une telle exception.

L'exemple de code suivant montre comment définir **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Définir l'encodage Explicitement

La plupart des formats de documents modernes stockent leur contenu en Unicode et ne nécessitent aucune manipulation particulière. D'un autre côté, il existe encore de nombreux documents qui utilisent un codage pré-Unicode et parfois manquent des informations de codage ou ne prennent même pas en charge les informations de codage par nature. Aspose.Words essaie de détecter automatiquement l'encodage approprié par défaut, mais dans de rares cas, vous devrez peut-être utiliser un encodage différent de celui détecté par notre algorithme de reconnaissance d'encodage. Dans ce cas, utilisez la propriété [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) pour obtenir ou définir l'encodage.

L'exemple de code suivant montre comment définir l'encodage pour remplacer l'encodage choisi automatiquement:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Charger Des Documents Chiffrés

Vous pouvez charger des documents Word cryptés avec un mot de passe. Pour ce faire, utilisez une surcharge de constructeur spéciale, qui accepte un objet [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/). Cet objet contient la propriété [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword), qui spécifie la chaîne de mot de passe.

L'exemple de code suivant montre comment charger un document chiffré avec un mot de passe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Si vous ne savez pas à l'avance si le fichier est crypté, vous pouvez utiliser la classe [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/), qui fournit des méthodes utilitaires pour travailler avec les formats de fichiers, telles que la détection du format de fichier ou la conversion des extensions de fichier vers/depuis des énumérations de format de fichier. Pour détecter si le document est chiffré et nécessite un mot de passe pour l'ouvrir, utilisez la propriété [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted).

L'exemple de code suivant montre comment vérifier OpenDocument s'il est chiffré ou non:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
