---
title: Travailler avec PDF/A ou PDF/UA
second_title: Aspose.Words pour Python
articleTitle: Travailler avec PDF/A ou PDF/UA
linktitle: Travailler avec PDF/A ou PDF/UA
description: "Convertissez en PDF/A-1, PDF/A-2, PDF/A-4 et PDF/UA à l'aide de Python. Il existe quelques problèmes lors de la conversion en documents PDF/A, et Aspose.Words pour Python les résout."
type: docs
weight: 28
url: /fr/python-net/working-with-pdfa-or-pdfua/
---

Les formats PDF/A et PDF/UA imposent plusieurs exigences liées au contenu du document qui ne peuvent être remplies lors de la conversion automatique d'un document au format Word vers PDF. Ces exigences doivent être vérifiées et corrigées soit dans un document Word avant la conversion, soit dans un document PDF après la conversion afin de produire un document entièrement conforme aux formats PDF/A et PDF/UA.

Les exigences de base concernent la structure ou les polices d'un document PDF/A et PDF/UA, que nous examinerons dans les sections suivantes.

{{% alert color="primary" %}}

Veuillez noter que la sortie PDF/UA-1 sera également conforme aux WCAG 2.0 et à la section 508.

{{% /alert %}}

## Exigences relatives à la structure du document

Les exigences actuelles concernent les formats PDF/A-1a, PDF/A-2a, PDF/A-4 et PDF/UA-1.

Il existe certaines nuances dans le fonctionnement de Aspose.Words lors de la conversion vers diverses normes de format PDF. Ils doivent être pris en compte si vous souhaitez obtenir le résultat attendu.

{{% alert color="primary" %}}

Notez qu’il n’y a aucune exigence de structure logique pour PDF/A-4. Pour cette raison, nous ne prenons pas en compte la version PDF/A-4 dans cette section "Exigences relatives à la structure du document".

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Il est déconseillé aux rédacteurs de générer des informations structurelles ou sémantiques à l’aide de processus automatisés sans vérification appropriée.</p>
    <p>ISO19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Les sous-sections ci-dessous décrivent les nuances du fonctionnement de Aspose.Words lors de la conversion vers diverses normes de format PDF et les options pour leur solution.

### Type de structure

|  Niveaux de conformité aux normes PDF dans Aspose.Words |  Présence d'exigence |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Un document PDF est une séquence de blocs tels que des titres, des paragraphes, des tableaux et autres. Ces blocs forment une structure de document – forte ou faible.

Les structures fortes et faibles sont valables pour PDF/A. Les documents Microsoft Word ont une structure faible de par leur conception, et Aspose.Words crée respectivement un PDF avec la structure faible et génère également des titres en fonction des niveaux de plan des paragraphes du document source.

Pour un document PDF/UA-1 avec une structure faible, il est en outre requis que les numéros de titre soient dans l'ordre et sans espaces.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>La structure au niveau des blocs peut suivre l'un des deux paradigmes principaux:</p>
    </ol>
      <li>Fortement structuré. Les éléments de regroupement s'imbriquent sur autant de niveaux que nécessaire pour refléter l'organisation du matériel en articles, sections, sous-sections, etc. À chaque niveau, les enfants de l'élément de regroupement doivent être constitués d'un titre (H), d'un ou plusieurs paragraphes (P) pour le contenu à ce niveau et éventuellement d'un ou plusieurs éléments de regroupement supplémentaires pour les sous-sections imbriquées.</li>
      <li>Faiblement structuré. Le document est relativement plat, n'ayant peut-être qu'un ou deux niveaux d'éléments de regroupement, avec tous les titres, paragraphes et autres BLSE comme enfants immédiats. Dans ce cas, l’organisation du matériel ne se reflète pas dans la structure logique ; cependant, cela peut être exprimé par l'utilisation de rubriques avec des niveaux spécifiques (H1 à H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Pour les documents PDF/UA-1, la spécification contient un ajout lié aux niveaux de titre (développez pour voir les détails):</summary>
    <p></p>
    <p>Si la sémantique du document nécessite une séquence descendante d'en-têtes, une telle séquence doit se dérouler dans un ordre numérique strict et ne doit pas sauter de niveau de titre intermédiaire. H1 H2 H3 est autorisé, tandis que H1 H3 ne l’est pas.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Pour garantir une sortie correcte, les utilisateurs doivent s'assurer que le contenu du document source est correctement organisé et que les niveaux de plan sont correctement spécifiés pour les paragraphes. Sinon, l'utilisateur doit vérifier et corriger la structure du document PDF de sortie.

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment définir les niveaux de plan dans Microsoft Word ou vérifier et corriger la structure du document PDF de sortie (développez pour voir les détails).</summary>
    <p></p>
    <p>Dans Microsoft Word, les styles "Titre X" par défaut peuvent être utilisés pour définir le niveau de plan:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWTitre1-2" style="width:800px"/>
    <p>De plus, le niveau hiérarchique peut être vérifié ou modifié dans la fenêtre "Paragraphe":</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>Dans Acrobat, la structure du document peut être vérifiée ou modifiée dans le volet "Balises":</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="Volet Balises Acrobate" style="width:800px"/>
</details>
{{% /alert %}}

### Marquage du contenu comme artefact

|  Niveaux de conformité aux normes PDF dans Aspose.Words |  Présence d'exigence |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Pour le moment, Aspose.Words marque les en-têtes et pieds de page, les séparateurs de notes, les cellules d'en-tête de tableau répétées et les images décoratives comme des artefacts. Notez que cette liste pourrait être mise à jour à l'avenir.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Les objets graphiques d'un document peuvent être divisés en deux classes:</p>
    </ol>
      <li>Le contenu réel d'un document comprend des objets représentant le matériel initialement introduit par l'auteur du document.</li>
      <li>Les artefacts sont des objets graphiques qui ne font pas partie du contenu original de l'auteur mais sont plutôt générés par l'écrivain conforme au cours de la pagination, de la mise en page ou d'autres processus strictement mécaniques.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Si un document contient un autre contenu qui doit être marqué comme un artefact, ou si l'un des contenus artefactés est un contenu réel, les clients doivent le corriger dans le PDF de sortie.

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment marquer des formes comme décoratives dans Microsoft Word ou marquer une forme comme artefact dans le document PDF de sortie (développez pour voir les détails).</summary>
    <p></p>
    <p>Par exemple, les formes pourraient être marquées comme décoratives dans Microsoft Word, elles seront donc exportées au format PDF en tant qu'artefact:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDécoratifForme" style="width:800px"/>
    <p>Vous pouvez marquer la forme comme artefact dans le PDF de sortie:</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfSupprimerEmptyTag" style="width:800px"/>
    <p>En outre, vous pouvez remplacer le texte d'un en-tête de l'artefact par du contenu réel dans le PDF de sortie:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Spécification du langage naturel

|  Niveaux de conformité aux normes PDF dans Aspose.Words |  Présence d'exigence |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

La langue du texte est spécifiée dans les documents Microsoft Word. Aspose.Words exporte la langue spécifiée vers un PDF de sortie avec l'attribut *Lang* attaché à une séquence de contenu marqué ou à une balise Span – il est contrôlé par la propriété [export_language_to_span_tag](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_language_to_span_tag/). Généralement, il n'y a aucun problème de langue lorsque le texte est saisi par l'utilisateur via Microsoft Word. Mais il est possible que la langue soit inexacte si le texte est généré automatiquement.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>La langue naturelle par défaut de tout le texte d'un fichier doit être spécifiée par l'entrée Lang dans le dictionnaire du catalogue du document.</p>
    <p>Tout le contenu textuel d'un fichier qui diffère de la langue par défaut doit être indiqué par l'utilisation d'une propriété `Lang` attachée à une séquence de contenu marqué, ou par une entrée Lang dans un dictionnaire d'éléments de structure...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>De plus pour PDF/UA-1, la spécification nous indique ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Le langage naturel doit être déclaré… Les changements dans le langage naturel doivent être déclarés.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment s'assurer que la langue est correctement spécifiée (développez pour voir les détails).</summary>
    <p></p>
    <p>Les utilisateurs doivent s'assurer que la langue est correctement spécifiée dans le document Word source:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLangage" style="width:800px"/>
    <p>Ou le document PDF de sortie:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Descriptions alternatives

|  Niveaux de conformité aux normes PDF dans Aspose.Words |  Présence d'exigence |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Les documents Microsoft Word permettent aux utilisateurs d'ajouter du texte alternatif aux images, aux formes et aux tableaux. Aspose.Words exporte un tel texte alternatif vers le PDF de sortie.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Tous les éléments de structure dont le contenu n'a pas d'analogue textuel naturel prédéterminé, par exemple des images, des formules, etc., doivent fournir une description textuelle alternative en utilisant l'entrée Alt dans le dictionnaire des éléments de structure...</p>
    <p>REMARQUE Les descriptions alternatives fournissent des descriptions textuelles qui facilitent l'interprétation correcte d'un contenu non textuel autrement opaque.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment s'assurer que tous les éléments ont un texte alternatif (développez pour voir les détails).</summary>
    <p></p>
    <p>Les utilisateurs doivent s'assurer que tous les éléments ont un texte alternatif dans le document Word source:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Ou le document PDF de sortie:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Texte de remplacement

|  Niveaux de conformité aux normes PDF dans Aspose.Words |  Présence d'exigence |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>La spécification nous dit ce qui suit:</p>
    <p>Tous les éléments de structure textuelle qui sont représentés de manière non standard, par exemple des caractères personnalisés ou des graphiques en ligne, doivent fournir un texte de remplacement en utilisant l'entrée `ActualText` dans le dictionnaire des éléments de structure...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Le document Microsoft Word ne permet pas aux utilisateurs de définir un texte de remplacement. Cela doit donc être vérifié et corrigé dans le PDF de sortie:

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Extensions des abréviations et des acronymes

|  Niveaux de conformité aux normes PDF dans Aspose.Words |  Présence d'exigence |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Toutes les instances d'abréviations et d'acronymes dans le contenu textuel doivent être placées dans une séquence de contenu marqué avec une balise Span dont la propriété E fournit une extension textuelle de l'abréviation ou de l'acronyme...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Le document Microsoft Word ne permet pas aux utilisateurs de définir des extensions d'abréviations et d'acronymes. Cela doit donc être vérifié et corrigé dans le PDF de sortie:

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Exigences de police

|  Niveaux de conformité aux normes PDF dans Aspose.Words |  Présence d'exigence |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Il existe également un certain nombre de nuances dans l'utilisation des polices lors de la conversion aux formats PDF/A-1, PDF/A-2, PDF/A-4 ou PDF/UA-1 à l'aide de Aspose.Words. Ils doivent être pris en compte si vous souhaitez éviter d'éventuels problèmes avec le document de sortie.

Les sections ci-dessous décrivent ces nuances et options pour leur solution.

### Exigences légales en matière de police

|  Niveaux de conformité aux normes PDF dans Aspose.Words |  Présence d'exigence |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words ne vérifie pas les restrictions légales des polices utilisées – c'est aux utilisateurs de décider. En d'autres termes, un utilisateur ne doit pas fournir de polices inappropriées pour la conversion PDF à l'aide de Aspose.Words.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Seuls les programmes de polices légalement intégrables dans un fichier pour un rendu universel et illimité doivent être utilisés.</p>
    <p>ISO-19005-2, 6.2.11.4.1 ; ISO-14289-1, 7.21.4.1 (exactement les mêmes citations dans deux spécifications)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  Niveaux de conformité aux normes PDF dans Aspose.Words |  Présence d'exigence |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

L'utilisation du `.notdef` glyph est interdite. Le `.notdef` glyph apparaîtra si un document contient des caractères qui ne sont pas présents dans la police sélectionnée et qui ne peuvent pas non plus être résolus via le mécanisme Font Fallback.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Un document conforme ne doit pas contenir de référence au .notdef glyph à partir d'un texte montrant les opérateurs, quel que soit le mode de rendu du texte, dans aucun flux de contenu.</p>
    <p>ISO-19005-2, 6.2.11.8 ; ISO-14289-1, 7.21.8 (exactement les mêmes citations dans deux spécifications)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: comment supprimer ou remplacer ces caractères (développez pour voir les détails).</summary>
    <p></p>
    <p>Les utilisateurs doivent supprimer ou remplacer ces caractères dans le document Word source:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Ou le document PDF de sortie à l'aide de l'outil "Modifier le PDF":</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Zone à usage privé (PUA)

|  Niveaux de conformité aux normes PDF dans Aspose.Words |  Présence d'exigence |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Les caractères PUA (Private Use Area) apparaissent principalement pour les polices symboliques Windows telles que "Symbol", "Wingdings", "Webdings" et autres. Les formats Microsoft Word ne fournissent pas d'option pour stocker le texte réel des caractères.

{{% alert color="secondary" %}}
<details>
    <summary>La spécification nous indique ce qui suit (développez pour voir les détails):</summary>
    <p></p>
    <p>Pour la conformité de niveau A uniquement, pour tout caractère... qui est mappé à un ou plusieurs codes dans la zone d'utilisation privée Unicode (PUA), une entrée ActualText... doit être présente pour ce caractère ou une séquence de caractères dont un personnage est une partie.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol" est une police Windows Unicode qui pourrait être utilisée comme alternative aux polices symboliques.

{{% alert color="secondary" %}}
<details>
    <summary>Dans ce bloc, vous pouvez voir des exemples: ce que l'utilisateur doit faire pour résoudre le problème avec les polices symboliques (développez pour voir les détails).</summary>
    <p></p>
    <p>Remplacez la police symbolique par une police Unicode dans le document Word source:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsérerSymbol" style="width:800px"/>
    <p>Ou ajoutez une entrée ActualText aux caractères problématiques dans le document PDF de sortie:</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}