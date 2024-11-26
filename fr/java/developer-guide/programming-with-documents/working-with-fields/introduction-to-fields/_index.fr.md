---
title: Introduction aux champs dans Java
second_title: Aspose.Words pour Java
articleTitle: Introduction aux Champs
linktitle: Introduction aux Champs
description: "Les champs sont détaillés, les codes de champ et les résultats de champ expliqués dans Aspose.Words pour Java."
type: docs
weight: 10
url: /fr/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words est une bibliothèque de classes conçue pour le traitement côté serveur des documents Microsoft Word et prend en charge les champs des manières suivantes:

- tous les champs d'un document sont conservés pendant l'ouverture / l'enregistrement et les conversions
- il est possible de mettre à jour les résultats de la plupart des champs

Dans cet article, nous en apprendrons plus sur la structure des champs, les champs pris en charge dans Aspose.Words et les détails de l'utilisation de ces champs.

## Structure du Champ

Un champ se compose de:

- Les nœuds de début et de séparation du champ sont utilisés pour englober le contenu qui compose le code du champ (normalement en texte brut).
- Le séparateur de champ et la fin de champ englobent le résultat du champ. Cela peut être composé de différents types de contenu allant des suites de texte aux paragraphes en passant par les tableaux.
- Certains champs peuvent ne pas avoir de séparateur, ce qui signifie que tout le contenu constitue le code du champ.
- Le code de champ définit le comportement du champ et est composé de l'identifiant du champ et souvent d'autres paramètres tels que le nom du champ et les commutateurs.
- Le résultat du champ contient l'évaluation la plus récente du champ. Cette valeur est stockée dans le résultat du champ et est ce qui est affiché à l'utilisateur. Certains champs peuvent ne pas avoir de résultat de champ et n'afficheront donc rien dans le document. De même, certains champs peuvent ne pas être mis à jour mais n'auront donc également aucun résultat de champ.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

Le contenu qui compose le code de champ est stocké sous la forme de [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) nœuds entre [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) et [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). Le résultat du champ est stocké entre les nœuds **FieldSeparator** et [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) et peut être composé de différents types de contenu. Normalement, le résultat du champ ne contient que du texte composé de nœuds d'exécution, mais il est possible que le nœud FieldEnd soit situé dans un paragraphe complètement différent, ce qui rend le résultat du champ composé de [nœuds de niveau bloc](/words/java/logical-levels-of-nodes-in-a-document/) tels que les nœuds **Table** et **Paragraph** également.

Voici une vue de la façon dont un champ est stocké dans Aspose.Words en utilisant l'exemple " *DocumentExplorer"* qui peut être trouvé sur [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Champs dans Aspose.Words Modèle d'objet de document (DOM)

Lorsqu'un document est chargé dans Aspose.Words, les champs du document sont chargés dans le modèle d'objet de document Aspose.Words en tant qu'ensemble de composants distincts (nœuds). Un seul champ est chargé en tant que collection de nœuds **FieldStart**, **FieldSeparator** et **FieldEnd** avec le contenu entre ces nœuds. Si un champ n'a pas de résultat de champ, il n'y aura pas de nœud **FieldSeparator**. Tous ces nœuds sont toujours trouvés en ligne (en tant qu'enfants de [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) ou [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

Dans Aspose.Words chacun des **FieldXXX** nœuds dérive de [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). Cette classe fournit une propriété pour vérifier le type de champ représenté par le nœud spécifié via la propriété [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/). Par exemple, `FieldType.FieldMergeField` représente un champ de fusion dans le document.

{{% alert color="primary" %}}

Certains champs particuliers qui existent dans un document Word ne sont pas importés dans Aspose.Words en tant que collection de nœuds **FieldXXX**. Par exemple, le champ `LINK` et le champ `INCLUDEPICTURE` sont importés dans Aspose.Words en tant qu'objet [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/). Cet objet fournit des propriétés pour travailler avec les données d'image normalement stockées dans ces champs. Pour importer un champ `INCLUDEPICTURE` en tant que nœuds **FieldXXX**, l'option [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) doit être spécifiée en tant que **true**.

Les champs de formulaire sont également importés dans Aspose.Words en tant que leur propre classe spéciale. La classe [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) représente un champ de formulaire dans un document Word et fournit des méthodes supplémentaires spécifiques à un champ de formulaire.

{{% /alert %}}

## Champs Pris en Charge

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
- `TOC` (including TOT and TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Analyse Sophistiquée des Champs

Aspose.Words suit la façon dont Microsoft Word traite les champs et, par conséquent, il gère correctement:

- champs imbriqués:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- l'argument de champ peut être le résultat d'un champ imbriqué
- les champs peuvent être imbriqués dans un code de champ ainsi que dans le résultat du champ
- espaces / pas d'espaces, guillemets / pas de guillemets, caractères d'échappement dans les champs, etc.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- champs qui s'étendent sur plusieurs paragraphes

### Champs de Formule

Aspose.Words fournit une implémentation très sérieuse du moteur de formule et prend en charge les éléments suivants:

- opérateurs arithmétiques et logiques:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- fonctions:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- références aux signets:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- commutateurs de formatage des nombres:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Les fonctions suivantes dans les expressions sont prises en charge: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Quelques-unes des expressions `IF` que Aspose.Words peut facilement calculer devraient vous donner une idée de la puissance de cette fonctionnalité:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words prend en charge tous les commutateurs de formatage de date et d'heure disponibles dans Microsoft Word, quelques exemples sont:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Champs

Aspose.Words n'impose aucune limite à la complexité des champs Mail Merge dans vos documents et prend en charge les champs imbriqués `IF` et de formule et peut même calculer le nom du champ de fusion à l'aide d'une formule.

Quelques exemples de champs Mail Merge pris en charge par Aspose.Words:

- Mail merge commutateurs de champ:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- champs de fusion imbriqués dans une formule:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- calculer le nom du champ de fusion au moment de l'exécution:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- déplacement conditionnel vers l'enregistrement suivant dans la source de données:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Commutateurs de Format

Un champ dans un document peut avoir des commutateurs de formatage qui spécifient comment la valeur résultante doit être formatée. Aspose.Words prend en charge les commutateurs de format suivants:

- @ - formatage de la date et de l'heure
- \\\# - formatage des nombres
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* Lower
- \\\\\\\\* Upper
- \\\\\\\\* CHARFORMAT - formater le résultat en fonction du premier caractère du code du champ
- \\\\\\\\* MERGEFORMAT - formater le résultat en fonction de la façon dont l'ancien résultat est formaté

### Mise en forme de la date et du nombre dans les champs

Lorsque Aspose.Words calcule un résultat de champ, il doit souvent analyser une chaîne en un nombre ou une valeur de date et également la reformater en un string.By la valeur par défaut Aspose.Words utilise la culture de thread actuelle pour effectuer l'analyse et la mise en forme lors du calcul des valeurs de champ pendant la mise à jour du champ et mail merge. Il existe également des options fournies sous la forme de la classe [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) qui permet un contrôle supplémentaire sur la culture utilisée lors de la mise à jour des champs%

* par défaut, la propriété [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) est définie sur [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) qui formate les champs en utilisant la culture de thread actuelle
* cette propriété peut être définie sur [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) afin que la langue définie à partir du code de champ du champ soit utilisée à la place pour le formatage

### Formatage en utilisant la culture du thread actuel

Pour contrôler la culture utilisée lors du calcul du champ, définissez simplement la propriété **CurrentCulture** sur une culture de votre choix avant d'appeler le calcul du champ.

L'exemple de code suivant montre comment modifier la culture utilisée dans les champs de formatage lors de la mise à jour:

EXAMPLE (utilisez le wrapper public CurrentThreadSettings.getLocale () et setLocale () au lieu du `Thread.CurrentThread` privé.CurrentCulture)

L'utilisation de la culture actuelle pour formater les champs permet à un système de contrôler facilement et de manière cohérente la mise en forme de tous les champs du document lors de la mise à jour des champs.

### Formatage en utilisant la culture dans le document

D'autre part, Microsoft Word formate chaque champ individuel en fonction de la langue du texte trouvé dans le champ (en particulier, les exécutions à partir du code du champ). Parfois, lors de la mise à jour des champs, cela peut être le comportement souhaité, par exemple si vous avez des documents globalisés contenant du contenu composé de nombreuses langues différentes et que vous souhaitez que chaque champ respecte les paramètres régionaux utilisés dans le texte. Aspose.Words prend également en charge cette fonctionnalité.

La classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) fournit une propriété [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) qui contient des membres qui peuvent être utilisés pour contrôler la façon dont les champs sont mis à jour dans le document.

L'exemple de code suivant montre comment spécifier où la culture utilisée pour le formatage de la date lors de la mise à jour du champ et Mail Merge est choisie:

EXAMPLE
