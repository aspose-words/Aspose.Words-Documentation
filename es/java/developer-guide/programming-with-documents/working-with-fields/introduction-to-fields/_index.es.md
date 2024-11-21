---
title: Introducción a los campos en Java
second_title: Aspose.Words para Java
articleTitle: Introducción a los campos
linktitle: Introducción a los campos
description: "Campo característica en detalles, códigos de campo y resultados de campo explicados en Aspose.Words para Java."
type: docs
weight: 10
url: /es/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words es una biblioteca de clase diseñada para el procesamiento del lado servidor Microsoft Word documentos y soporte campos de la siguiente manera:

- todos los campos de un documento se conservan durante la apertura/salida y conversiones
- es posible actualizar los resultados de la mayoría de los campos

En este artículo aprenderemos más sobre la estructura de campo, los campos apoyados en Aspose.Words, y detalles de trabajar con tales campos.

## Estructura de campo

Un campo consiste en:

- Los nodos de inicio de campo y separador se utilizan para abarcar el contenido que compone el código de campo (normalmente como texto plano).
- El separador de campo y el extremo de campo abarcan el resultado de campo. Esto se puede componer de varios tipos de contenidos que van desde las series de texto a párrafos a tablas.
- Algunos campos pueden no tener un separador que significa que todo el contenido compone el código de campo.
- El código de campo define el comportamiento del campo y está compuesto por el identificador de campo y a menudo otros parámetros como el nombre de campo y los interruptores.
- El resultado sobre el terreno contiene la evaluación más reciente del terreno. Este valor se almacena en el resultado del campo y es lo que se muestra al usuario. Algunos campos pueden no tener ningún resultado de campo por lo tanto no mostrará nada en el documento. Del mismo modo, algunos campos pueden no ser actualizados, por lo que tampoco tendrán ningún resultado de campo.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

El contenido que compone el código de campo se almacena como [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) nodos entre los [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) y [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). El resultado del campo se almacena entre el **FieldSeparator** y [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) nodos y se pueden componer de varios tipos de contenidos. Normalmente el resultado del campo contiene sólo texto compuesto de los nodos Run, sin embargo es posible que el nodo FieldEnd esté situado en un párrafo completamente diferente, y por lo tanto hacer el resultado del campo compuesto de [Niveles lógicos de los ganglios en un documento](/words/es/java/logical-levels-of-nodes-in-a-document/) tales como **Table** y **Paragraph** nodos también.

Aquí está la vista de cómo se almacena un campo Aspose.Words utilizando el ejemplo "*DocumentExplorer"* que se puede encontrar [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Campos en Aspose.Words Document Object Model (G)DOM)

Cuando un documento se carga en <span notrans="<span notrans=" Aspose.Words"=""></span>," los campos del documento se cargan en Aspose.Words Document Object Model como un conjunto de componentes separados (nodos). Un solo campo se carga como una colección de **FieldStart**, **FieldSeparator** y **FieldEnd** nodos junto con el contenido entre estos nodos. Si un campo no tiene un resultado de campo entonces no habrá **FieldSeparator** Nodo. Todos estos nodos siempre se encuentran inline (como hijos de [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) o [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

In Aspose.Words cada uno de los **FieldXXX** nodos deriva de [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). Esta clase proporciona una propiedad para comprobar el tipo de campo representado por el nodo especificado a través del [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) propiedad. Por ejemplo `FieldType.FieldMergeField` representa un campo de fusión en el documento.

{{% alert color="primary" %}}

Hay algunos campos particulares que existen en un documento de Word que no se importan en Aspose.Words como colección de **FieldXXX** nodos. Por ejemplo, `LINK` sobre el terreno y `INCLUDEPICTURE` sobre el terreno se importa Aspose.Words como [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) objeto. Este objeto proporciona propiedades para trabajar con los datos de imagen normalmente almacenados en estos campos. Importar `INCLUDEPICTURE` sobre el terreno **FieldXXX** nodos [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) opción debe especificarse como **true**.

Los campos de formularios también se importan Aspose.Words como su propia clase especial. El [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) clase representa un campo de forma en un documento de Word y proporciona métodos adicionales que son particulares a un campo de forma.

{{% /alert %}}

## Campos de apoyo

Cálculo de los siguientes campos es compatible en la versión actual de Aspose.Words:

- = (formula)
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
- `TOC` (incluyendo TOT y TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Pase de campo sofisticado

Aspose.Words sigue el camino Microsoft Word procesos campos y como resultado maneja correctamente:

- campos anidados:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- el argumento de campo puede ser el resultado de un campo anidado
- los campos pueden ser anidados dentro de un código de campo, así como en el resultado del campo
- espacios/no espacios, citas/no citas, personajes de escape en campos, etc.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- campos que abarcan varios párrafos

### Fórmula Fields

Aspose.Words proporciona una aplicación muy seria del motor de fórmula y apoya lo siguiente:

- operadores aritméticos y lógicos:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funciones:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- referencias a marcadores:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- conmutadores de formato número:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Se apoyan las siguientes funciones en las expresiones: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` y `COMPARE` Campos

Sólo algunos de los `IF` expresiones que Aspose.Words puede calcular fácilmente debe darle una idea de lo poderoso que es esta característica:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` y `TIME` Campos

Aspose.Words soporta todos los conmutadores de formato de fecha y hora disponibles en Microsoft Word, algunos ejemplos son:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Campos

Aspose.Words no impone límite a la complejidad mail merge campos en sus documentos y soportes anidados `IF` y campos de fórmula e incluso puede calcular el nombre del campo de fusión usando una fórmula.

Algunos ejemplos de mail merge campos que Aspose.Words soportes:

- Mail merge interruptores de campo:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- campos de fusión anidados en una fórmula:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- calcular el nombre del campo de fusión en tiempo de ejecución:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- movimiento condicional al siguiente registro en la fuente de datos:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Switches de formato

Un campo en un documento puede tener interruptores de formato que especifican cómo debe formatear el valor resultante. Aspose.Words soporta los siguientes conmutadores de formato:

- @ - formato de fecha y hora
- \\\# - formato número
- ¿Qué? Caps
- Primera Cap
- ¿Qué? Bajo
- ¿Qué? Alto
- \\\\\\\\\\* CHARFORMAT - resultado de formato según el primer carácter del código de campo
- \\\\\\\\\\\* MERGEFORMAT - resultado de formato según el formato del viejo resultado

### Date and Number Formatting in Fields

Cuando Aspose.Words calcula un resultado de campo, que a menudo necesita parse una cadena en un valor número o fecha y también para formatearla de nuevo a una cadena. Por defecto Aspose.Words utiliza la actual cultura de hilo para realizar el análisis y el formato al calcular los valores de campo durante la actualización de campo y mail merge. También hay opciones proporcionadas en forma de [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) clase que permite un control adicional sobre qué cultura se utiliza durante la actualización de campo%

* por defecto [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) propiedad se establece [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) que formatos campos utilizando la actual cultura del hilo
* esta propiedad se puede configurar [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) por lo que el lenguaje establecido en el código de campo del campo se utiliza para formatear en su lugar

### Formato utilizando la cultura actual del pan

Para controlar la cultura utilizada durante el cálculo del campo, simplemente establecer el **CurrentCulture** propiedad a una cultura de su elección antes de invocar cálculo de campo.

El siguiente ejemplo de código muestra cómo cambiar la cultura utilizada en los campos de formato durante la actualización:

EXAMPLE (utiliza el envoltorio público ActualThreadSettings.getLocale() y setLocale() en lugar de la privada `Thread.CurrentThread`.CurrentCulture)

Utilizar la cultura actual para formatear campos permite que un sistema controle de forma fácil y consistente cómo todos los campos del documento se formatean durante la actualización de campo.

### Formato utilizando la Cultura en el Documento

Por otro lado, Microsoft Word formatos cada campo individual basado en el lenguaje del texto encontrado en el campo (específicamente, las carreras del código de campo). A veces durante la actualización de campo puede ser el comportamiento deseado, por ejemplo si usted tiene documentos globalizados que contienen contenido compuesto de muchos idiomas diferentes y quisiera que cada campo honrara al local utilizado del texto. Aspose.Words también soporta esta funcionalidad.

El [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) clase proporciona una [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) propiedad que contiene miembros que pueden utilizarse para controlar cómo se actualizan los campos dentro del documento.

El siguiente ejemplo de código muestra cómo especificar dónde se utiliza la cultura para el formato de fecha durante la actualización del campo y mail merge es elegido de:

EXAMPLEO
