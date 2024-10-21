---
title: Spécifier les options de chargement en C++
second_title: Aspose.Words pour C++
articleTitle: Spécifier Les Options De Chargement
linktitle: Spécifier Les Options De Chargement
description: "Contrôlez plus précisément le processus de charge."
type: docs
weight: 10
url: /fr/cpp/specify-load-options/
---

Lors du chargement d'un document, vous pouvez définir certaines propriétés avancées. Aspose.Words vous fournit la classe [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/), qui permet un contrôle plus précis du processus de chargement. Certains formats de chargement ont une classe correspondante qui contient des options de chargement pour ce format de chargement, par exemple, il y a [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) pour le chargement au format PDF ou [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) pour le chargement au format TXT. Cet article fournit des exemples d'utilisation des options de la classe **LoadOptions**.

## Définir la version de Microsoft Word pour modifier l'apparence

Différentes versions de l'application Microsoft Word peuvent afficher des documents indifféremment. Par exemple, il existe un problème bien connu avec les documents OOXML tels que DOCX ou DOTX produits à l'aide de WPS Office. Dans ce cas, des éléments de balisage de document essentiels peuvent être manquants ou peuvent être interprétés différemment, ce qui fait que Microsoft Word 2019 affiche un tel document différemment de Microsoft Word 2010.

Par défaut, Aspose.Words ouvre les documents à l'aide des règles Microsoft Word 2019. Si vous devez faire apparaître le chargement du document comme cela se produirait dans l'une des versions précédentes de l'application Microsoft Word, vous devez spécifier explicitement la version souhaitée à l'aide de la propriété [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) de la classe **LoadOptions**.

L'exemple de code suivant montre comment définir la version de Microsoft Word avec des options de chargement:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## Définissez les préférences de langue pour modifier l'apparence

Les détails de l'affichage d'un document dans Microsoft Word dépendent non seulement de la version de l'application et de la valeur de la propriété **MswVersion**, mais également des paramètres de langue. Microsoft Word peut afficher les documents différemment selon les paramètres de la boîte de dialogue "Préférences de langue Office", qui se trouvent dans "Fichier → Options → Langue". En utilisant cette boîte de dialogue, un utilisateur peut sélectionner, par exemple, la langue principale, les langues d'épreuvage, les langues d'affichage,etc. Aspose.Words fournit la propriété [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) comme l'équivalent de cette boîte de dialogue. Si la sortie Aspose.Words diffère de la sortie Microsoft Word, définissez la valeur appropriée pour **EditingLanguage** – cela peut améliorer le document de sortie.

L'exemple de code suivant montre comment définir le japonais sur **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## Utilisez WarningCallback pour Contrôler les Problèmes Lors du Chargement d'un Document

Certains documents peuvent être corrompus, contenir des entrées invalides ou avoir des fonctionnalités non actuellement prises en charge par Aspose.Words. Si vous souhaitez connaître les problèmes survenus lors du chargement d'un document, Aspose.Words fournit l'interface [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/).

L'exemple de code suivant montre l'implémentation de l'interface **IWarningCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

Pour obtenir des informations sur tous les problèmes tout au long du temps de chargement, utilisez la propriété `WarningCallback`.

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## Utilisez ResourceLoadingCallback pour contrôler le chargement des Ressources externes

Un document peut contenir des liens externes vers des images situées quelque part sur un disque local, un réseau ou Internet. Aspose.Words charge automatiquement ces images dans un document, mais il existe des situations où ce processus doit être contrôlé. Par exemple, pour décider si nous devons vraiment charger une certaine image ou peut-être l'ignorer. L'option de chargement ResourceLoadingCallback vous permet de contrôler cela.

L'exemple de code suivant montre l'implémentation de l'interface IResourceLoadingCallback:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

L'exemple de code suivant montre comment utiliser la propriété **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## Utilisez TempFolder pour éviter une exception de mémoire

Aspose.Words prend en charge des documents extrêmement volumineux contenant des milliers de pages pleines de contenu riche. Le chargement de tels documents peut nécessiter beaucoup de RAM. En cours de chargement, Aspose.Words a besoin d'encore plus de mémoire pour contenir les structures temporaires utilisées pour analyser un document.

Si vous rencontrez un problème avec l'exception de mémoire insuffisante lors du chargement d'un document, essayez d'utiliser la propriété [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/). Dans ce cas, Aspose.Words stockera certaines données dans des fichiers temporaires au lieu de la mémoire, ce qui peut aider à éviter une telle exception.

L'exemple de code suivant montre comment définir **TempFolder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## Définir l'encodage Explicitement

La plupart des formats de documents modernes stockent leur contenu en Unicode et ne nécessitent aucune manipulation particulière. D'un autre côté, il existe encore de nombreux documents qui utilisent un codage pré-Unicode et parfois manquent des informations de codage ou ne prennent même pas en charge les informations de codage par nature. Aspose.Words essaie de détecter automatiquement l'encodage approprié par défaut, mais dans de rares cas, vous devrez peut-être utiliser un encodage différent de celui détecté par notre algorithme de reconnaissance d'encodage. Dans ce cas, utilisez la propriété [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/) pour obtenir ou définir l'encodage.

L'exemple de code suivant montre comment définir l'encodage pour remplacer l'encodage choisi automatiquement:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## Charger Des Documents Chiffrés

Vous pouvez charger des documents Word cryptés avec un mot de passe. Pour ce faire, utilisez une surcharge de constructeur spéciale, qui accepte un objet [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/). Cet objet contient la propriété [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/), qui spécifie la chaîne de mot de passe.

L'exemple de code suivant montre comment charger un document chiffré avec un mot de passe:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

Si vous ne savez pas à l'avance si le fichier est crypté, vous pouvez utiliser la classe [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/), qui fournit des méthodes utilitaires pour travailler avec les formats de fichiers, telles que la détection du format de fichier ou la conversion des extensions de fichier vers/depuis des énumérations de format de fichier. Pour détecter si le document est chiffré et nécessite un mot de passe pour l'ouvrir, utilisez la propriété `IsEncrypted`.

L'exemple de code suivant montre comment vérifier OpenDocument s'il est chiffré ou non:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
