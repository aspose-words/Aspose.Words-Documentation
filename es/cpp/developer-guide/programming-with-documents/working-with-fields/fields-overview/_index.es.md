---
title: Descripción general de los campos en C++
second_title: Aspose.Words para C++
articleTitle: Descripción General de los Campos
linktitle: Descripción General de los Campos
description: "Los campos aparecen en detalles, códigos de campo y resultados de campo explicados en Aspose.Words para C++."
type: docs
weight: 10
url: /es/cpp/fields-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words es una biblioteca de clases diseñada para el procesamiento del lado del servidor de documentos de Microsoft Word y admite campos de las siguientes maneras:

- todos los campos de un documento se conservan durante la apertura / guardado y las conversiones
- es posible actualizar los resultados de la mayoría de los campos

En este artículo, aprenderemos más sobre la estructura de los campos, los campos admitidos en Aspose.Words y los detalles sobre cómo trabajar con dichos campos.

## Estructura de los Campos

Un campo consta de:

- Los nodos de inicio de campo y separador se utilizan para abarcar el contenido que compone el código de campo (normalmente como texto sin formato).
- El separador de campo y el final del campo abarcan el resultado del campo. Esto puede estar compuesto por varios tipos de contenido que van desde series de texto hasta párrafos y tablas.
- Es posible que algunos campos no tengan un separador, lo que significa que todo el contenido constituye el código del campo.
- El código de campo define el comportamiento del campo y está compuesto por el identificador de campo y, a menudo, otros parámetros, como nombres de campo e interruptores.
- El resultado del campo contiene la evaluación más reciente del campo. Este valor se almacena en el campo resultado y es el que se muestra al usuario. Es posible que algunos campos no tengan ningún resultado de campo, por lo que no mostrarán nada en el documento. Del mismo modo, es posible que algunos campos no se actualicen, por lo que tampoco tendrán resultados de campo.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

El contenido que compone el código de campo se almacena como [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) nodos entre [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) y [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). El resultado del campo se almacena entre los nodos **FieldSeparator** y [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) y puede estar formado por varios tipos de contenido. Normalmente, el resultado del campo contiene solo texto compuesto por **Run** nodos, sin embargo, es posible que el nodo **FieldEnd** se ubique en un párrafo completamente diferente y, por lo tanto, el resultado del campo esté compuesto por [nodos a nivel de bloque](/words/cpp/logical-levels-of-nodes-in-a-document/) como **Table** y **Paragraph** nodos también.

A continuación, se muestra una vista de cómo se almacena un campo en Aspose.Words utilizando el ejemplo " *DocumentExplorer"*.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Campos en el Modelo de Objetos de Documento Aspose.Words (DOM)

Cuando se carga un documento en Aspose.Words, los campos del documento se cargan en el [Aspose.Words Modelo de Objetos de Documento](/words/cpp/aspose-words-document-object-model/) como un conjunto de componentes separados (nodos). Un solo campo se carga como una colección de nodos **FieldStart**, **FieldSeparator** y **FieldEnd** junto con el contenido entre estos nodos. Si un campo no tiene un resultado de campo, entonces no habrá un nodo **FieldSeparator**. Todos estos nodos siempre se encuentran en línea (como hijos de [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) o [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

En Aspose.Words cada uno de los **FieldXXX** nodos deriva de [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). Esta clase proporciona una propiedad para verificar el tipo de campo representado por el nodo especificado a través de la propiedad [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/). Por ejemplo, **FieldType.FieldMergeField** representa un campo de combinación en el documento.

{{% alert color="primary" %}}

Hay algunos campos particulares que existen en un documento de Word que no se importan en Aspose.Words como una colección de **FieldXXX** nodos. Por ejemplo, el campo `LINK` y el campo `INCLUDEPICTURE` se importan en Aspose.Words como un objeto `Shape`. Este objeto proporciona propiedades para trabajar con los datos de imagen normalmente almacenados en estos campos. Para importar el campo `INCLUDEPICTURE` como nodos **FieldXXX**, la opción [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) debe especificarse como **true**.

Los campos de formulario también se importan en Aspose.Words como su propia clase especial. La clase [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) representa un campo de formulario en un documento de Word y proporciona métodos adicionales que son particulares de un campo de formulario.

{{% /alert %}}

## Campos Admitidos

El cálculo de los siguientes campos es compatible con la versión actual de Aspose.Words:

- = (fórmula)
`ADDRESSBLOCK`
`ASK`
`AUTHOR`
`AUTONUM`
`AUTONUMLGL`
`AUTONUMOUT`
`AUTOTEXT`
`BARCODE`
`COMMENTS`
`COMPARE`
`CREATEDATE`
`DATABASE`
`DATE`
`DISPLAYBARCODE`
`DOCPROPERTY`
`DOCVARIABLE`
`EDITTIME`
`EQ`
`FILENAME`
`FILESIZE`
`FILLIN`
`FORMCHECKBOX`
`FORMDROPDOWN`
`FORMTEXT`
`GLOSSARY`
`GOTOBUTTON`
`GREETINGLINE`
`HYPERLINK`
`IF`
`IMPORT`
`INCLUDE`
`INCLUDEPICTURE`
`INCLUDETEXT`
`INDEX`
`INFO`
`KEYWORDS`
`LASTSAVEDBY`
`LISTNUM`
`MACROBUTTON`
`MERGEBARCODE`
`MERGEFIELD`
`MERGEREC`
`MERGESEQ`
`NEXT`
`NEXTIF`
`NOTEREF`
`NUMCHARS`
`NUMPAGES`
`NUMWORDS`
`PAGE`
`PAGEREF`
`PRINTDATE`
`QUOTE`
`REF`
`REVNUM`
`SAVEDATE`
`SECTION`
`SECTIONPAGES`
`SEQ`
`SET`
`SHAPE`
`SKIPIF`
`STYLEREF`
`SUBJECT`
`SYMBOL`
`TEMPLATE`
`TIME`
`TITLE`
`TOA`
`TOC`
`USERADDRESS`
`USERINITIALS`
`USERNAME`

## Análisis Sofisticado de Campos

Aspose.Words sigue la forma en que Microsoft Word procesa los campos y, como resultado, los maneja correctamente:

- campos anidados:
`IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- el argumento de campo puede ser el resultado de un campo anidado
- los campos se pueden anidar dentro de un código de campo, así como en el resultado del campo
- espacios / sin espacios, comillas / sin comillas, caracteres de escape en los campos, etc.:
`MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- campos que abarcan varios párrafos

### Campos de Fórmula

Aspose.Words proporciona una implementación muy seria del motor de fórmulas y admite lo siguiente:

- operadores aritméticos y lógicos:
`=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funciones:
`=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- referencias a marcadores:
`=IF(C>4, 5,ABS(A)*.76) +3.85`
- modificadores de formato de números:
`=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Se admiten las siguientes funciones en expresiones: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Solo algunas de las `IF` expresiones que Aspose.Words puede calcular fácilmente deberían darle una idea de cuán poderosa es esta característica:

`IF 3 > 5.7^4+MAX(4,3) True False`
`IF "abcd" > "abc" True False`
`IF "?ab*" = "1abdsg" True False`
`IF 4 = "2*2" True False`
`COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words admite todos los modificadores de formato de fecha y hora disponibles en Microsoft Word, algunos ejemplos son:

`DATE @ "d-MMM-yy"`
`DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Campos

Aspose.Words no impone límites a la complejidad de mail merge campos en sus documentos y admite `IF` anidados y campos de fórmula e incluso puede calcular el nombre del campo de combinación usando una fórmula.

Algunos ejemplos de mail merge campos que Aspose.Words admite:

- Mail merge interruptores de campo:
`MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- combinar campos anidados en una fórmula:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- calcule el nombre del campo de combinación en tiempo de ejecución:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- paso condicional al siguiente registro en el origen de datos:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Conmutadores de Formato

Un campo de un documento puede tener modificadores de formato que especifiquen cómo se debe formatear el valor resultante. Aspose.Words admite los siguientes modificadores de formato:

- @ - formato de fecha y hora
- \\\# - formateo de números
- \\\\\\\\* Mayúsculas
- \\\\\\\\* FirstCap
- \\\\\\\\* Más bajo
- \\\\\\\\* Superior
- \\\\\\\\* CHARFORMAT: formatee el resultado de acuerdo con el primer carácter del código del campo
- \\\\\\\\* MERGEFORMAT: formatee el resultado de acuerdo con el formato del resultado anterior

### Formato de Fecha y Número en los Campos

Cuando Aspose.Words calcula el resultado de un campo, a menudo necesita analizar una cadena en un valor numérico o de fecha y también formatearla de nuevo a string.By default Aspose.Words usa la cultura de subprocesos actual para realizar análisis sintáctico y formateo al calcular los valores de campo durante field update y mail merge. También hay opciones proporcionadas en forma de la clase [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/) que permite un mayor control sobre qué cultivo se usa durante la actualización de campo.

- de forma predeterminada, la propiedad [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) se establece en [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/), que formatea los campos utilizando la cultura de subprocesos actual
- esta propiedad se puede establecer en [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/), por lo que el idioma establecido en el código de campo del campo se usa para formatear en su lugar

### Formateo usando la Cultura del Hilo actual

Para controlar la cultura utilizada durante el cálculo del campo, simplemente establezca la propiedad **CurrentCulture** en una cultura de su elección antes de invocar el cálculo del campo.

El siguiente ejemplo de código muestra cómo cambiar la cultura utilizada en los campos de formato durante la actualización:

EJEMPLO

El uso de la cultura actual para formatear campos permite que un sistema controle de manera fácil y consistente cómo se formatean todos los campos del documento durante la actualización de campos.

### Formateo usando la cultura en el documento

Por otro lado, Microsoft Word formatea cada campo individual en función del idioma del texto que se encuentra en el campo (específicamente, se ejecuta desde el código del campo). A veces, durante la actualización de campos, este puede ser el comportamiento deseado, por ejemplo, si tiene documentos globalizados que contienen contenido compuesto por muchos idiomas diferentes y desea que cada campo respete la configuración regional utilizada en el texto. Aspose.Words también admite esta funcionalidad.

La clase [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) proporciona una propiedad [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/) que contiene miembros que se pueden usar para controlar cómo se actualizan los campos dentro del documento.

El siguiente ejemplo de código muestra cómo especificar dónde se elige la cultura utilizada para el formato de fecha durante la actualización de campo y mail merge:

EJEMPLO
