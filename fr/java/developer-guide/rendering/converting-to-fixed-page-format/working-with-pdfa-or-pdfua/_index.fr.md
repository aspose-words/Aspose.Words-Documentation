---
title: Travailler avec PDF/A ou PDF/UA
second_title: Aspose.Words pour Java
articleTitle: Travailler avec PDF/A ou PDF/UA
linktitle: Travailler avec PDF/A ou PDF/UA
description: "Convertir en PDF/A-1, PDF/A-2, PDF/A-4 et PDF/UA en utilisant Java. Il y a quelques problèmes lors de la conversion en documents PDF/A, et Aspose.Words pour Java Ça les résout."
type: docs
weight: 28
url: /fr/java/working-with-pdfa-or-pdfua/
---

Le format PDF/A et PDF/UA impose plusieurs exigences liées au contenu du document qui ne peuvent pas être remplies lors de la conversion automatique d'un document en format Word au format PDF. Ces exigences devraient être vérifiées et corrigées soit dans un document Word avant la conversion, soit dans un document PDF après la conversion, afin de produire un document entièrement conforme PDF/A et PDF/UA.

Les exigences de base sont pour la structure ou les polices d'un document PDF/A et PDF/UA, que nous examinerons dans les sections suivantes.

{{% alert color="primary" %}}

Veuillez noter que la sortie PDF/UA-1 sera également conforme aux normes WCAG 2.0 et 508.

{{% /alert %}}

## Exigences relatives à la structure des documents

Les exigences actuelles sont pour les formats PDF/A-1a, PDF/A-2a, PDF/A-4 et PDF/UA-1.

Il y a quelques nuances de comment Aspose.Words fonctionne lors de la conversion à divers standards de format PDF. Ils doivent être pris en compte si vous voulez obtenir le résultat attendu.

{{% alert color="primary" %}}

Il est à noter qu'il n'existe aucune exigence de structure logique pour PDF/A-4. Pour cette raison, nous ne considérons pas la version PDF/A-4 dans cette section "Exigences relatives à la structure des documents".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (pour plus de détails):</summary>
    <p></p>
    <p>Il est inopportun pour les auteurs de générer des informations structurelles ou sémantiques en utilisant des processus automatisés sans vérification appropriée.</p>
    <p>ISO 1905-2, 6.7.1</p>
</details>
{{% /alert %}}

Les sous-sections ci-dessous décrivent les nuances Aspose.Words fonctionne lors de la conversion à divers standards et options de format PDF pour leur solution.

### Type de structure

|  Niveaux de conformité standard PDF Aspose.Words |  Présence d ' une prescription |
|  --------------------------------------------------  |  -----------------------  |
|  Annexe |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Un document PDF est une séquence de blocs tels que des titres, des paragraphes, des tableaux, etc. Ces blocs forment une structure de document – forte ou faible.

Les structures fortes et faibles sont valables pour PDF/A. Microsoft Word les documents ont une structure faible par conception, et Aspose.Words crée un PDF avec la structure faible respectivement et génère également des en-têtes selon les niveaux de contour des paragraphes du document source.

Pour un document PDF/UA-1 avec une structure faible, il est en outre nécessaire que les numéros de cap s'ajustent sans discontinuité.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (pour plus de détails):</summary>
    <p></p>
    <p>La structure au niveau des blocs peut suivre l'un des deux paradigmes principaux:</p>
    </ol>
      <li>Fortement structuré. Les éléments de regroupement se situent à autant de niveaux que nécessaire pour refléter l'organisation du matériel en articles, sections, sous-sections, etc. À chaque niveau, les enfants de l'élément de regroupement devraient comprendre une rubrique (H), un ou plusieurs alinéas (P) pour le contenu à ce niveau, et peut-être un ou plusieurs autres éléments de regroupement pour les sous-sections imbriquées.</li>
      <li>Faiblement structuré. Le document est relativement plat, n'ayant peut-être qu'un ou deux niveaux d'éléments de regroupement, avec tous les titres, paragraphes et autres BLSE comme enfants immédiats. Dans ce cas, l'organisation du matériel n'est pas reflétée dans la structure logique; toutefois, elle peut être exprimée par l'utilisation de rubriques avec des niveaux spécifiques (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Pour les documents PDF/UA-1, la spécification contient un ajout relatif aux niveaux de rubrique (pour plus de détails):</summary>
    <p></p>
    <p>Si la sémantique des documents nécessite une séquence descendante d'en-têtes, cette séquence doit se dérouler dans un ordre numérique strict et ne doit pas sauter un niveau de cap intermédiaire. H1 H2 H3 est admissible, alors que H1 H3 ne l ' est pas.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Pour assurer une sortie correcte, les utilisateurs doivent s'assurer que le contenu du document source est correctement organisé et que les niveaux d'esquisse sont correctement spécifiés pour les paragraphes. Sinon, l'utilisateur devrait vérifier et fixer la structure du document PDF de sortie.

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: Microsoft Word ou vérifiez et fixez la structure du document PDF de sortie (expand pour voir les détails).</summary>
    <p></p>
    <p>En Microsoft Word Par défaut, les styles "Heading X" pourraient être utilisés pour définir le niveau de contour:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>De plus, le niveau de l'esquisse pourrait être vérifié ou modifié dans la fenêtre "Paragraphe":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>Dans Acrobat, la structure du document pourrait être vérifiée ou modifiée dans le volet "Tags":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Marquage du contenu comme artéfact

|  Niveaux de conformité standard PDF Aspose.Words |  Présence d ' une prescription |
|  --------------------------------------------------  |  -----------------------  |
|  Annexe |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Pour le moment, Aspose.Words marque les en-têtes de page et les pied de page, les séparateurs de note, les cellules d'en-tête de table répétées et les images décoratives comme artefacts. Veuillez noter que cette liste pourra être mise à jour à l'avenir.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (pour plus de détails):</summary>
    <p></p>
    <p>Les objets graphiques d'un document peuvent être divisés en deux classes:</p>
    </ol>
      <li>Le contenu réel d'un document comprend des objets représentant du matériel initialement introduit par l'auteur du document.</li>
      <li>Les artefacts sont des objets graphiques qui ne font pas partie du contenu original de l'auteur, mais sont plutôt générés par l'auteur conforme au cours de la pagination, la mise en page, ou d'autres processus strictement mécaniques.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Si un document contient tout autre contenu qui devrait être marqué comme artefact, ou si l'un des contenus artefacts est un contenu réel, les clients devraient le corriger dans la sortie PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: Microsoft Word ou marquez la forme en tant qu'artefact dans le document PDF de sortie (agrandir pour voir les détails).</summary>
    <p></p>
    <p>Par exemple, les formes pourraient être marquées comme décoratives dans Microsoft Word, Ils seront donc exportés en PDF comme artefact:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Vous pouvez marquer la forme comme un artefact dans la sortie PDF:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>En outre, vous pouvez changer le texte dans un en-tête de l'artefact en contenu réel dans la sortie PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Spécification du langage naturel

|  Niveaux de conformité standard PDF Aspose.Words |  Présence d ' une prescription |
|  --------------------------------------------------  |  -----------------------  |
|  Annexe |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

La langue du texte est spécifiée dans Microsoft Word des documents. Aspose.Words exporte la langue spécifiée vers un PDF de sortie avec *Lang* attribut attaché à une séquence de contenu marqué ou à une balise Span – il est contrôlé par la [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) propriété. En général, il n'y a pas de problèmes de langue lorsque le texte est entré par l'utilisateur via Microsoft Word. Mais il est possible que la langue soit inexacte si le texte est généré automatiquement.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (pour plus de détails):</summary>
    <p></p>
    <p>La langue naturelle par défaut pour tout le texte d'un fichier doit être spécifiée par l'entrée Lang dans le dictionnaire document.</p>
    <p>Tout contenu textuel dans un fichier qui diffère de la langue par défaut doit être indiqué par l'utilisation d'un `Lang` propriété attachée à une séquence de contenu marqué, ou par une entrée Lang dans un dictionnaire d'éléments de structure ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>En outre, pour le PDF/UA-1, la spécification nous indique ce qui suit (pour plus de détails):</summary>
    <p></p>
    <p>Le langage naturel sera déclaré... Les changements de langage naturel sont déclarés.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment s'assurer que la langue est spécifiée correctement (expand pour voir les détails).</summary>
    <p></p>
    <p>Les utilisateurs doivent s'assurer que la langue est spécifiée correctement dans le document source Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Ou le document PDF de sortie:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Graphique

|  Niveaux de conformité standard PDF Aspose.Words |  Présence d ' une prescription |
|  --------------------------------------------------  |  -----------------------  |
|  Annexe |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word Les documents permettent aux utilisateurs d'ajouter une légende graphique.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (pour plus de détails):</summary>
    <p></p>
    <p>Une légende accompagnant une figure doit porter une étiquette de capture.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Actuellement Aspose.Words ne peut pas exporter les légendes avec la balise Caption, de sorte qu'elles doivent être indiquées dans la sortie PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment insérer la légende (expand pour voir les détails).</summary>
    <p></p>
    <p>En Microsoft Word, la légende pourrait être insérée dans le menu contextuel:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>Dans Acrobat, la légende pourrait être ajoutée ou modifiée par l'intermédiaire de `Object` Boîte de dialogue Propriétés & #160;:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Autres descriptions

|  Niveaux de conformité standard PDF Aspose.Words |  Présence d ' une prescription |
|  --------------------------------------------------  |  -----------------------  |
|  Annexe |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word les documents permettent aux utilisateurs d'ajouter du texte alternatif aux images, aux formes et aux tableaux. Aspose.Words exporte un tel texte alternatif vers la sortie PDF.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (pour plus de détails):</summary>
    <p></p>
    <p>Tous les éléments de structure dont le contenu n'a pas d'analogue textuel préétabli naturel, par exemple images, formules, etc., devraient fournir une description de texte alternative en utilisant l'entrée Alt dans le dictionnaire des éléments de structure...</p>
    <p>NOTE D'autres descriptions fournissent des descriptions textuelles qui aident à interpréter correctement le contenu non textuel par ailleurs opaque.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment faire pour s'assurer que tous les éléments ont un texte alternatif (élargir pour voir les détails).</summary>
    <p></p>
    <p>Les utilisateurs doivent s'assurer que tous les éléments ont un autre texte dans le document Word source:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Ou le document PDF de sortie:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Descriptions alternatives pour hyperliens

|  Niveaux de conformité standard PDF Aspose.Words |  Présence d ' une prescription |
|  --------------------------------------------------  |  -----------------------  |
|  Annexe |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Outre le point précédent, Microsoft Word Les documents permettent également aux utilisateurs d'ajouter un autre texte aux hyperliens. Aspose.Words exporte un tel texte alternatif vers la sortie PDF.

Malheureusement, chaque application ne vous permet pas de configurer une autre description. Par exemple, Adobe Acrobat actuellement ne permet pas de configurer une telle description pour les hyperliens. Mais dans Microsoft Word, vous pouvez le faire comme suit:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Parfois, il y a un problème qu'il n'est pas possible de définir alt texte pour les hyperliens générés automatiquement dans la table des matières (TOC) à travers la Microsoft Word - Oui. Aspose.Words pourrait mettre à jour ces champs et générer les liens par lui-même.

Suivez l'exemple de code à mettre à jour `TOC` les champs utilisant les Aspose.Words Document Object Model (DOM):

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### En-têtes de tableau

|  Niveaux de conformité standard PDF Aspose.Words |  Présence d ' une prescription |
|  --------------------------------------------------  |  -----------------------  |
|  Annexe |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Les tableaux des documents PDF/UA-1 doivent comporter des en-têtes – colonne, ligne ou les deux. PDF/A n'exige qu'un balisage standard, qui ne comporte aucune restriction supplémentaire. Notez que Aspose.Words génère automatiquement le balisage de table standard.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (pour plus de détails):</summary>
    <p></p>
    <p>Les tableaux doivent inclure des en-têtes... Les tableaux peuvent contenir des en-têtes de colonnes, des en-têtes de lignes ou les deux.</p>
    <p>ISO-14289-1, 7,5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment définir l'en-tête de la table (expand pour voir les détails).</summary>
    <p></p>
    <p>L'en-tête de la table peut être configuré soit la source Microsoft Word document:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Ou la sortie PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Texte de remplacement

|  Niveaux de conformité standard PDF Aspose.Words |  Présence d ' une prescription |
|  --------------------------------------------------  |  -----------------------  |
|  Annexe |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (pour plus de détails):</summary>
    <p></p>
    <p>La spécification nous indique ce qui suit:</p>
    <p>Tous les éléments de structure textuelle qui sont représentés de manière non standard, p. ex. des caractères personnalisés ou des graphiques en ligne, devraient fournir du texte de remplacement en utilisant le `ActualText` entrée dans le dictionnaire des éléments de structure...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word document ne permet pas aux utilisateurs de définir le texte de remplacement. Cela doit donc être vérifié et corrigé dans la sortie PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abréviations et acronymes Expansion

|  Niveaux de conformité standard PDF Aspose.Words |  Présence d ' une prescription |
|  --------------------------------------------------  |  -----------------------  |
|  Annexe |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (pour plus de détails):</summary>
    <p></p>
    <p>Toutes les instances d'abréviations et d'acronymes dans le contenu textuel doivent être placées dans une séquence de contenu marquée avec une balise Span dont la propriété E fournit une extension textuelle de l'abréviation ou de l'acronyme...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word document ne permet pas aux utilisateurs de définir des abréviations et des acronymes expansions. Ceci doit donc être vérifié et corrigé dans la sortie PDF:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Titre du document

|  Niveaux de conformité standard PDF Aspose.Words |  Présence d ' une prescription |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  Annexe |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br/>Le document en format PDF/UA-1 devrait avoir un titre |

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (pour plus de détails):</summary>
    <p></p>
    <p>La spécification nous indique ce qui suit:</p>
    <p>Le flux de métadonnées dans le dictionnaire du catalogue de documents doit contenir une entrée dc:title, où dc est le préfixe recommandé pour le schéma de métadonnées Dublin Core...</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment définir le titre du document (agrandir pour voir les détails).</summary>
    <p></p>
    <p>Le titre du document peut être défini soit par la source Microsoft Word document:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Ou la sortie PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Exigences de police

|  Niveaux de conformité standard PDF Aspose.Words |  Présence d ' une prescription |
|  --------------------------------------------------  |  -----------------------  |
|  Annexe |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Il y a aussi un certain nombre de nuances de travail avec les polices lors de la conversion en format PDF/A-1, PDF/A-2, PDF/A-4 ou PDF/UA-1 en utilisant Aspose.Words. Ils doivent être pris en compte si vous voulez éviter d'éventuels problèmes avec le document de sortie.

Les sections ci-dessous décrivent ces nuances et options pour leur solution.

### Police Exigences légales

|  Niveaux de conformité standard PDF Aspose.Words |  Présence d ' une prescription |
|  --------------------------------------------------  |  -----------------------  |
|  Annexe |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words ne vérifie pas les restrictions légales des polices utilisées – il appartient aux utilisateurs. En d'autres termes, un utilisateur ne devrait pas fournir des polices inappropriées pour la conversion PDF en utilisant Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (pour plus de détails):</summary>
    <p></p>
    <p>Seuls les programmes de police qui sont légalement intégrables dans un fichier pour un rendu illimité et universel doivent être utilisés.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (exactement les mêmes citations en deux spécifications)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  Niveaux de conformité standard PDF Aspose.Words |  Présence d ' une prescription |
|  --------------------------------------------------  |  -----------------------  |
|  Annexe |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

L'utilisation des `.notdef` glyph est interdite. Les `.notdef` glyph s'affichera si un document contient des caractères qui ne sont pas présents dans la police sélectionnée et qui ne peuvent pas être résolus par l'intermédiaire du mécanisme Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (pour plus de détails):</summary>
    <p></p>
    <p>Un document conforme ne doit pas contenir de référence au .notdef glyph de n'importe quel texte montrant les opérateurs, quel que soit le mode de rendu de texte, dans n'importe quel flux de contenu.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (exactement les mêmes citations en deux spécifications)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment supprimer ou remplacer ces caractères (agrandir pour voir les détails).</summary>
    <p></p>
    <p>Les utilisateurs devraient supprimer ou remplacer ces caractères dans le document source Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Ou le document PDF de sortie à l'aide de l'outil "Modifier PDF":</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Zone à usage privé (PUA)

|  Niveaux de conformité standard PDF Aspose.Words |  Présence d ' une prescription |
|  --------------------------------------------------  |  -----------------------  |
|  Annexe |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Les caractères de la zone d'utilisation privée (PUA) apparaissent principalement pour Windows polices symboliques comme "Symbol", "Wingdings", "Webdings", et autres. Microsoft Word formats ne fournissent pas une option pour stocker le texte réel pour les caractères.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (pour plus de détails):</summary>
    <p></p>
    <p>Pour le niveau Une conformité uniquement, pour tout caractère ... cartographié à un ou plusieurs codes de la zone d'utilisation privée Unicode (PUA), une entrée ActualText ... doit être présente pour ce caractère ou une séquence de caractères dont un tel caractère fait partie.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Le symbole "Segoe UI Symbol" est un Windows Police Unicode qui pourrait être utilisée comme alternative aux polices symboliques.

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: ce que l'utilisateur devrait faire pour résoudre le problème avec des polices symboliques (élargir pour voir les détails).</summary>
    <p></p>
    <p>Remplacer la police symbolique par une police Unicode dans le document source Word:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Ou ajouter une entrée ActualText aux caractères problématiques dans le document PDF de sortie:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
