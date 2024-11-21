---
title: Descripción general de campos en C#
second_title: Aspose.Words para .NET
articleTitle: Descripción general de los campos
linktitle: Descripción general de los campos
description: "Los campos se incluyen en detalles, códigos de campo y resultados de campo explicados en Aspose.Words para .NET."
type: docs
weight: 10
url: /es/net/fields-overview/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words es una biblioteca de clases diseñada para el procesamiento del lado del servidor de documentos Microsoft Word y admite campos de las siguientes maneras:

- todos los campos de un documento se conservan durante la apertura/guardado y las conversiones
- es posible actualizar los resultados de la mayoría de los campos

En este artículo, aprenderemos más sobre la estructura de campos, los campos admitidos en Aspose.Words y detalles sobre cómo trabajar con dichos campos.

## Estructura de campo

Un campo consta de:

- Los nodos de inicio y separador de campo se utilizan para englobar el contenido que conforma el código de campo (normalmente como texto plano).
- El separador de campo y el final del campo engloban el resultado del campo. Puede estar compuesto por varios tipos de contenido, desde tiradas de texto hasta párrafos y tablas.
- Es posible que algunos campos no tengan un separador, lo que significa que todo el contenido constituye el código de campo.
- El código de campo define el comportamiento del campo y está compuesto por el identificador del campo y, a menudo, otros parámetros como el nombre del campo y los modificadores.
- El resultado del campo contiene la evaluación más reciente del campo. Este valor se almacena en el resultado del campo y es lo que se muestra al usuario. Es posible que algunos campos no tengan ningún resultado de campo, por lo que no mostrarán nada en el documento. Del mismo modo, es posible que algunos campos aún no estén actualizados, por lo que tampoco tendrán ningún resultado de campo.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

El contenido que constituye el código de campo se almacena como nodos [Run](https://reference.aspose.com/words/es/net/aspose.words/run/) entre [FieldStart](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldstart/) y [FieldSeparator](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldseparator/). El resultado del campo se almacena entre los nodos **FieldSeparator** y [FieldEnd](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldend/) y puede estar compuesto por varios tipos de contenido. Normalmente, el resultado del campo contiene solo texto compuesto por nodos **Run**; sin embargo, es posible que el nodo **FieldEnd** esté ubicado en un párrafo completamente diferente y, por lo tanto, el resultado del campo esté compuesto también por nodos [Niveles lógicos de nodos en un documento](/words/es/net/logical-levels-of-nodes-in-a-document/) como **Table** y **Paragraph**.

A continuación se muestra una vista de cómo se almacena un campo en Aspose.Words utilizando el ejemplo "*DocumentExplorer"* que se puede encontrar en [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Campos en el modelo de objetos de documento Aspose.Words (DOM)

Cuando se carga un documento en Aspose.Words, los campos del documento se cargan en el [Modelo de objetos de documento Aspose.Words (DOM)](/words/es/net/aspose-words-document-object-model/) como un conjunto de componentes separados (nodos). Se carga un único campo como una colección de nodos **FieldStart**, **FieldSeparator** y **FieldEnd** junto con el contenido entre estos nodos. Si un campo no tiene un resultado de campo, no habrá ningún nodo **FieldSeparator**. Todos estos nodos siempre se encuentran en línea (como hijos de [Paragraph](https://reference.aspose.com/words/es/net/aspose.words/paragraph/) o [SmartTag](https://reference.aspose.com/words/es/net/aspose.words.markup/smarttag/).

En Aspose.Words cada uno de los nodos **FieldXXX** deriva de [FieldChar](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldchar/). Esta clase proporciona una propiedad para verificar el tipo de campo representado por el nodo especificado a través de la propiedad [FieldType](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldtype/). Por ejemplo, **FieldType.FieldMergeField** representa un campo de combinación en el documento.

{{% alert color="primary" %}}

Hay algunos campos particulares que existen en un documento de Word que no se importan a Aspose.Words como una colección de nodos **FieldXXX**. Por ejemplo, el campo `LINK` y el campo `INCLUDEPICTURE` se importan a Aspose.Words como un objeto [Shape](https://reference.aspose.com/words/es/net/aspose.words.drawing/shape/). Este objeto proporciona propiedades para trabajar con los datos de imagen normalmente almacenados en estos campos. Para importar campos `INCLUDEPICTURE` como nodos **FieldXXX**, la opción [PreserveIncludePictureField](https://reference.aspose.com/words/es/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) debe especificarse como **verdadero**.

Los campos de formulario también se importan a Aspose.Words como su propia clase especial. La clase [FormField](https://reference.aspose.com/words/es/net/aspose.words.fields/formfield/) representa un campo de formulario en un documento de Word y proporciona métodos adicionales que son específicos de un campo de formulario.

{{% /alert %}}

## Campos admitidos

El cálculo de los siguientes campos es compatible con la versión actual de Aspose.Words:

- = (fórmula)
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

## Análisis de campo sofisticado

Aspose.Words sigue la forma en que Microsoft Word procesa los campos y, como resultado, maneja correctamente:

- campos anidados:
 `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- el argumento del campo puede ser el resultado de un campo anidado
- los campos se pueden anidar dentro de un código de campo así como en el resultado del campo
- espacios/sin espacios, comillas/sin comillas, caracteres de escape en campos, etc.:
 `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- campos que abarcan varios párrafos

### Campos de fórmula

Aspose.Words proporciona una implementación muy seria del motor de fórmulas y admite lo siguiente:

- operadores aritméticos y lógicos:
 `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- funciones:
 `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- referencias a marcadores:
 `=IF(C>4, 5,ABS(A)*.76) +3.85`
- interruptores de formato de números:
 `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Se admiten las siguientes funciones en expresiones: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### Campos `IF` y `COMPARE`

Sólo algunas de las expresiones `IF` que Aspose.Words puede calcular fácilmente deberían darle una idea de lo poderosa que es esta característica:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### Campos `DATE` y `TIME`

Aspose.Words admite todos los cambios de formato de fecha y hora disponibles en Microsoft Word, algunos ejemplos son:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Campos Mail Merge

Aspose.Words no impone ningún límite a la complejidad de los campos mail merge en sus documentos y admite campos `IF` y de fórmula anidados e incluso puede calcular el nombre del campo de combinación usando una fórmula.

Algunos ejemplos de campos mail merge que admite Aspose.Words:

- Interruptores de campo Mail merge:
 `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- campos de combinación anidados en una fórmula:
 `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- calcular el nombre del campo de combinación en tiempo de ejecución:
 `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- movimiento condicional al siguiente registro en la fuente de datos:
 `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Cambios de formato

Un campo en un documento puede tener modificadores de formato que especifican cómo se debe formatear el valor resultante. Aspose.Words admite los siguientes cambios de formato:

- \\\@ – formato de fecha y hora
- \\\# – formato de número
- \\\* Tapas
- \\\* Primera tapa
- \\\* Más bajo
- \\\* Superior
- \\\* CHARFORMAT – formatear el resultado según el primer carácter del código de campo
- \\\* MERGEFORMAT – formatea el resultado según cómo está formateado el resultado anterior

### Formato de fecha y número en campos

Cuando Aspose.Words calcula el resultado de un campo, a menudo necesita analizar una cadena en un valor numérico o de fecha y también volver a formatearla como una cadena. De forma predeterminada, Aspose.Words utiliza la cultura de subprocesos actual para realizar el análisis y el formato al calcular los valores de los campos durante la actualización del campo. y mail merge. También se proporcionan opciones en forma de clase [FieldOptions](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldoptions/) que permite un mayor control sobre qué cultura se utiliza durante la actualización del campo.

- De forma predeterminada, la propiedad [FieldUpdateCultureSource](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) está configurada en [CurrentThread](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldupdateculturesource/), lo que formatea los campos utilizando la cultura del hilo actual.
- esta propiedad se puede configurar en [FieldCode](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldupdateculturesource/) para que el idioma establecido en el código de campo del campo se use para formatear

### Formatear usando la cultura del hilo actual

Para controlar la cultura utilizada durante el cálculo del campo, simplemente establezca la propiedad **Thread.CurrentThread.CurrentCulture** en una cultura de su elección antes de invocar el cálculo del campo.

El siguiente ejemplo de código muestra cómo cambiar la cultura utilizada en los campos de formato durante la actualización:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

El uso de la cultura actual para dar formato a los campos permite que un sistema controle de manera fácil y consistente cómo se formatean todos los campos del documento durante la actualización de campos.

### Formatear usando la cultura en el documento

Por otro lado, Microsoft Word formatea cada campo individual según el idioma del texto que se encuentra en el campo (específicamente, las ejecuciones del código de campo). A veces, durante la actualización de campos, este puede ser el comportamiento deseado, por ejemplo, si tiene documentos globalizados que contienen contenido compuesto de muchos idiomas diferentes y desea que cada campo respete la configuración regional utilizada en el texto. Aspose.Words también admite esta funcionalidad.

La clase [Document](https://reference.aspose.com/words/es/net/aspose.words/document/) proporciona una propiedad [FieldOptions](https://reference.aspose.com/words/es/net/aspose.words/document/fieldoptions/) que contiene miembros que pueden usarse para controlar cómo se actualizan los campos dentro del documento.

El siguiente ejemplo de código muestra cómo especificar dónde se elige la cultura utilizada para el formato de fecha durante la actualización de campos y mail merge:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
