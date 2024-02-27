---
title: Descripción general de campos en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Descripción general de los campos
linktitle: Descripción general de los campos
description: "Puede acceder a la modificación de campos utilizando Python. Los campos del documento se cargan en el modelo de objetos de documento (DOM) Aspose.Words."
type: docs
weight: 10
url: /es/python-net/fields-overview/
---


Por lo general, un campo, cuando se inserta en Microsoft Word, ya contiene un valor actualizado. Por ejemplo, si el campo es una fórmula o un número de página, contendrá un valor calculado correcto para la versión dada del documento. Pero si tiene una aplicación que genera o modifica un documento con campos (por ejemplo, combina dos documentos o los completa con datos), entonces, para que el documento sea útil, lo ideal es que todos los campos estén actualizados.

Un campo consta de:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- Los nodos de inicio y separador de campo se utilizan para englobar el contenido que conforma el código de campo (normalmente como texto sin formato)
- El separador de campo y el final del campo engloban el resultado del campo. Puede estar compuesto por varios tipos de contenido, desde tiradas de texto hasta párrafos y tablas.
- Es posible que algunos campos no tengan un separador, lo que significa que todo el contenido constituye el código de campo.
- El código de campo define el comportamiento del campo y está compuesto por el identificador del campo y, a menudo, otros parámetros como el nombre del campo y los modificadores.
- El resultado del campo contiene la evaluación más reciente del campo. Este valor se almacena en el resultado del campo y es lo que se muestra al usuario. Es posible que algunos campos no tengan ningún resultado de campo, por lo que no mostrarán nada en el documento. Del mismo modo, es posible que algunos campos aún no estén actualizados, por lo que tampoco tendrán ningún resultado de campo.

A continuación se muestra una vista de cómo se almacena un campo en Aspose.Words utilizando el ejemplo "*DocumentExplorer"* que se puede encontrar en [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words es una biblioteca de clases diseñada para el procesamiento del lado del servidor de documentos Microsoft Word y admite campos de las siguientes maneras:

- Todos los campos de un documento se conservan durante la apertura/guardado y las conversiones.
- Es posible actualizar los resultados de algunos de los campos más populares.

## Campos en Microsoft Word

Los campos de los documentos Microsoft Word son complejos. Hay más de 50 tipos de campos (cada uno necesita su propio procedimiento de cálculo de resultados), fórmulas y expresiones, marcadores y referencias, funciones y varios interruptores. Los campos también se pueden anidar. Normalmente, cuando se abre un documento, el resultado del campo (el valor del campo) se muestra para todos los campos del documento. Puede alternar la visualización del resultado del campo o de los códigos de campo en Microsoft Word para todos los campos presionando **ALT+F9**.

| Código de campo | Resultado del campo |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Insertar campos en Microsoft Word

Para insertar un campo en Microsoft Word:

1. Haga clic en el menú **Insert**.
1. Haga clic en el menú desplegable **Quick Parts**
1. Seleccione **Field**
1. Se le presenta una pantalla que le permite ingresar los detalles del campo. En el lado izquierdo se le proporciona una lista de los campos posibles y en el lado derecho hay una pantalla para editar visualmente las propiedades del campo.<br>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. Además, puede presionar el botón **Field Codes** que le permite escribir directamente el código de campo.<br>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. Los interruptores también se pueden insertar usando el botón **Options**<br>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. Usando cualquiera de los métodos, complete los campos deseados con la información adecuada y luego presione **Ok**.
1. El campo se inserta en el documento en la posición actual del cursor.<br>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Actualización de campos en Microsoft Word

Para actualizar un solo campo en Microsoft Word:

1. Mueva el cursor al campo que desea actualizar.
1. Presione **F9** para actualizar el campo.

Para actualizar todos los campos en Microsoft Word:

1. Presione **Ctrl+A** para seleccionar todo el contenido del documento.
1. Presione **F9** para actualizar todos los campos que se encuentran dentro de la selección.

### Cambiar entre visualización del código de campo y resultado del campo

Para alternar códigos de campo de un solo campo en Microsoft Word:

1. Mueva el cursor al campo deseado.
1. Presione **MAYÚS+F9** para alternar el código de campo solo para este campo.

Para alternar códigos de campo de todos los campos en Microsoft Word:

1. Presione **ALT+F9**

### Conversión de campos a texto estático en Microsoft Word

Para convertir un campo dinámico en texto estático en Microsoft Word:

1. Mueva el cursor al campo que desea convertir.
1. Presione **Ctrl+Mayús+F9** para convertir los campos en texto estático.

### Eliminar un campo en Microsoft Word

Para eliminar un campo en Microsoft Word:

1. Seleccione todo el contenido que compone el campo. Si se muestran códigos de campo, también se deben seleccionar las llaves de apertura y finalización.
1. Presione **Delete** para eliminar todo el campo.

## Campos en Aspose.Words

Cuando se carga un documento en Aspose.Words, los campos del documento se cargan en el modelo de objetos de documento Aspose.Words como un conjunto de componentes separados (nodos). Se carga un único campo como una colección de nodos [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) y [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) junto con el contenido entre estos nodos. Si un campo no tiene un resultado de campo, no habrá ningún nodo [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Todos estos nodos siempre se encuentran en línea (como hijos de [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) o [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

El contenido que constituye el código de campo se almacena como nodos [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) entre [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) y [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). El resultado del campo se almacena entre los nodos [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) y [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) y puede estar compuesto por varios tipos de contenido. Normalmente, el resultado del campo contiene solo texto compuesto por nodos [Run](https://reference.aspose.com/words/python-net/aspose.words/run/); sin embargo, es posible que el nodo [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) esté ubicado en un párrafo completamente diferente y, por lo tanto, el resultado del campo esté compuesto también por nodos a nivel de bloque, como nodos [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) y [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

En Aspose.Words cada uno de los nodos **FieldXXX** deriva de [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Esta clase proporciona una propiedad para verificar el tipo de campo representado por el nodo especificado a través de la propiedad [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/). Por ejemplo, [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) representa un campo de combinación en el documento.

{{% alert color="primary" %}}

Hay algunos campos particulares que existen en un documento de Word que no se importan a Aspose.Words como una colección de nodos **FieldXXX**. Por ejemplo, el campo `LINK` y el campo `INCLUDEPICTURE` se importan a Aspose.Words como un objeto [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/). Este objeto proporciona propiedades para trabajar con los datos de imagen normalmente almacenados en estos campos.

Los campos de formulario también se importan a Aspose.Words como su propia clase especial. La clase [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) representa un campo de formulario en un documento de Word y proporciona métodos adicionales que son específicos de un campo de formulario.

{{% /alert %}}

### Campos admitidos durante la actualización

El cálculo de los siguientes campos es compatible con la versión actual de Aspose.Words:

- = (campo de fórmula)
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
- `TOC` (incluidos TOT y TOF)
-TC

### Análisis sofisticado

Aspose.Words sigue la forma en que Microsoft Word procesa los campos y, como resultado, maneja correctamente:

- Campos anidados
 `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- El argumento de campo puede ser el resultado de un campo anidado.
- Los campos se pueden anidar dentro de un código de campo así como en el resultado del campo.
- Espacios/sin espacios, comillas/sin comillas, caracteres de escape en campos, etc.:
 `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Campos que abarcan varios párrafos.

#### Campos de fórmula

Aspose.Words proporciona una implementación muy seria del motor de fórmulas y admite lo siguiente:

- Operadores aritméticos y lógicos:
 `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Funciones:
 `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Referencias a marcadores:
 `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Interruptores de formato de números:
 `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Se admiten las siguientes funciones en expresiones: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### Campos `IF` y `COMPARE`

Sólo algunas de las expresiones `IF` que Aspose.Words puede calcular fácilmente deberían darle una idea de lo poderosa que es esta característica:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### Campos `DATE` y `TIME`

Aspose.Words admite todos los cambios de formato de fecha y hora disponibles en Microsoft Word, algunos ejemplos son:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Campos Mail Merge

Aspose.Words no impone ningún límite a la complejidad de los campos mail merge en sus documentos y admite campos `IF` y de fórmula anidados e incluso puede calcular el nombre del campo de combinación usando una fórmula.

Algunos ejemplos de campos mail merge que admite Aspose.Words:

- Interruptores de campo Mail merge:
 `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Campos de combinación anidados en una fórmula:
 `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- Calcular el nombre del campo de combinación en tiempo de ejecución:
 `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- Movimiento condicional al siguiente registro en la fuente de datos:
 `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

#### Cambios de formato

Un campo en un documento puede tener modificadores de formato que especifican cómo se debe formatear el valor resultante. Aspose.Words admite los siguientes cambios de formato:

- @ - formato de fecha y hora
- \\\# - formato de número
- \\\\\\\\* Tapas
- \\\\\\\\* PrimerCap
- \\\\\\\\* Más bajo
- \\\\\\\\* Superior
- \\\\\\\\* CHARFORMAT – formatea el resultado según el primer carácter del código de campo.
- \\\\\\\\* MERGEFORMAT: formatea el resultado de acuerdo con cómo está formateado el resultado anterior.

#### Formato de fecha y número en campos

Cuando Aspose.Words calcula el resultado de un campo, a menudo necesita analizar una cadena en un valor numérico o de fecha y también volver a formatearla como una cadena. De forma predeterminada, Aspose.Words utiliza la cultura de subprocesos actual para realizar el análisis y el formato al calcular los valores de los campos durante la actualización del campo. y mail merge. También se proporcionan opciones en forma de clase [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) que permite un mayor control sobre qué cultura se utiliza durante la actualización del campo.

- De forma predeterminada, la propiedad [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) está configurada en [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread), que formatea los campos utilizando la cultura del hilo actual.
- Esta propiedad se puede configurar en [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) para que el idioma establecido en el código de campo del campo se use para formatear.

#### Formatear usando la cultura del hilo actual

Para controlar la cultura utilizada durante el cálculo de campo, simplemente use el método **locale.setlocale** para establecer la cultura de su elección antes de invocar el cálculo de campo.
El siguiente ejemplo muestra cómo cambiar la cultura utilizada en los campos de formato durante la actualización.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

El uso de la cultura actual para dar formato a los campos permite que un sistema controle de manera fácil y consistente cómo se formatean todos los campos del documento durante la actualización de campos.

#### Formatear usando la cultura en el documento

Por otro lado, Microsoft Word formatea cada campo individual según el idioma del texto que se encuentra en el campo (específicamente, las ejecuciones del código de campo). A veces, durante la actualización de campos, este puede ser el comportamiento deseado, por ejemplo, si tiene documentos globalizados que contienen contenido compuesto de muchos idiomas diferentes y desea que cada campo respete la configuración regional utilizada en el texto. Aspose.Words también admite esta funcionalidad.

La clase [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) proporciona una propiedad [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) que contiene miembros que pueden usarse para controlar cómo se actualizan los campos dentro del documento. El siguiente ejemplo muestra cómo especificar de dónde se elige la cultura utilizada para el formato de fecha durante la actualización de campos y mail merge.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Encontrar el código de campo y el resultado del campo

Un campo que se inserta usando [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) devuelve un objeto [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Esta es una clase de fachada que proporciona métodos útiles para encontrar rápidamente dichas propiedades de un campo. Tenga en cuenta que si solo busca los nombres de los campos de combinación en el documento, puede utilizar el método integrado [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/). El siguiente ejemplo muestra cómo obtener los nombres de todos los campos de combinación en un documento.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Cómo cambiar el nombre de los campos de combinación

El siguiente ejemplo muestra cómo cambiar el nombre de los campos de combinación en un documento de Word.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
