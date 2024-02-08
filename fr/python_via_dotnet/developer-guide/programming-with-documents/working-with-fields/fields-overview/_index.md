---
title: Présentation des champs dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Aperçu des champs
linktitle: Aperçu des champs
description: "Vous pouvez accéder à la modification des champs à l'aide de Python. Les champs du document sont chargés dans le format Aspose.Words Document Object Model (DOM)."
type: docs
weight: 10
url: /fr/python-net/fields-overview/
---


Habituellement, un champ, lorsqu'il est inséré dans Microsoft Word, contient déjà une valeur à jour. Par exemple, si le champ est une formule ou un numéro de page, il contiendra une valeur calculée correcte pour la version donnée du document. Mais si vous disposez d'une application qui génère ou modifie un document avec des champs (par exemple combine deux documents ou remplit des données) alors pour que le document soit utile, tous les champs doivent idéalement être mis à jour.

Un champ est composé de:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- Les nœuds de début de champ et de séparateur sont utilisés pour englober le contenu qui constitue le code de champ (normalement sous forme de texte brut)
- Le séparateur de champ et la fin du champ englobent le résultat du champ. Celui-ci peut être composé de différents types de contenu allant des séquences de texte aux paragraphes en passant par les tableaux.
- Certains champs peuvent ne pas avoir de séparateur, ce qui signifie que tout le contenu constitue le code du champ.
- Le code de champ définit le comportement du champ et comprend l'identifiant du champ et souvent d'autres paramètres tels que le nom du champ et les commutateurs.
- Le résultat du champ contient l'évaluation la plus récente du champ. Cette valeur est stockée dans le résultat du champ et est ce qui est affiché à l'utilisateur. Certains champs peuvent ne pas avoir de résultat et n'afficheront donc rien dans le document. De même, certains champs peuvent ne pas encore être mis à jour et n'auront donc aucun résultat de champ.

Voici une vue de la façon dont un champ est stocké dans Aspose.Words en utilisant l'exemple "*DocumentExplorer"* qui peut être trouvé sur [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words est une bibliothèque de classes conçue pour le traitement côté serveur des documents Microsoft Word et prend en charge les champs des manières suivantes:

- Tous les champs d'un document sont conservés lors de l'ouverture/sauvegarde et des conversions.
- Il est possible de mettre à jour les résultats de certains des champs les plus populaires.

## Champs dans Microsoft Word

Les champs des documents Microsoft Word sont complexes. Il existe plus de 50 types de champs (chacun nécessite sa propre procédure de calcul des résultats), des formules et expressions, des signets et des références, des fonctions et divers commutateurs. Les champs peuvent également être imbriqués. Normalement, lorsqu'un document est ouvert, le résultat du champ (la valeur du champ) est affiché pour tous les champs du document. Vous pouvez basculer l'affichage du résultat du champ ou des codes de champ dans Microsoft Word pour tous les champs en appuyant sur **ALT+F9**.

| Code de champ | Résultat du champ |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Insertion de champs dans Microsoft Word

Pour insérer un champ dans Microsoft Word:

1. Cliquez sur le menu **Insert**.
1. Cliquez sur le menu déroulant **Quick Parts**
1. Sélectionnez **Field**
1. Un écran vous permet de saisir les détails du champ. Sur le côté gauche, vous voyez une liste des champs possibles et sur le côté droit se trouve un écran pour modifier visuellement les propriétés du champ.<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. De plus, vous pouvez appuyer sur le bouton **Field Codes** qui vous permet d'écrire directement le code du champ.<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. Les commutateurs peuvent également être insérés à l'aide du bouton **Options**<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. Quelle que soit la méthode utilisée, remplissez les champs souhaités avec les informations appropriées, puis appuyez sur **Ok**.
1. Le champ est inséré dans le document à la position actuelle du curseur.<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Mise à jour des champs dans Microsoft Word

Pour mettre à jour un seul champ dans Microsoft Word:

1. Déplacez le curseur dans le champ que vous souhaitez mettre à jour.
1. Appuyez sur **F9** pour mettre à jour le champ.

Pour mettre à jour tous les champs dans Microsoft Word:

1. Appuyez sur **Ctrl+A** pour sélectionner tout le contenu du document.
1. Appuyez sur **F9** pour mettre à jour tous les champs trouvés dans la sélection.

### Basculement entre l'affichage du code de champ et le résultat du champ

Pour basculer les codes de champ d'un seul champ dans Microsoft Word:

1. Déplacez le curseur dans le champ souhaité.
1. Appuyez sur **MAJ+F9** pour basculer le code de champ uniquement pour ce champ.

Pour basculer les codes de champ de tous les champs dans Microsoft Word:

1. Appuyez sur **ALT+F9**

### Conversion de champs en texte statique dans Microsoft Word

Pour convertir un champ dynamique en texte statique dans Microsoft Word:

1. Déplacez le curseur dans le champ que vous souhaitez convertir.
1. Appuyez sur **Ctrl+Maj+F9** pour convertir les champs en texte statique.

### Supprimer un champ dans Microsoft Word

Pour supprimer un champ dans Microsoft Word:

1. Sélectionnez tout le contenu composant le champ. Si les codes de champ sont affichés, les accolades d'ouverture et de fin doivent également être sélectionnées.
1. Appuyez sur **Delete** pour supprimer tout le champ.

## Champs dans Aspose.Words

Lorsqu'un document est chargé dans Aspose.Words, les champs du document sont chargés dans Aspose.Words Document Object Model sous la forme d'un ensemble de composants distincts (nœuds). Un seul champ est chargé sous la forme d'une collection de nœuds [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) et [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) avec le contenu situé entre ces nœuds. Si un champ n'a pas de résultat de champ, il n'y aura pas de nœud [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Tous ces nœuds se trouvent toujours en ligne (en tant qu'enfants de [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ou [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

Le contenu qui constitue le code du champ est stocké sous forme de nœuds [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) entre le [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) et le [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Le résultat du champ est stocké entre les nœuds [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) et [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) et peut être constitué de différents types de contenu. Normalement, le résultat du champ contient uniquement du texte composé de nœuds [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), mais il est possible que le nœud [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) soit situé dans un paragraphe complètement différent, ce qui rend le résultat du champ également composé de nœuds de niveau bloc tels que les nœuds [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) et [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

Dans Aspose.Words, chacun des nœuds **FieldXXX** dérive de [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Cette classe fournit une propriété pour vérifier le type de champ représenté par le nœud spécifié via la propriété [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/). Par exemple, [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) représente un champ de fusion dans le document.

{{% alert color="primary" %}}

Certains champs particuliers existent dans un document Word qui ne sont pas importés dans Aspose.Words en tant que collection de nœuds **FieldXXX**. Par exemple, le champ `LINK` et le champ `INCLUDEPICTURE` sont importés dans Aspose.Words en tant qu'objet [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/). Cet objet fournit des propriétés permettant de travailler avec les données d'image normalement stockées dans ces champs.

Les champs de formulaire sont également importés dans Aspose.Words en tant que classe spéciale. La classe [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) représente un champ de formulaire dans un document Word et fournit des méthodes supplémentaires spécifiques à un champ de formulaire.

{{% /alert %}}

### Champs pris en charge lors de la mise à jour

Le calcul des champs suivants est pris en charge dans la version actuelle de Aspose.Words:

- = (champ de formule)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (y compris TOT et TOF)
- TC

### Analyse sophistiquée

Aspose.Words suit la façon dont Microsoft Word traite les champs et, par conséquent, il gère correctement:

- Champs imbriqués
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- L'argument champ peut être le résultat d'un champ imbriqué.
- Les champs peuvent être imbriqués dans un code de champ ainsi que dans le résultat du champ.
- Espaces/pas d'espaces, guillemets/pas de guillemets, caractères d'échappement dans les champs etc.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Champs qui s'étendent sur plusieurs paragraphes.

#### Champs de formule

Aspose.Words fournit une implémentation très sérieuse du moteur de formule et prend en charge les éléments suivants:

- Opérateurs arithmétiques et logiques:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Les fonctions:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Références aux signets:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Commutateurs de formatage des nombres:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Les fonctions suivantes dans les expressions sont prises en charge: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### Champs `IF` et `COMPARE`

Quelques-unes des expressions `IF` que Aspose.Words peut facilement calculer devraient vous donner une idée de la puissance de cette fonctionnalité:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### Champs `DATE` et `TIME`

Aspose.Words prend en charge tous les commutateurs de formatage de date et d'heure disponibles dans Microsoft Word, en voici quelques exemples:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Champs Mail Merge

Aspose.Words n'impose aucune limite à la complexité des champs mail merge dans vos documents et prend en charge les champs `IF` et de formule imbriqués et peut même calculer le nom du champ de fusion à l'aide d'une formule.

Quelques exemples de champs mail merge pris en charge par Aspose.Words:

- Commutateurs de champ Mail merge:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Champs de fusion imbriqués dans une formule:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Calculez le nom du champ de fusion au moment de l'exécution:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Déplacement conditionnel vers l'enregistrement suivant dans la source de données:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### Commutateurs de format

Un champ dans un document peut avoir des commutateurs de formatage qui spécifient comment la valeur résultante doit être formatée. Aspose.Words prend en charge les commutateurs de format suivants:

- @ - formatage de la date et de l'heure
- \\\# - formatage des nombres
- \\\\\\\\* Casquettes
- \\\\\\\\* PremierCap
- \\\\\\\\* Inférieur
- \\\\\\\\* Supérieur
- \\\\\\\\* CHARFORMAT – formate le résultat en fonction du premier caractère du code de champ.
- \\\\\\\\* MERGEFORMAT – formate le résultat en fonction de la façon dont l'ancien résultat est formaté.

#### Date et formatage des nombres dans les champs

Lorsque Aspose.Words calcule un résultat de champ, il doit souvent analyser une chaîne en une valeur numérique ou de date et également la reformater en chaîne. Par défaut, Aspose.Words utilise la culture de thread actuelle pour effectuer l'analyse et le formatage lors du calcul des valeurs de champ lors de la mise à jour du champ. et mail merge. Il existe également des options fournies sous la forme de la classe [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) qui permettent un contrôle plus approfondi sur la culture utilisée lors de la mise à jour des champs.

- Par défaut, la propriété [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) est définie sur [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread), ce qui formate les champs en utilisant la culture de thread actuelle.
- Cette propriété peut être définie sur [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) afin que la langue définie à partir du code de champ du champ soit utilisée pour le formatage.

#### Formatage à l'aide de la culture du fil de discussion actuel

Pour contrôler la culture utilisée lors du calcul du champ, utilisez simplement la méthode **locale.setlocale** pour définir la culture de votre choix avant d'appeler le calcul du champ.
L'exemple ci-dessous montre comment modifier la culture utilisée dans le formatage des champs lors de la mise à jour.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

L'utilisation de la culture actuelle pour formater les champs permet à un système de contrôler facilement et de manière cohérente la façon dont tous les champs du document sont formatés lors de la mise à jour des champs.

#### Formatage à l'aide de la culture du document

D'autre part, Microsoft Word formate chaque champ individuel en fonction de la langue du texte trouvé dans le champ (en particulier, les extraits du code du champ). Parfois, lors de la mise à jour des champs, cela peut être le comportement souhaité, par exemple si vous avez des documents globalisés contenant du contenu composé de nombreuses langues différentes et que vous souhaitez que chaque champ respecte les paramètres régionaux utilisés dans le texte. Aspose.Words prend également en charge cette fonctionnalité.

La classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) fournit une propriété [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) qui contient des membres qui peuvent être utilisés pour contrôler la manière dont les champs sont mis à jour dans le document. L'exemple ci-dessous montre comment spécifier où est choisie la culture utilisée pour le formatage de la date lors de la mise à jour des champs et mail merge.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Recherche du code de champ et du résultat du champ

Un champ inséré à l'aide de [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) renvoie un objet [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Il s'agit d'une classe de façade qui fournit des méthodes utiles pour trouver rapidement de telles propriétés d'un champ. Notez que si vous recherchez uniquement les noms des champs de fusion dans le document, vous pouvez utiliser la méthode [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) intégrée. L'exemple ci-dessous montre comment obtenir les noms de tous les champs de fusion dans un document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Comment renommer les champs de fusion

L'exemple ci-dessous montre comment renommer les champs de fusion dans un document Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
