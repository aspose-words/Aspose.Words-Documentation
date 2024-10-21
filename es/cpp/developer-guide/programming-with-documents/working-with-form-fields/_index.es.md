---
title: Trabajar con Campos de formulario en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Campos de Formulario
linktitle: Trabajar con Campos de Formulario
description: "Comprender la función Campos de formulario, trabajar con campos de formulario usando C++."
type: docs
weight: 380
url: /es/cpp/working-with-form-fields/
---

Un documento que contiene espacios en blanco (campos) para completar se conoce como formulario. Por ejemplo, puede crear un formulario de registro en Microsoft Word que utilice listas desplegables desde las que los usuarios puedan seleccionar entradas. Un campo de formulario es una ubicación donde se almacena un tipo particular de datos, como un nombre o una dirección. Los campos de formulario en Microsoft Word incluyen entrada de texto, cuadro combinado y casilla de verificación.

Puede usar campos de formulario en su proyecto para" comunicarse " con sus usuarios. Por ejemplo, crea un documento cuyo contenido está protegido, pero solo los campos del formulario son editables. Los usuarios pueden ingresar los datos en los campos del formulario y enviar el documento. La aplicación que usa Aspose.Words puede recuperar datos de los campos del formulario y procesarlos.

Colocar campos de formulario en el documento mediante código es fácil. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) tiene métodos especiales para insertarlos, uno para cada tipo de campo de formulario. Cada uno de los métodos acepta un parámetro de cadena que representa el nombre del campo del formulario. El nombre puede ser una cadena vacía. Sin embargo, si especifica un nombre para el campo del formulario, se creará automáticamente un marcador con el mismo nombre.

## Insertar Campos de Formulario

Los campos de formulario son un caso particular de campos de palabras que permiten la "interacción" con el usuario. Los campos de formulario en Microsoft Word incluyen cuadro de texto, cuadro combinado y casilla de verificación.

**DocumentBuilder**

El siguiente ejemplo de código muestra cómo insertar un campo de formulario de cuadro combinado en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Obtención de Campos de Formulario

Una colección de campos de formulario está representada por la clase [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) que se puede recuperar usando la propiedad [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/). Esto significa que puede obtener campos de formulario contenidos en cualquier nodo de documento, incluido el propio documento.

El siguiente ejemplo de código muestra cómo obtener una colección de campos de formulario:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

Puede obtener un campo de formulario en particular por su índice o nombre.

El siguiente ejemplo de código muestra cómo acceder a los campos del formulario:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

Las propiedades **FormField** le permiten trabajar con el nombre, el tipo y el resultado del campo de formulario.

El siguiente ejemplo de código muestra cómo trabajar con el nombre, el tipo y el resultado del campo de formulario:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
