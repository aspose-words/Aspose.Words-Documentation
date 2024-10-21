---
title: Détecter le format de fichier lors du chargement
second_title: Aspose.Words pour .NET
articleTitle: Détecter le format de fichier et vérifier la compatibilité des formats
linktitle: Détecter le format de fichier et vérifier la compatibilité des formats
description: "Déterminez le format de fichier dans C# si vous n'êtes pas sûr du contenu réel du fichier ou pour vérifier la compatibilité du format."
type: docs
weight: 20
url: /fr/net/detect-file-format-and-check-format-compatibility/
---

Parfois, il est nécessaire de déterminer le format d'un document avant de l'ouvrir car l'extension du fichier ne garantit pas que le contenu du fichier soit approprié. Par exemple, on sait que Crystal Reports génère souvent des documents au format RTF, mais leur donne l'extension .doc.

Aspose.Words offre la possibilité d'obtenir des informations sur le type de fichier afin d'éviter une exception si vous n'êtes pas sûr du contenu réel du fichier.

## Détecter le format de fichier sans exception

Lorsque vous traitez plusieurs documents dans différents formats de fichiers, vous devrez peut-être séparer les fichiers qui peuvent être traités par Aspose.Words de ceux qui ne le peuvent pas. Vous voudrez peut-être également savoir pourquoi certains documents ne peuvent pas être traités.

Si vous essayez de charger un fichier dans un objet [Document](https://reference.aspose.com/words/fr/net/aspose.words/document/) et que Aspose.Words ne peut pas reconnaître le format de fichier ou que le format n'est pas pris en charge, Aspose.Words lèvera une exception. Vous pouvez détecter ces exceptions et les analyser, mais Aspose.Words fournit également la méthode [DetectFileFormat](https://reference.aspose.com/words/fr/net/aspose.words/fileformatutil/detectfileformat/) qui nous permet de déterminer rapidement le format de fichier sans charger un document avec d'éventuelles exceptions. Cette méthode renvoie un objet [FileFormatInfo](https://reference.aspose.com/words/fr/net/aspose.words/fileformatinfo/) qui contient les informations détectées sur le type de fichier.

{{% alert color="primary" %}}

DetectFileFormat vérifie uniquement le format de fichier mais ne valide pas le format de fichier. Il n'y a aucune garantie que le fichier sera ouvert avec succès, même si **DetectFileFormat** renvoie qu'il s'agit de l'un des formats pris en charge. En effet, la méthode **DetectFileFormat** ne lit que des données partielles sur le format de fichier, suffisantes pour vérifier le format de fichier, mais pas suffisantes pour une validation complète.

{{% /alert %}}

## Vérifier la compatibilité des formats de fichiers

Nous pouvons vérifier la compatibilité des formats de tous les fichiers du dossier sélectionné et les trier par format dans les sous-dossiers correspondants.

Puisque nous traitons du contenu d'un dossier, la première chose à faire est d'obtenir une collection de tous les fichiers de ce dossier en utilisant la méthode **GetFiles** de la classe `Directory` (à partir de l'espace de noms `System.IO`).

L'exemple de code suivant montre comment obtenir une liste de tous les fichiers du dossier:

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "get-files-in-folder.cs" >}}

Lorsque tous les fichiers sont collectés, le reste du travail est effectué par la méthode **DetectFileFormat**, qui vérifie le format du fichier.

L'exemple de code suivant montre comment parcourir la liste de fichiers collectée, vérifier le format de chaque fichier et déplacer chaque fichier vers le dossier approprié:

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "check-format-compatibility.cs" >}}

Les fichiers sont déplacés vers des sous-dossiers appropriés à l'aide de la méthode `Move` de la classe `File`, à partir du même espace de noms `System.IO`.

Les fichiers suivants sont utilisés dans l'exemple ci-dessus. Le nom du fichier est à gauche et sa description est à droite:

| Group de fichiers | Document d'entrée | Taper |
|  :-  |  :-  |  :-  |
| Formats de fichiers pris en charge | Fichier de test (Doc).doc|Document Microsoft Word 95/6.0 ou Microsoft Word 97 – 2003. |
|  | Fichier de test (`Dot`).dot | Modèle Microsoft Word 95/6.0 ou Microsoft Word 97 – 2003. |
|  | Fichier de test (Docx).docx | Document Office Open XML WordprocessingML sans macros. |
|  | Fichier de test (Docm).docm | Document Office Open XML WordprocessingML avec macros. |
|  | Fichier de test (Dotx).dotx | Modèle Office Open XML WordprocessingML. |
|  | Fichier de test (Dotm).dotm | Modèle Office Open XML WordprocessingML avec macros. |
|  | Fichier de test (XML).xml | Document FlatOPC OOXML. |
|  | Fichier de test (RTF).rtf | Document au format texte enrichi. |
|  | Fichier de test (WordML).xml | Document WordprocessingML Microsoft Word 2003. |
|  | Fichier de test (HTML).html | Document HTML. |
|  | Fichier de test (MHTML).mhtml | Document MHTML (archive Web). |
|  | Fichier de test (Odt).odt | Texte OpenDocument (OpenOffice Writer). |
|  | Fichier de test (Ott).ott | Modèle de document OpenDocument. |
|  | Fichier de test (DocPreWord60).doc|Document Microsoft Word 2.0. |
| Documents cryptés | Fichier de test (Enc).doc|Document crypté Microsoft Word 95/6.0 ou Microsoft Word 97 – 2003. |
|  | Fichier de test (Enc).docx | Document Office Open XML WordprocessingML crypté. |
| Formats de fichiers non pris en charge | Fichier de test (JPG).jpg | Fichier image JPEG. |

