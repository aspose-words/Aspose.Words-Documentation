---
title: Caractéristiques
second_title: Aspose.Words pour Python via .NET
articleTitle: Fonctionnalités prises en charge
linktitle: Fonctionnalités prises en charge
description: "Aspose.Words pour Python via .NET offre aux utilisateurs un large éventail de fonctionnalités allant de la simple conversion et modification de documents à la création de documents structurés et visuellement attrayants ou à l'automatisation des rapports."
type: docs
weight: 30
url: /fr/python-net/features/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words offre aux utilisateurs un large éventail de fonctionnalités. Les utilisateurs peuvent effectuer un grand nombre de tâches liées aux documents – depuis la simple conversion de documents d'un format pris en charge à un autre et la modification de ces documents pendant le processus de conversion jusqu'aux tâches commerciales, telles que la création de documents structurés et visuellement attrayants ou l'automatisation des rapports.

Les formats et normes de documents modernes sont complexes, et lorsque vous avez besoin de conversion de documents ou d'autres fonctionnalités de traitement de documents dans votre projet, la seule solution pratique consiste souvent à s'appuyer sur un composant tiers qui implémente la fonctionnalité souhaitée. Mais l’utilisation d’un composant tiers comporte toujours certains risques. L'un des risques uniques liés au traitement des documents est la question de savoir dans quelle mesure la bibliothèque implémente complètement et correctement un format ou une norme de document particulier.

Aspose s'engage à fournir les implémentations les plus complètes et les plus précises des formats et normes de documents. L'équipe Aspose.Words démontre son engagement en faveur de l'interopérabilité en fournissant des notes de mise en œuvre détaillées pour les formats de documents pris en charge sur plusieurs plates-formes.

Les tableaux ci-dessous résument et comparent la disponibilité des fonctionnalités Aspose.Words pour Python via .NET et fournissent des liens vers des descriptions détaillées des fonctionnalités.

## Plateformes prises en charge

Les plates-formes Aspose.Words pour Python via .NET peuvent être utilisées sur Windows x64 ou x86, macOS x86_x64 ou arm64 et une large gamme de distributions Linux avec Python 3.5 ou version ultérieure installé. Il existe des exigences supplémentaires pour les plates-formes Linux et macOS cibles:
- Bibliothèques d'exécution GCC-6 (ou version ultérieure)
- Dépendances de .NET Core Runtime. L'installation de .NET Core Runtime lui-même est requise par `NOT`
- Pour Python 3.5-3.7: la version `pymalloc` de Python est nécessaire. L'option de génération `--with-pymalloc` Python est activée par défaut. En règle générale, la version `pymalloc` de Python est marquée du suffixe `m` dans le nom de fichier.
- Bibliothèque Python partagée `libpython`. L'option de construction `--enable-shared` Python est désactivée par défaut, certaines distributions Python ne contiennent pas la bibliothèque partagée `libpython`. Pour certaines plateformes Linux, la bibliothèque partagée `libpython` peut être installée à l'aide du gestionnaire de packages, par exemple: `sudo apt-get install libpython3.7`. Le problème courant est que la bibliothèque `libpython` est installée à un emplacement différent de l'emplacement système standard pour les bibliothèques partagées. Le problème peut être résolu en utilisant les options de construction Python pour définir des chemins de bibliothèque alternatifs lors de la compilation de Python, ou en créant un lien symbolique vers le fichier de bibliothèque `libpython` dans l'emplacement standard du système pour les bibliothèques partagées. En règle générale, le nom du fichier de bibliothèque partagée `libpython` est `libpythonX.Ym.so.1.0` pour Python 3.5-3.7 ou libpythonX.Y.so.1.0 pour Python 3.8 ou version ultérieure (par exemple: `libpython3.7m.so.1.0`, `libpython3.9.so.1.0`).

Si vous avez besoin de prendre en charge davantage de plates-formes, recherchez les produits "frères jumeaux" Aspose.Words pour .NET ou Aspose.Words pour Java.

## Formats de fichiers et conversions

De nombreux clients dans le monde s'appuient sur les fonctionnalités complètes d'importation et d'exportation de documents fournies par Aspose.Words.

|  Fonctionnalité | Description | Python via .NET |
|  :-  |  :-  |  :-  |
| `Microsoft Word - DOC` | L'implémentation du format DOC la plus rapide et la plus complète que vous puissiez trouver. | {{< emoticons/tick >}} |
| `WordprocessingML - DOCX and XML` | Aspose.Words fournit un support exhaustif OOXML, Flat OPC et également Word 2003 XML. | {{< emoticons/tick >}} |
| `Rich Text Format - RTF` | Prise en charge complète du format RTF pour interagir avec une variété d'applications. | {{< emoticons/tick >}} |
| `HTML, XHTML and MHTML` | Chargez et enregistrez HTML/XHTML pour une interopérabilité encore plus grande. Enregistrer au format MHTML est également disponible. | {{< emoticons/tick >}} |
| `OpenDocument - ODT` | Aspose.Words peut charger et enregistrer des documents au format `OpenDocument` Text (.odt). | {{< emoticons/tick >}} |
| `Adobe Portable Document Format - PDF` | Convertissez n'importe quel document en PDF avec une haute fidélité. PDF/A est pris en charge. | {{< emoticons/tick >}} |
| `XML Paper Specification - XPS` | Convertissez n'importe quel document en XPS avec une haute fidélité. | {{< emoticons/tick >}} |
| `Plain Text - TXT` | Extrayez facilement du texte en l'enregistrant au format texte brut. | {{< emoticons/tick >}} |
| `Digital Publishing EPUB` | EPUB est un format populaire pour les livres électroniques. Vous pouvez convertir n'importe quel document Aspose.Words au format IDPF EPUB. | {{< emoticons/tick >}} |
| `Printer Command Language (PCL)` | Aspose.Words pour .NET prend en charge l'enregistrement du document au format PCL. | {{< emoticons/tick >}} |

## Rendu et impression

Aspose.Words fournit désormais un rendu haute fidélité des pages du document.

|  Fonctionnalité | Python via .NET |
|  :-  |  :-  |
| Disposez le document en pages avec une haute fidélité (exactement comme le ferait Microsoft Word®) dans tous les formats ci-dessous. | {{< emoticons/tick >}} |
| Rendu des pages individuelles ou des documents complets au format PDF ou XPS. | {{< emoticons/tick >}} |
| Rendre les pages du document en images BMP | {{< emoticons/tick >}} |
| Rendu des pages de documents en images (PNG, EMF, JPEG, GIF). | {{< emoticons/tick >}} |
| Restituez les formes individuelles du document en images raster ou vectorielles. | {{< emoticons/tick >}} |
| Spécifiez la résolution, la qualité, la compression et d’autres options de l’image. | {{< emoticons/tick >}} |
| Rendu des pages ou des formes vers un objet graphique .NET avec des transformations, à une taille spécifique. | {{< emoticons/tick >}} |
| Imprimez des pages de documents à l'aide de l'infrastructure d'impression .NET. | {{< emoticons/cross >}} |
| Mettez à jour le `TOC`, les numéros de page et d'autres champs avant le rendu ou l'impression. | {{< emoticons/tick >}} |

## Fonctionnalités du contenu du document

Aspose.Words fournit un modèle objet riche composé de plus de 100 classes publiques, qui vous permettent de générer, combiner, modifier, analyser ou examiner par programme des documents chargés.

|  Fonctionnalité | Python via .NET |
|  :-  |  :-  |
| Accédez, créez et modifiez des paragraphes et du texte. | {{< emoticons/tick >}} |
| Accédez, créez et modifiez des images, des zones de texte et des formes. | {{< emoticons/tick >}} |
| Accédez, créez et modifiez des tableaux, des lignes et des cellules. | {{< emoticons/tick >}} |
| Accédez, créez et modifiez des champs, des champs de formulaire, des hyperliens et des signets. | {{< emoticons/tick >}} |
| Accédez, créez et modifiez les sections, les en-têtes et les pieds de page du document. | {{< emoticons/tick >}} |
| Accédez, créez et modifiez des notes de bas de page, des notes de fin et des commentaires. | {{< emoticons/tick >}} |
| Accédez, créez et modifiez du XML personnalisé, des SmartTags et des balises de documents structurés (contrôles de contenu). | {{< emoticons/tick >}} |
| Accédez et modifiez tous les éléments du document à l'aide de classes et de méthodes de type **XmlDocument**. | {{< emoticons/tick >}} |
| Mettez à jour les résultats des champs `IF`, formules et autres types de champs populaires. | {{< emoticons/tick >}} |
| Reconstruisez et mettez à jour les champs de la table des matières (TOC) exactement comme le fait Microsoft Word. | {{< emoticons/tick >}} |
| Copiez et déplacez des éléments de document entre les documents. | {{< emoticons/tick >}} |
| Joignez et divisez des documents. | {{< emoticons/tick >}} |
| Obtenez et définissez les propriétés de document intégrées et personnalisées. | {{< emoticons/tick >}} |
| Spécifiez la protection des documents, ouvrez les documents protégés et cryptés. | {{< emoticons/tick >}} |
| Recherchez et remplacez du texte, énumérez le contenu du document. | {{< emoticons/tick >}} |
| Acceptez toutes les révisions dans un document. | {{< emoticons/tick >}} |
| Conservez ou extrayez les objets OLE et les contrôles ActiveX du document. | {{< emoticons/tick >}} |
| Conservez ou supprimez les macros VBA du document. Préserver la signature numérique des macros VBA. | {{< emoticons/tick >}} |
| Détectez et vérifiez les signatures numériques dans les documents. | {{< emoticons/tick >}} |
| Insérez du texte HTML. | {{< emoticons/tick >}} |
| Extrayez les macros VBA d'un document Word. | {{< emoticons/tick >}} |

## Fonctionnalités de formatage des documents

Aspose.Words fournit un accès programmatique détaillé aux propriétés de formatage de tous les éléments du document.

|  Fonctionnalité | Python via .NET |
|  :-  |  :-  |
| Accédez et modifiez tous les formats de caractères, y compris les polices, les couleurs, les effets, les bordures et les ombres. | {{< emoticons/tick >}} |
| Accédez et modifiez toute la mise en forme des paragraphes, y compris les retraits, l'espacement, les bordures et l'ombrage, les taquets de tabulation. | {{< emoticons/tick >}} |
| Accédez et modifiez tous les formats de listes à puces et numérotées, y compris la numérotation et les niveaux. | {{< emoticons/tick >}} |
| Accédez et modifiez le formatage du tableau, y compris l’alignement, l’orientation, les bordures et l’ombrage. | {{< emoticons/tick >}} |
| Accédez et modifiez toutes les propriétés de la section, y compris le format du papier, les marges et l'orientation. | {{< emoticons/tick >}} |
| Accédez, créez et modifiez les styles de documents. | {{< emoticons/tick >}} |
| Accédez et modifiez les objets de dessin, y compris les propriétés de position, de taille, de ligne et de remplissage, les octets d'image. | {{< emoticons/tick >}} |

## Fonctionnalités Mail Merge

Vous pouvez utiliser Aspose.Words comme solution de reporting à part entière. Concevez vos rapports dans Microsoft Word, puis demandez à Aspose.Words de remplir les documents avec des données provenant de diverses sources de données.

|  Fonctionnalité | Python via .NET |
|  :-  |  :-  |
| Utilisez tous les champs Microsoft Word Mail Merge standard dans vos rapports, notamment `MERGEFIELD`, `NEXT`, `NEXTIF`, `ADDRESSBLOCK`, GREETINGLINE. | {{< emoticons/tick >}} |
| Exécutez Mail Merge pour les documents contenant même les champs et formules `IF` les plus complexes et imbriqués. | {{< emoticons/tick >}} |
| Remplissez et développez dynamiquement des tables ou des fragments dans le document à partir de votre source de données à l'aide des régions mail merge. | {{< emoticons/cross >}} |
| Générez facilement des rapports contenant des données maître-détails (parent-enfant), telles que Order/OrderDetails. | {{< emoticons/cross >}} |
| Remplissez les documents avec des données provenant de n'importe quelle source de données .NET telle que DataSet, DataTable, DataView, DataReader ou ADO Recordset. | {{< emoticons/cross >}} |
| Remplissez des documents à partir de n'importe quelle source de données telle qu'une requête LINQ, un fichier XML ou des objets métier en implémentant l'interface [IMailMergeDataSource](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/imailmergedatasource/). | {{< emoticons/cross >}} |
| Prenez un contrôle précis, comme le formatage des nombres, sur la façon dont vos données sont fusionnées à l'aide d'événements. | {{< emoticons/cross >}} |
| Insérez des images pendant mail merge. | {{< emoticons/tick >}} |
| Créez ou modifiez par programme une source de données Microsoft Word Mail Merge pour un document. Conservez les paramètres Mail Merge et les sources de données. | {{< emoticons/tick >}} |
| Récupérez les noms de champs mail merge. | {{< emoticons/tick >}} |

## Fonctionnalités de création de rapports

LINQ Reporting Engine est un outil de reporting avancé vous permettant de générer des documents basés sur des documents modèles et des données obtenues à partir de diverses sources, notamment des bases de données, XML, JSON, OData, des objets de types CLR personnalisés, des documents externes et bien plus encore.

| Principales caractéristiques | Python via .NET |
|  :-  |  :-  |
| Prise en charge de la syntaxe C# et des méthodes d'extension LINQ directement dans les modèles (même pour les sources de données `ADO.NET`) | {{< emoticons/tick >}} |
| Prise en charge de blocs de documents répétables et conditionnels (boucles et conditions) pour les tableaux, les listes et le contenu commun | {{< emoticons/tick >}} |
| Prise en charge des graphiques et des images générés dynamiquement | {{< emoticons/tick >}} |
| Prise en charge de l'insertion de documents externes et de blocs HTML dans un document | {{< emoticons/tick >}} |
| Prise en charge de plusieurs sources de données (y compris de différents types) pour la génération d'un seul document | {{< emoticons/tick >}} |
| Prise en charge intégrée des relations de données (maître-détail) | {{< emoticons/tick >}} |
| Prise en charge complète de diverses manipulations de données telles que le regroupement, le tri, le filtrage et autres directement dans les modèles | {{< emoticons/tick >}} |
| WYSIWYG: un document généré conserve la même mise en forme de ses éléments qu'un modèle correspondant | {{< emoticons/tick >}} |
