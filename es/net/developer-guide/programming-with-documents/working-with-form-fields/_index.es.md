---
title: Trabajar con campos de formulario en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con campos de formulario
linktitle: Trabajar con campos de formulario
description: "Comprender la función Campos de formulario y trabajar con campos de formulario usando C#."
type: docs
weight: 380
url: /es/net/working-with-form-fields/
---

Un documento que contiene espacios en blanco (campos) para completar se conoce como formulario. Por ejemplo, puede crear un formulario de registro en Microsoft Word que utilice listas desplegables desde las cuales los usuarios pueden seleccionar entradas. El campo `Form` es una ubicación donde se almacena un tipo particular de datos, como un nombre o una dirección. Los campos de formulario en Microsoft Word incluyen entrada de texto, cuadro combinado y casilla de verificación.

Puede utilizar campos de formulario en su proyecto para "comunicarse" con sus usuarios. Por ejemplo, crea un documento cuyo contenido está protegido, pero solo se pueden editar los campos del formulario. Los usuarios pueden ingresar los datos en los campos del formulario y enviar el documento. Su aplicación que utiliza Aspose.Words puede recuperar datos de los campos del formulario y procesarlos.

Colocar campos de formulario en el documento mediante código es fácil. [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/) tiene métodos especiales para insertarlos, uno para cada tipo de campo de formulario. Cada uno de los métodos acepta un parámetro de cadena que representa el nombre del campo del formulario. El nombre puede ser una cadena vacía. Sin embargo, si especifica un nombre para el campo del formulario, se crea automáticamente un marcador con el mismo nombre.

## Insertar campos de formulario

Los campos de formulario son un caso particular de los campos de Word que permiten la "interacción" con el usuario. Los campos de formulario en Microsoft Word incluyen cuadros de texto, cuadros combinados y casillas de verificación.

**DocumentBuilder** proporciona métodos especiales para insertar cada tipo de campo de formulario en el documento: [InsertTextInput](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/inserttextinput/), [InsertCheckBox](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertcheckbox/) y [InsertComboBox](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertcombobox/). Tenga en cuenta que si especifica un nombre para el campo del formulario, se crea automáticamente un marcador con el mismo nombre.

El siguiente ejemplo de código muestra cómo insertar un campo de formulario de cuadro combinado en un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Insertar una entrada de texto

Utilice el método **InsertTextInput** para insertar un cuadro de texto en el documento.

El siguiente ejemplo de código muestra cómo insertar un campo de formulario de entrada de texto en un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Insertar una casilla de verificación

Llame a **InsertCheckBox** para insertar una casilla de verificación en el documento.

El siguiente ejemplo de código muestra cómo insertar un campo de formulario de casilla de verificación en un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Insertar un cuadro combinado

Llame a **InsertComboBox** para insertar un cuadro combinado en el documento.

El siguiente ejemplo de código muestra cómo insertar un campo de formulario Combobox en un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Obtener campos de formulario

Una colección de campos de formulario está representada por la clase [FormFieldCollection](https://reference.aspose.com/words/es/net/aspose.words.fields/formfieldcollection/) que se puede recuperar mediante la propiedad [FormFields](https://reference.aspose.com/words/es/net/aspose.words/range/formfields/). Esto significa que puede obtener campos de formulario contenidos en cualquier nodo del documento, incluido el documento mismo.

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de los siguientes ejemplos desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo obtener una colección de campos de formulario:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Puede obtener un campo de formulario particular por su índice o nombre.

El siguiente ejemplo de código muestra cómo acceder a los campos del formulario:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

Las propiedades **FormField** le permiten trabajar con el nombre, el tipo y el resultado del campo del formulario.

El siguiente ejemplo de código muestra cómo trabajar con el nombre, el tipo y el resultado del campo del formulario:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Dar formato a los campos del formulario

La propiedad [Font](https://reference.aspose.com/words/es/net/aspose.words/inline/font/) de [FormField](https://reference.aspose.com/words/es/net/aspose.words.fields/formfield/) permite aplicar formato de fuente al **FormField** en su conjunto, incluido el valor del campo.

El siguiente ejemplo de código muestra cómo aplicar formato de fuente al **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
