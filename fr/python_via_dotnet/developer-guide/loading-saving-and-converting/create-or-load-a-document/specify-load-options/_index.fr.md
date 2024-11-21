---
title: Spécifier les options de chargement dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Spécifier les options de chargement
linktitle: Spécifier les options de chargement
description: "Contrôlez plus précisément le processus de chargement à l'aide de Python."
type: docs
weight: 10
url: /fr/python-net/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

Lors du chargement d'un document, vous pouvez définir certaines propriétés avancées. Aspose.Words vous fournit la classe [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/), qui permet un contrôle plus précis du processus de chargement. Certains formats de chargement ont une classe correspondante qui contient les options de chargement pour ce format de chargement, par exemple, il existe [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) pour le chargement au format PDF ou [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) pour le chargement au format TXT. Cet article fournit des exemples d'utilisation des options de la classe [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

## Définir la version Microsoft Word pour modifier l'apparence

Différentes versions de l'application Microsoft Word peuvent afficher les documents différemment. Par exemple, il existe un problème bien connu avec les documents OOXML tels que DOCX ou DOTX produits à l'aide de WPS Office. Dans ce cas, des éléments essentiels de balisage du document peuvent être manquants ou être interprétés différemment, ce qui amène Microsoft Word 2019 à afficher un tel document différemment par rapport à Microsoft Word 2010.

Par défaut, Aspose.Words ouvre les documents en utilisant les règles Microsoft Word 2019. Si vous devez faire apparaître le chargement du document comme il se produirait dans l'une des versions précédentes de l'application Microsoft Word, vous devez spécifier explicitement la version souhaitée à l'aide de la propriété [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) de la classe [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

L'exemple de code suivant montre comment définir la version Microsoft Word avec les options de chargement:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Définir les préférences de langue pour modifier l'apparence

Les détails de l'affichage d'un document dans Microsoft Word dépendent non seulement de la version de l'application et de la valeur de la propriété [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/), mais également des paramètres de langue. Microsoft Word peut afficher les documents différemment en fonction des paramètres de la boîte de dialogue "Préférences de langue Office", disponibles dans "Fichier → Options → Langue". À l'aide de cette boîte de dialogue, un utilisateur peut sélectionner, par exemple, la langue principale, les langues de vérification, les langues d'affichage, etc. Aspose.Words fournit la propriété [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) comme équivalent de cette boîte de dialogue. Si la sortie Aspose.Words diffère de la sortie Microsoft Word, définissez la valeur appropriée pour [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) – cela peut améliorer le document de sortie.

L'exemple de code suivant montre comment définir le japonais comme [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Utilisez TempFolder pour éviter une exception de mémoire

Aspose.Words prend en charge des documents extrêmement volumineux contenant des milliers de pages remplies de contenu riche. Le chargement de tels documents peut nécessiter beaucoup de RAM. Lors du processus de chargement, Aspose.Words a besoin d'encore plus de mémoire pour contenir les structures temporaires utilisées pour analyser un document.

Si vous rencontrez un problème avec l'exception de mémoire insuffisante lors du chargement d'un document, essayez d'utiliser la propriété [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/). Dans ce cas, Aspose.Words stockera certaines données dans des fichiers temporaires plutôt que dans la mémoire, ce qui peut aider à éviter une telle exception.

L'exemple de code suivant montre comment définir [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Définir l'encodage explicitement

La plupart des formats de documents modernes stockent leur contenu au format Unicode et ne nécessitent aucune manipulation particulière. D'un autre côté, de nombreux documents utilisent encore un certain codage pré-Unicode et parfois, soit ils manquent d'informations de codage, soit ne prennent même pas en charge les informations de codage par nature. Aspose.Words essaie de détecter automatiquement l'encodage approprié par défaut, mais dans de rares cas, vous devrez peut-être utiliser un encodage différent de celui détecté par notre algorithme de reconnaissance d'encodage. Dans ce cas, utilisez la propriété [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) pour obtenir ou définir l'encodage.

L'exemple de code suivant montre comment définir l'encodage pour remplacer l'encodage choisi automatiquement:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Charger des documents cryptés

Vous pouvez charger des documents Word cryptés avec un mot de passe. Pour ce faire, utilisez une surcharge de constructeur spéciale, qui accepte un objet [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Cet objet contient la propriété [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), qui spécifie la chaîne du mot de passe.

L'exemple de code suivant montre comment charger un document chiffré avec un mot de passe:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Si vous ne savez pas à l'avance si le fichier est crypté, vous pouvez utiliser la classe [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/), qui fournit des méthodes utilitaires pour travailler avec les formats de fichiers, telles que la détection du format de fichier ou la conversion des extensions de fichier vers/à partir d'énumérations de formats de fichiers. Pour détecter si le document est crypté et nécessite un mot de passe pour l'ouvrir, utilisez la propriété [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/).

L'exemple de code suivant montre comment vérifier qu'un document est chiffré ou non:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
