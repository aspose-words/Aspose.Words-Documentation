---
title: Travailler avec PDF/A ou PDF/UA
second_title: Aspose.Words pour C++
articleTitle: Travailler avec PDF/A ou PDF/UA
linktitle: Travailler avec PDF/A ou PDF/UA
description: "Convertir en PDF/A-1, PDF/A-2, PDF/A-4 et PDF/UA en utilisant C++. Il y a quelques problèmes lors de la conversion en documents PDF/A, et Aspose.Words pour C++ les résout."
type: docs
weight: 38
url: /fr/cpp/working-with-pdfa-or-pdfua/
---

Les formats PDF/A et PDF/UA imposent plusieurs exigences liées au contenu du document qui ne peuvent pas être remplies lors de la conversion automatique d'un document au format Word en PDF. Ces exigences doivent être vérifiées et corrigées soit dans un document Word avant la conversion, soit dans un document PDF après la conversion afin de produire un document entièrement conforme PDF/A et PDF/UA.

Les exigences de base concernent la structure ou les polices d'un document PDF/A et PDF/UA, que nous examinerons dans les sections suivantes.

{{% alert color="primary" %}}

Veuillez noter que la sortie PDF/UA-1 sera également conforme aux WCAG 2.0 et à la section 508.

{{% /alert %}}

## Exigences Relatives à La Structure des Documents

Les exigences actuelles concernent PDF/A-1a, PDF/A-2a, PDF/A-4, et PDF/UA-1 formats.

Il y a quelques nuances sur le fonctionnement de Aspose.Words lors de la conversion vers divers standards de format PDF. Ils doivent être pris en compte si vous souhaitez obtenir le résultat escompté.

{{% alert color="primary" %}}

Notez qu'il n'y a pas d'exigences de structure logique pour PDF/A-4. Pour cette raison, nous ne considérons pas la version PDF/A-4 dans cette section "Exigences de structure de document".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous dit ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Il est déconseillé aux rédacteurs de générer des informations structurelles ou sémantiques à l'aide de processus automatisés sans vérification appropriée.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Les sous-sections ci-dessous décrivent les nuances du fonctionnement de Aspose.Words lors de la conversion vers diverses normes de format PDF et les options pour leur solution.

### Type de Structure

| PDF niveaux de conformité standard compris entre Aspose.Words | Présence d'exigence |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Un document PDF est une séquence de blocs tels que des en-têtes, des paragraphes, des tableaux et autres. Ces blocs forment une structure de document – fortement ou faiblement.

Les structures fortes et faibles sont valables pour PDF/A. Les documents Microsoft Word ont une structure faible par conception, et Aspose.Words crée PDF avec la structure faible respectivement et génère également des en-têtes en fonction des niveaux de contour des paragraphes dans le document source.

Pour un document PDF/UA-1 avec une structure faible, il est en outre nécessaire que les numéros de titre soient classés dans l'ordre sans lacunes.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous dit ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>La structure au niveau du bloc peut suivre l'un des deux paradigmes principaux:</p>
    </ol>
      <li>Fortement structuré. Les éléments de regroupement s'imbriquent à autant de niveaux que nécessaire pour refléter l'organisation du matériel en articles, sections, sous-sections, etc. À chaque niveau, les enfants de l'élément de regroupement doivent être constitués d'un en-tête (H), d'un ou plusieurs paragraphes (P) pour le contenu à ce niveau, et peut-être d'un ou plusieurs éléments de regroupement supplémentaires pour les sous-sections imbriquées.</li>
      <li>Faiblement structuré. Le document est relativement plat, n'ayant peut-être qu'un ou deux niveaux d'éléments de regroupement, avec tous les en-têtes, paragraphes et autres BLSEs comme enfants immédiats. Dans ce cas, l'organisation du matériel n'est pas reflétée dans la structure logique; cependant, il peut être exprimé par l'utilisation de rubriques avec des niveaux spécifiques (H1-H6–.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Pour les documents PDF/UA-1, la spécification contient un ajout lié aux niveaux d'en-tête (développez pour voir les détails):</summary>
    <p></p>
    <p>Si la sémantique du document exige une séquence décroissante d'en-têtes, cette séquence doit se dérouler dans un ordre numérique strict et ne doit pas ignorer un niveau d'en-tête intermédiaire. H1 H2 H3 est admissible, tandis que H1 H3 ne l'est pas.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Pour garantir une sortie correcte, les utilisateurs doivent s'assurer que le contenu du document source est correctement organisé et que les niveaux de contour sont correctement spécifiés pour les paragraphes. Sinon, l'utilisateur doit vérifier et corriger la structure du document PDF de sortie.

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment définir les niveaux de contour dans Microsoft Word ou vérifier et corriger la structure du document PDF de sortie (développez pour voir les détails).</summary>
    <p></p>
    <p>Dans Microsoft Word, les styles "Titre X" par défaut peuvent être utilisés pour définir le niveau de contour:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>De plus, le niveau du contour peut être vérifié ou modifié dans la fenêtre " Paragraphe:</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>Dans Acrobat, la structure du document peut être vérifiée ou modifiée dans le volet " Balises:</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### Marquage du contenu en tant qu'artefact

| PDF niveaux de conformité standard compris entre Aspose.Words | Présence d'exigence |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Pour le moment, Aspose.Words marque les en-têtes et pieds de page, les séparateurs de notes, les cellules d'en-tête de tableau répétées et les images décoratives comme des artefacts. Notez que cette liste peut être mise à jour à l'avenir.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous dit ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Les objets graphiques d'un document peuvent être divisés en deux classes:</p>
    </ol>
      <li>Le contenu réel d'un document comprend des objets représentant du matériel initialement introduit par l'auteur du document.</li>
      <li>Les artefacts sont des objets graphiques qui ne font pas partie du contenu original de l'auteur, mais sont plutôt générés par l'auteur conforme au cours de la pagination, de la mise en page ou d'autres processus strictement mécaniques.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Si un document contient un autre contenu qui doit être marqué comme artefact, ou si l'un des contenus artefacts est un contenu réel, les clients doivent corriger cela dans la sortie PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment marquer des formes comme décoratives dans Microsoft Word ou marquer une forme comme artefact dans le document de sortie PDF (développez pour voir les détails).</summary>
    <p></p>
    <p>Par exemple, les formes peuvent être marquées comme décoratives dans Microsoft Word, elles seront donc exportées vers PDF en tant qu'artefact:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Vous pouvez marquer la forme comme un artefact dans la sortie PDF:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>De plus, vous pouvez changer le texte d'un en-tête de l'artefact en contenu réel dans la sortie PDF:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Spécification du Langage Naturel

| PDF niveaux de conformité standard compris entre Aspose.Words | Présence d'exigence |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

La langue du texte est spécifiée dans les documents Microsoft Word. Aspose.Words exporte la langue spécifiée vers une sortie PDF avec l'attribut *Lang* attaché à une séquence de contenu marqué ou à une balise Span-elle est contrôlée par la propriété [ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/). Généralement, il n'y a pas de problèmes de langue lorsque le texte est saisi par l'utilisateur via Microsoft Word. Mais il est possible que la langue soit inexacte si le texte est généré automatiquement.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous dit ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>La langue naturelle par défaut pour tout le texte d'un fichier doit être spécifiée par l'entrée Lang dans le dictionnaire du catalogue du document.</p>
    <p>Tout le contenu textuel d'un fichier qui diffère de la langue par défaut doit être indiqué par l'utilisation d'une propriété `Lang` attachée à une séquence de contenu marqué, ou par une entrée Lang dans un dictionnaire d'éléments de structure ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>De plus pour PDF/UA-1, la spécification nous indique ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>La langue naturelle doit être déclarée Changes Les changements de langue naturelle doivent être déclarés.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment s'assurer que la langue est spécifiée correctement (développez pour voir les détails).</summary>
    <p></p>
    <p>Les utilisateurs doivent s'assurer que la langue est spécifiée correctement dans le document Word source:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Ou le document de sortie PDF:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Légende de la Figure

| PDF niveaux de conformité standard compris entre Aspose.Words | Présence d'exigence |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Les documents Microsoft Word permettent aux utilisateurs d'ajouter une légende de figure.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous dit ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Une légende accompagnant une figure doit être étiquetée avec une étiquette de légende.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Actuellement, Aspose.Words ne peut pas exporter de légendes avec la balise Caption, elles doivent donc être signalées dans la sortie PDF.

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment insérer la légende (développez pour voir les détails).</summary>
    <p></p>
    <p>Dans Microsoft Word, la légende peut être insérée via le menu contextuel:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>Dans Acrobat, la légende peut être ajoutée ou modifiée via la boîte de dialogue des propriétés `Object`:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Descriptions Alternatives

| PDF niveaux de conformité standard compris entre Aspose.Words | Présence d'exigence |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Les documents Microsoft Word permettent aux utilisateurs d'ajouter du texte alternatif aux images, formes et tableaux. Aspose.Words exporte un tel texte alternatif vers la sortie PDF.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous dit ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Tous les éléments de structure dont le contenu n'a pas d'analogue textuel prédéterminé naturel, par exemple des images, des formules, etc., devrait fournir une description textuelle alternative en utilisant l'entrée Alt dans le dictionnaire d'éléments de structure...</p>
    <p>REMARQUE Les descriptions alternatives fournissent des descriptions textuelles qui aident à interpréter correctement un contenu non textuel autrement opaque.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment s'assurer que tous les éléments ont un texte alternatif (développez pour voir les détails).</summary>
    <p></p>
    <p>Les utilisateurs doivent s'assurer que tous les éléments ont un texte alternatif dans le document Word source:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Ou le document de sortie PDF:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Descriptions alternatives pour les hyperliens

| PDF niveaux de conformité standard compris entre Aspose.Words | Présence d'exigence |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

En plus du point précédent, les documents Microsoft Word permettent également aux utilisateurs d'ajouter du texte alternatif aux hyperliens. Aspose.Words exporte un tel texte alternatif vers la sortie PDF.

Malheureusement, toutes les applications ne vous permettent pas de configurer une description alternative. Par exemple, Adobe Acrobat ne permet actuellement pas de configurer une telle description pour les hyperliens. Mais dans Microsoft Word, vous pouvez procéder comme suit:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Parfois, il y a un problème qu'il n'est pas possible de définir du texte alternatif pour les hyperliens générés automatiquement dans la table des matières (TOC) via l'interface graphique Microsoft Word. Aspose.Words pourrait mettre à jour ces champs et générer les liens par lui-même.

Suivez l'exemple de code pour mettre à jour les champs `TOC` à l'aide du modèle d'objet de document Aspose.Words (DOM):

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### En-Têtes de Tableau

| PDF niveaux de conformité standard compris entre Aspose.Words | Présence d'exigence |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Les tableaux des documents PDF/UA-1 doivent avoir des en-têtes-colonne, ligne ou les deux. PDF/A nécessite uniquement un balisage de table standard, qui n'a aucune restriction supplémentaire. Notez que Aspose.Words génère automatiquement le balisage de table standard.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous dit ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Les tableaux doivent inclure des en-têtes-Les tableaux peuvent contenir des en-têtes de colonne, des en-têtes de ligne ou les deux.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment définir l'en-tête du tableau (développez pour voir les détails).</summary>
    <p></p>
    <p>L'en-tête du tableau peut être configuré soit le document Microsoft Word source:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Ou la sortie PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Texte de Remplacement

| PDF niveaux de conformité standard compris entre Aspose.Words | Présence d'exigence |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous dit ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>La spécification nous dit ce qui suit:</p>
    <p>Tous les éléments de structure textuelle représentés de manière non standard, par exemple des caractères personnalisés ou des graphiques en ligne, doivent fournir un texte de remplacement à l'aide de l'entrée `ActualText` dans le dictionnaire d'éléments de structure...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Le document Microsoft Word ne permet pas aux utilisateurs de définir du texte de remplacement. Cela doit donc être vérifié et corrigé dans la sortie PDF:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Abréviations et Acronymes Extensions

| PDF niveaux de conformité standard compris entre Aspose.Words | Présence d'exigence |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous dit ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Toutes les instances d'abréviations et d'acronymes dans le contenu textuel doivent être placées dans une séquence de contenu marqué avec une balise Span dont la propriété E fournit une extension textuelle de l'abréviation ou de l'acronyme...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Le document Microsoft Word ne permet pas aux utilisateurs de définir des extensions d'abréviations et d'acronymes. Cela doit donc être vérifié et corrigé dans la sortie PDF:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Titre du Document

| PDF niveaux de conformité standard compris entre Aspose.Words | Présence d'exigence |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />Le document dans PDF/UA-1 doit avoir un titre. |

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous dit ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>La spécification nous dit ce qui suit:</p>
    <p>Le flux de métadonnées dans le dictionnaire de catalogue du document doit contenir une entrée dc: title, où dc est le préfixe recommandé pour le schéma de métadonnées Dublin Core…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment définir le titre du document (développez pour voir les détails).</summary>
    <p></p>
    <p>Le titre du document peut être configuré soit le document Microsoft Word source:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Ou la sortie PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Exigences en Matière de Polices

| PDF niveaux de conformité standard compris entre Aspose.Words | Présence d'exigence |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Il existe également un certain nombre de nuances de travail avec les polices lors de la conversion en PDF/A-1, PDF/A-2, PDF/A-4 ou PDF/UA-1 formats utilisant Aspose.Words. Ils doivent être pris en compte si vous souhaitez éviter d'éventuels problèmes avec le document de sortie.

Les sections ci-dessous décrivent ces nuances et options pour leur solution.

### Exigences Légales en Matière de Polices

| PDF niveaux de conformité standard compris entre Aspose.Words | Présence d'exigence |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words ne vérifie pas les restrictions légales des polices utilisées – c'est aux utilisateurs de décider. En d'autres termes, un utilisateur ne doit pas fournir de polices inappropriées pour la conversion PDF en utilisant Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous dit ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Seuls les programmes de polices légalement intégrables dans un fichier pour un rendu universel illimité doivent être utilisés.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (exactement les mêmes guillemets dans deux spécifications)</p>
</details>
{{% /alert %}}

### .pasdef Glyph

| PDF niveaux de conformité standard compris entre Aspose.Words | Présence d'exigence |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

L'utilisation du glyphe `.notdef` est interdite. Le glyphe `.notdef` apparaîtra si un document contient des caractères qui ne sont pas présents dans la police sélectionnée et qui ne peuvent pas non plus être résolus via le mécanisme de remplacement de la police.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous dit ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Un document conforme ne doit pas contenir de référence au .notdef glyphe de n'importe lequel des opérateurs d'affichage de texte, quel que soit le mode de rendu du texte, dans n'importe quel flux de contenu.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (exactement les mêmes citations dans deux spécifications)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment supprimer ou remplacer ces caractères (développez pour voir les détails).</summary>
    <p></p>
    <p>Les utilisateurs doivent supprimer ou remplacer ces caractères dans le document Word source:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Ou le document PDF de sortie à l'aide de l'outil "Modifier PDF":</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Zone à Usage Privé (PUA)

| PDF niveaux de conformité standard compris entre Aspose.Words | Présence d'exigence |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Les caractères PUA (Private Use Area) apparaissent principalement pour les polices symboliques Windows comme "Symbol"," Wingdings", "Webdings", etc. Les formats Microsoft Word ne permettent pas de stocker du texte réel pour les caractères.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous dit ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Pour la conformité de niveau A uniquement, pour n'importe quel personnage ... qui est mappé à un ou plusieurs codes dans la Zone d'utilisation privée Unicode (PUA), une entrée ActualText... doit être présent pour ce caractère ou une séquence de caractères dont un tel caractère fait partie.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" est une police Unicode Windows qui pourrait être utilisée comme alternative aux polices symboliques.

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: ce que l'utilisateur doit faire pour résoudre le problème avec les polices symboliques (développez pour voir les détails).</summary>
    <p></p>
    <p>Remplacez la police symbolique par une police Unicode dans le document Word source:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Ou ajoutez une entrée ActualText aux caractères problématiques dans le document PDF de sortie:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}