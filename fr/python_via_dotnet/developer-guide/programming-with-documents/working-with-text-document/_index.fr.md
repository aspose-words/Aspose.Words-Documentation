---
title: Travailler avec un document texte
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec un document texte
linktitle: Travailler avec un document texte
description: "Travaillez avec un document texte et modifiez ses objets à l'aide de Python."
type: docs
weight: 430
url: /fr/python-net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

Dans cet article, nous apprendrons quelles options peuvent être utiles pour travailler avec un document texte via Aspose.Words. Veuillez noter qu'il ne s'agit pas d'une liste complète des options disponibles, mais seulement d'un exemple de travail avec certaines d'entre elles.

## Ajouter des marques bidirectionnelles

Vous pouvez utiliser la propriété [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) pour spécifier s'il convient d'ajouter des marques bidirectionnelles avant chaque exécution de BiDi lors de l'exportation au format texte brut. Aspose.Words insère le caractère Unicode "MARQUE DE DROITE À GAUCHE" (U+200F) avant chaque [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) bidirectionnel dans le texte. Cette option correspond à l'option "Ajouter des marques bidirectionnelles" dans la boîte de dialogue Conversion de fichier MS Word lorsque vous exportez au format texte brut. Notez qu'il apparaît dans le dialogue uniquement si l'une des langues d'édition arabe ou hébraïque est ajoutée dans MS Word.

L'exemple de code suivant montre comment utiliser la propriété [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/). La valeur par défaut de cette propriété est `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Reconnaître les éléments de la liste lors du chargement de TXT

Aspose.Words peut importer un élément de liste d'un fichier texte sous forme de numéros de liste ou de texte brut dans son modèle objet de document. La propriété [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) permet de spécifier comment les éléments de liste numérotés sont reconnus lorsqu'un document est importé à partir du format texte brut:

* Si cette option est définie sur `True`, les espaces sont également utilisés comme délimiteurs de numéros de liste: l'algorithme de reconnaissance de liste pour la numérotation de style arabe (1., 1.1.2.) utilise à la fois les espaces et les symboles point ("").
* Si cette option est définie sur `False`, l'algorithme de reconnaissance des listes détecte les paragraphes de la liste lorsque les numéros de liste se terminent par un point, un crochet droit ou des puces (tels que "•", "*", "-" ou "o").

L'exemple de code suivant montre comment utiliser cette propriété:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Gérer les espaces de début et de fin pendant le chargement de TXT

Vous pouvez contrôler la manière de gérer les espaces de début et de fin lors du chargement du fichier TXT. Les espaces de début peuvent être coupés, conservés ou convertis en retrait et les espaces de fin peuvent être coupés ou conservés.

L'exemple de code suivant montre comment supprimer les espaces de début et de fin lors de l'importation d'un fichier TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Détecter la direction du texte du document

Aspose.Words fournit la propriété [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) dans la classe [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) pour détecter la direction du texte (RTL/LTR) dans le document. Cette propriété définit ou obtient les instructions de texte du document fournies dans l'énumération [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/). La valeur par défaut est de gauche à droite.

L'exemple de code suivant montre comment détecter la direction du texte du document lors de l'importation du fichier TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Exporter l'en-tête et le pied de page dans la sortie TXT

Si vous souhaitez exporter l'en-tête et le pied de page dans le document TXT de sortie, vous pouvez utiliser la propriété [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/). Cette propriété spécifie la manière dont les en-têtes et les pieds de page sont exportés au format texte brut.

L'exemple de code suivant montre comment exporter les en-têtes et les pieds de page au format texte brut:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## Exporter l'indentation de la liste dans la sortie TXT

Aspose.Words a introduit la classe [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) qui permet de spécifier la manière dont les niveaux de liste sont indentés lors de l'exportation au format texte brut. Lorsque vous travaillez avec [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/), la propriété [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) est fournie pour spécifier le caractère à utiliser pour l'indentation des niveaux de liste et le nombre spécifiant le nombre de caractères à utiliser comme indentation pour un niveau de liste. La valeur par défaut de la propriété caractère est "\0", indiquant qu'il n'y a pas d'indentation. Pour la propriété count, la valeur par défaut est 0, ce qui signifie aucune indentation.

### Utilisation du caractère de tabulation

L'exemple de code suivant montre comment exporter des niveaux de liste à l'aide de caractères de tabulation:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Utiliser le caractère espace

L'exemple de code suivant montre comment exporter des niveaux de liste à l'aide de caractères d'espace:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

