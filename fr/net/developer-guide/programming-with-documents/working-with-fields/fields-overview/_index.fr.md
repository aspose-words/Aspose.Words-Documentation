---
title: Présentation des champs dans C#
second_title: Aspose.Words pour .NET
articleTitle: Aperçu des champs
linktitle: Aperçu des champs
description: "Les champs présentent des détails, des codes de champ et des résultats de champ expliqués dans Aspose.Words pour .NET."
type: docs
weight: 10
url: /fr/net/fields-overview/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words est une bibliothèque de classes conçue pour le traitement côté serveur des documents Microsoft Word et prend en charge les champs des manières suivantes:

- tous les champs d'un document sont conservés lors de l'ouverture/sauvegarde et des conversions
- il est possible de mettre à jour les résultats de la plupart des champs

Dans cet article, nous en apprendrons plus sur la structure des champs, les champs pris en charge dans Aspose.Words et les détails de l'utilisation de ces champs.

## Structure du champ

Un champ est composé de:

- Les nœuds de début de champ et de séparateur sont utilisés pour englober le contenu qui constitue le code de champ (normalement sous forme de texte brut).
- Le séparateur de champ et la fin du champ englobent le résultat du champ. Celui-ci peut être composé de différents types de contenu allant des séquences de texte aux paragraphes en passant par les tableaux.
- Certains champs peuvent ne pas avoir de séparateur, ce qui signifie que tout le contenu constitue le code du champ.
- Le code de champ définit le comportement du champ et comprend l'identifiant du champ et souvent d'autres paramètres tels que le nom du champ et les commutateurs.
- Le résultat du champ contient l'évaluation la plus récente du champ. Cette valeur est stockée dans le résultat du champ et est ce qui est affiché à l'utilisateur. Certains champs peuvent ne pas avoir de résultat et n'afficheront donc rien dans le document. De même, certains champs peuvent ne pas encore être mis à jour et n'auront donc aucun résultat de champ.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

Le contenu qui constitue le code du champ est stocké sous forme de nœuds [Run](https://reference.aspose.com/words/fr/net/aspose.words/run/) entre le [FieldStart](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldstart/) et le [FieldSeparator](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldseparator/). Le résultat du champ est stocké entre les nœuds **FieldSeparator** et [FieldEnd](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldend/) et peut être constitué de différents types de contenu. Normalement, le résultat du champ contient uniquement du texte composé de nœuds **Run**, mais il est possible que le nœud **FieldEnd** soit situé dans un paragraphe complètement différent, ce qui rend le résultat du champ également composé de nœuds [Niveaux logiques des nœuds dans un document](/words/fr/net/logical-levels-of-nodes-in-a-document/) tels que **Table** et **Paragraph**.

Voici une vue de la façon dont un champ est stocké dans Aspose.Words en utilisant l'exemple "*DocumentExplorer"* qui peut être trouvé sur [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Champs dans le Aspose.Words Document Object Model (DOM)

Lorsqu'un document est chargé dans Aspose.Words, les champs du document sont chargés dans le [Aspose.Words Document Object Model (DOM)](/words/fr/net/aspose-words-document-object-model/) sous la forme d'un ensemble de composants distincts (nœuds). Un seul champ est chargé sous la forme d'une collection de nœuds **FieldStart**, **FieldSeparator** et **FieldEnd** avec le contenu situé entre ces nœuds. Si un champ n'a pas de résultat de champ, il n'y aura pas de nœud **FieldSeparator**. Tous ces nœuds se trouvent toujours en ligne (en tant qu'enfants de [Paragraph](https://reference.aspose.com/words/fr/net/aspose.words/paragraph/) ou [SmartTag](https://reference.aspose.com/words/fr/net/aspose.words.markup/smarttag/).

Dans Aspose.Words, chacun des nœuds **FieldXXX** dérive de [FieldChar](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldchar/). Cette classe fournit une propriété pour vérifier le type de champ représenté par le nœud spécifié via la propriété [FieldType](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldtype/). Par exemple, **FieldType.FieldMergeField** représente un champ de fusion dans le document.

{{% alert color="primary" %}}

Certains champs particuliers existent dans un document Word qui ne sont pas importés dans Aspose.Words en tant que collection de nœuds **FieldXXX**. Par exemple, le champ `LINK` et le champ `INCLUDEPICTURE` sont importés dans Aspose.Words en tant qu'objet [Shape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/). Cet objet fournit des propriétés permettant de travailler avec les données d'image normalement stockées dans ces champs. Pour importer un champ `INCLUDEPICTURE` en tant que nœuds **FieldXXX**, l'option [PreserveIncludePictureField](https://reference.aspose.com/words/fr/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) doit être spécifiée comme **true**.

Les champs de formulaire sont également importés dans Aspose.Words en tant que classe spéciale. La classe [FormField](https://reference.aspose.com/words/fr/net/aspose.words.fields/formfield/) représente un champ de formulaire dans un document Word et fournit des méthodes supplémentaires spécifiques à un champ de formulaire.

{{% /alert %}}

## Champs pris en charge

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
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Analyse de champ sophistiquée

Aspose.Words suit la façon dont Microsoft Word traite les champs et, par conséquent, il gère correctement:

- champs imbriqués:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- l'argument du champ peut être le résultat d'un champ imbriqué
- les champs peuvent être imbriqués dans un code de champ ainsi que dans le résultat du champ
- espaces/pas d'espaces, guillemets/pas de guillemets, caractères d'échappement dans les champs etc.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- des champs qui s'étendent sur plusieurs paragraphes

### Champs de formule

Aspose.Words fournit une implémentation très sérieuse du moteur de formule et prend en charge les éléments suivants:

- opérateurs arithmétiques et logiques:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- les fonctions:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- références aux signets:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- commutateurs de formatage des nombres:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Les fonctions suivantes dans les expressions sont prises en charge: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### Champs `IF` et `COMPARE`

Quelques-unes des expressions `IF` que Aspose.Words peut facilement calculer devraient vous donner une idée de la puissance de cette fonctionnalité:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### Champs `DATE` et `TIME`

Aspose.Words prend en charge tous les commutateurs de formatage de date et d'heure disponibles dans Microsoft Word, en voici quelques exemples:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Champs Mail Merge

Aspose.Words n'impose aucune limite à la complexité des champs Mail Merge dans vos documents et prend en charge les champs `IF` et de formule imbriqués et peut même calculer le nom du champ de fusion à l'aide d'une formule.

Quelques exemples de champs Mail Merge pris en charge par Aspose.Words:

- Commutateurs de champ Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- champs de fusion imbriqués dans une formule:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- calculer le nom du champ de fusion au moment de l'exécution:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- déplacement conditionnel vers l'enregistrement suivant dans la source de données:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Commutateurs de format

Un champ dans un document peut avoir des commutateurs de formatage qui spécifient comment la valeur résultante doit être formatée. Aspose.Words prend en charge les commutateurs de format suivants:

- \\\@ – formatage de la date et de l'heure
- \\\# – formatage des nombres
- \\\* Casquettes
- \\\* PremierCap
- \\\* Inférieur
- \\\* Supérieur
- \\\* CHARFORMAT – formater le résultat en fonction du premier caractère du code du champ
- \\\* MERGEFORMAT – formater le résultat en fonction de la façon dont l'ancien résultat est formaté

### Date et formatage des nombres dans les champs

Lorsque Aspose.Words calcule un résultat de champ, il doit souvent analyser une chaîne en une valeur numérique ou de date et également la reformater en chaîne. Par défaut, Aspose.Words utilise la culture de thread actuelle pour effectuer l'analyse et le formatage lors du calcul des valeurs de champ lors de la mise à jour du champ. et mail merge. Il existe également des options fournies sous la forme de la classe [FieldOptions](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldoptions/) qui permettent un contrôle plus approfondi sur la culture utilisée lors de la mise à jour des champs.

- par défaut, la propriété [FieldUpdateCultureSource](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) est définie sur [CurrentThread](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldupdateculturesource/), ce qui formate les champs en utilisant la culture du thread actuel
- cette propriété peut être définie sur [FieldCode](https://reference.aspose.com/words/fr/net/aspose.words.fields/fieldupdateculturesource/) afin que la langue définie à partir du code de champ du champ soit utilisée pour le formatage à la place

### Formatage à l'aide de la culture du fil de discussion actuel

Pour contrôler la culture utilisée lors du calcul de champ, définissez simplement la propriété **Thread.CurrentThread.CurrentCulture** sur une culture de votre choix avant d'appeler le calcul de champ.

L'exemple de code suivant montre comment modifier la culture utilisée dans le formatage des champs lors de la mise à jour:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

L'utilisation de la culture actuelle pour formater les champs permet à un système de contrôler facilement et de manière cohérente la façon dont tous les champs du document sont formatés lors de la mise à jour des champs.

### Formatage à l'aide de la culture du document

D'autre part, Microsoft Word formate chaque champ individuel en fonction de la langue du texte trouvé dans le champ (en particulier, les extraits du code du champ). Parfois, lors de la mise à jour des champs, cela peut être le comportement souhaité, par exemple si vous avez des documents globalisés contenant du contenu composé de nombreuses langues différentes et que vous souhaitez que chaque champ respecte les paramètres régionaux utilisés dans le texte. Aspose.Words prend également en charge cette fonctionnalité.

La classe [Document](https://reference.aspose.com/words/fr/net/aspose.words/document/) fournit une propriété [FieldOptions](https://reference.aspose.com/words/fr/net/aspose.words/document/fieldoptions/) qui contient des membres qui peuvent être utilisés pour contrôler la façon dont les champs sont mis à jour dans le document.

L'exemple de code suivant montre comment spécifier l'emplacement parmi lequel choisir la culture utilisée pour le formatage de la date lors de la mise à jour des champs et de mail merge:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
