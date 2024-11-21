---
title: Introduction aux champs Java
second_title: Aspose.Words pour Java
articleTitle: Introduction aux champs
linktitle: Introduction aux champs
description: "Caractéristiques des champs dans les détails, les codes de champ et les résultats de champ expliqués en Aspose.Words pour Java."
type: docs
weight: 10
url: /fr/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words est une bibliothèque de classe conçue pour le traitement côté serveur de Microsoft Word documente et soutient les domaines de la manière suivante:

- tous les champs d'un document sont conservés pendant l'ouverture/sauvetage et les conversions
- il est possible de mettre à jour les résultats de la plupart des champs

Dans cet article, nous allons en savoir plus sur la structure des champs, les champs Aspose.Words, et les détails de travail avec ces domaines.

## Structure du terrain

Un champ comprend:

- Oui. Les nœuds de démarrage et de séparateur de champ sont utilisés pour englober le contenu qui compose le code de champ (normalement comme texte simple).
- Le séparateur de champ et l'extrémité de champ englobent le résultat de champ. Il peut s'agir de différents types de contenu allant des passages de texte aux paragraphes aux tableaux.
- Certains champs peuvent ne pas avoir de séparateur qui signifie que l'ensemble du contenu constitue le code de champ.
- Oui. Le code de champ définit le comportement du champ et est composé de l'identificateur de champ et souvent d'autres paramètres tels que le nom de champ et les commutateurs.
- Oui. Le résultat sur le terrain contient la dernière évaluation du terrain. Cette valeur est stockée dans le résultat du champ et est ce qui est affiché à l'utilisateur. Certains champs peuvent ne pas avoir de résultat de champ donc n'affichera rien dans le document. De même, il se peut que certains champs ne soient pas encore mis à jour, de sorte qu'ils n'auront pas de résultat.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

Le contenu qui compose le code de champ est stocké comme [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) noeuds entre les [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) et [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). Le résultat du champ est stocké entre les **FieldSeparator** et [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) noeuds et peut être constitué de différents types de contenu. Normalement, le résultat du champ contient juste du texte composé de nœuds Exécuter, mais il est possible que le noeud FieldEnd soit situé dans un paragraphe complètement différent, et donc que le résultat du champ soit composé de [Niveau logique des nœuds dans un document](/words/fr/java/logical-levels-of-nodes-in-a-document/) tels que **Table** et **Paragraph** Les noeuds aussi.

Voici une vue de la façon dont un champ est stocké dans Aspose.Words en utilisant l'exemple "DocumentExplorer"* qui peut être trouvé sur [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Champs Aspose.Words Document Object Model (DOM)

Lorsqu'un document est chargé dans <span notrans="<span notrans=" Aspose.Words"=""></span>""> les champs du document sont chargés dans le Aspose.Words Document Object Model comme un ensemble de composants séparés (noeuds). Un seul champ est chargé comme une collection de **FieldStart**, **FieldSeparator** et **FieldEnd** noeuds avec le contenu entre ces noeuds. Si un champ n'a pas de résultat de champ, il y aura **FieldSeparator** noeud. Tous ces noeuds sont toujours trouvés en ligne (comme les enfants de [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) ou [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

En Aspose.Words chacune des **FieldXXX** les noeuds proviennent [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). Cette classe fournit une propriété pour vérifier le type de champ représenté par le noeud spécifié à travers le [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) propriété. Par exemple `FieldType.FieldMergeField` représente un champ de fusion dans le document.

{{% alert color="primary" %}}

Il existe certains champs particuliers dans un document Word qui ne sont pas importés dans Aspose.Words en tant que collection de **FieldXXX** les noeuds. Par exemple, `LINK` champ et `INCLUDEPICTURE` champ sont importés dans Aspose.Words en tant que [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) objet. Cet objet fournit des propriétés pour travailler avec les données d'image normalement stockées dans ces champs. Pour importer `INCLUDEPICTURE` champ **FieldXXX** noeuds [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) l'option doit être spécifiée comme **true**.

Les champs de formulaire sont également importés dans Aspose.Words comme leur propre classe spéciale. Les [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) classe représente un champ de formulaire dans un document Word et fournit des méthodes supplémentaires qui sont particulières à un champ de formulaire.

{{% /alert %}}

## Domaines appuyés

Le calcul des champs suivants est pris en charge dans la version actuelle de Aspose.Words:

- = (formule)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- Oui. `TOC` (y compris TOT et TOT)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Parsing de terrain sophistiqué

Aspose.Words suivre la voie Microsoft Word traite les champs et par conséquent il gère correctement:

- les champs imbriqués:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- l'argument de champ peut être le résultat d'un champ imbriqué
- les champs peuvent être imbriqués dans un code de champ ainsi que dans le résultat de champ
- espaces/sans espaces, guillemets/sans guillemets, caractères d'échappement dans les champs etc.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- champs couvrant plusieurs paragraphes

### Champs de formule

Aspose.Words fournit une mise en œuvre très sérieuse du moteur de formule et soutient les éléments suivants:

- opérateurs arithmétiques et logiques:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- fonctions:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- références aux signets:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- interrupteurs de formatage des numéros:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Les fonctions suivantes dans les expressions sont prises en charge: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` et `COMPARE` Champs

Juste une partie des `IF` exprime que Aspose.Words peut facilement calculer devrait vous donner une idée de la puissance de cette fonctionnalité:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` et `TIME` Champs

Aspose.Words prend en charge tous les commutateurs de formatage de date et d'heure disponibles dans Microsoft Word, Voici quelques exemples:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Champs

Aspose.Words n'impose aucune limite à la complexité mail merge champs dans vos documents et supports imbriqués `IF` et les champs de formule et peut même calculer le nom de champ fusion en utilisant une formule.

Quelques exemples mail merge champs qui Aspose.Words soutient:

- Oui. Mail merge interrupteurs de champ & #160;:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- champs de fusion imbriqués dans une formule:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- calculer le nom du champ de fusion à l'exécution:
  `MERGEFIELD { `SI` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- passage conditionnel à l'enregistrement suivant dans la source de données:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Commutateurs de format

Un champ d'un document peut comporter des commutateurs de formatage qui précisent comment la valeur résultante doit être formatée. Aspose.Words prend en charge les commutateurs de format suivants:

- @ – la date et l'heure de formatage
- \\\# – formatage des numéros
- \\\\\\\\\\\ Bouchons
- Premier chapitre
- \\\\\\\\\\\ Moins
- \\\\\\\\\\\ Supérieur
- \\\\\\\\* CHARFORMAT – résultat de format selon le premier caractère du code de champ
- \\\\\\\\* MERGEFORMAT – résultat de format selon la façon dont l'ancien résultat est formaté

### Date et formatage des numéros dans les champs

Quand Aspose.Words calcule un résultat de champ, il a souvent besoin d'analyser une chaîne dans une valeur de nombre ou de date et aussi de la formater en retour à une chaîne. Par défaut Aspose.Words utilise la culture courante de thread pour effectuer l'analyse et le formatage lors du calcul des valeurs de champ pendant la mise à jour du champ et mail merge. Il existe également des options sous la forme [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) classe qui permet un contrôle supplémentaire sur quelle culture est utilisée lors de la mise à jour du champ%

* par défaut [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) propriété est définie à [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) qui formate les champs en utilisant la culture de thread actuelle
* cette propriété peut être définie à [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) donc la langue définie à partir du code de champ du champ est utilisée pour le formatage à la place

### Formatage en utilisant la culture courante

Pour contrôler la culture utilisée lors du calcul sur le terrain, il suffit de régler le **CurrentCulture** propriété à une culture de votre choix avant d'invoquer le calcul de champ.

L'exemple de code suivant montre comment modifier la culture utilisée pour formater les champs pendant la mise à jour:

EXEMPLE (utiliser l'enveloppe publique CurrentThreadSettings.getLocale() et setLocale() au lieu du privé `Thread.CurrentThread`.Culture actuelle)

L'utilisation de la culture actuelle pour formater les champs permet à un système de contrôler facilement et systématiquement la façon dont tous les champs du document sont formatés pendant la mise à jour sur le terrain.

### Formatage en utilisant la culture dans le document

D'autre part, Microsoft Word formate chaque champ individuel en fonction de la langue du texte trouvé dans le champ (en particulier, les parcours à partir du code de champ). Parfois, lors de la mise à jour du champ, cela peut être le comportement souhaité, par exemple si vous avez des documents globalisés contenant du contenu composé de nombreuses langues différentes et que vous souhaitez que chaque champ honore le local utilisé à partir du texte. Aspose.Words prend également en charge cette fonctionnalité.

Les [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe fournit une [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) propriété qui contient des membres qui peuvent être utilisés pour contrôler comment les champs sont mis à jour dans le document.

L'exemple de code suivant montre comment spécifier où la culture utilisée pour le formatage des dates pendant la mise à jour sur le terrain et mail merge est choisi parmi:

EXEMPLE
