---
title: Trabajar con campos de formulario en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Campos de Formulario
linktitle: Trabajar con Campos de Formulario
description: "Comprender la función Campos de formulario, trabajar con campos de formulario usando Java."
type: docs
weight: 380
url: /es/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Un documento que contiene espacios en blanco (campos) para completar se conoce como formulario. Por ejemplo, puede crear un formulario de registro en Microsoft Word que utilice listas desplegables desde las que los usuarios puedan seleccionar entradas. El campo `Form` es una ubicación donde se almacena un tipo particular de datos, como un nombre o una dirección. Los campos de formulario en Microsoft Word incluyen entrada de texto, combobox y checkbox.

Puede usar campos de formulario en su proyecto para" comunicarse " con sus usuarios. Por ejemplo, crea un documento cuyo contenido está protegido, pero solo los campos del formulario son editables. Los usuarios pueden ingresar los datos en los campos del formulario y enviar el documento. La aplicación que usa Aspose.Words puede recuperar datos de los campos del formulario y procesarlos.

Colocar campos de formulario en el documento mediante código es fácil. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) tiene métodos especiales para insertarlos, uno para cada tipo de campo de formulario. Cada uno de los métodos acepta un parámetro de cadena que representa el nombre del campo del formulario. El nombre puede ser una cadena vacía. Sin embargo, si especifica un nombre para el campo del formulario, se creará automáticamente un marcador con el mismo nombre.

## Insertar Campos de Formulario

Los campos de formulario son un caso particular de campos de palabras que permiten la "interacción" con el usuario. Los campos de formulario en Microsoft Word incluyen cuadro de texto, cuadro combinado y checkbox.

**DocumentBuilder**

El siguiente ejemplo de código muestra cómo insertar un campo de formulario combobox en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Insertar una Entrada de Texto

Utilice el método **insertTextInput** para insertar un cuadro de texto en el documento.

El siguiente ejemplo de código muestra cómo insertar un campo de formulario de entrada de texto en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Insertar una casilla de Verificación

Llame a **insertCheckBox** para insertar un checkbox en el documento.

El siguiente ejemplo de código muestra cómo insertar un campo de formulario checkbox en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Insertar un Cuadro Combinado

Llame a **insertComboBox** para insertar un combobox en el documento.

El siguiente ejemplo de código muestra cómo insertar un campo de formulario Combobox en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Obtener Campos de Formulario

Una colección de campos de formulario está representada por la clase [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) que se puede recuperar usando la propiedad [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields). Esto significa que puede obtener campos de formulario contenidos en cualquier nodo de documento, incluido el propio documento.

El siguiente ejemplo de código muestra cómo obtener una colección de campos de formulario:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de los siguientes ejemplos de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Puede obtener un campo de formulario en particular por su índice o nombre.

El siguiente ejemplo de código muestra cómo acceder a los campos del formulario:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

Las propiedades **FormField** le permiten trabajar con el nombre, el tipo y el resultado del campo de formulario.

El siguiente ejemplo de código muestra cómo trabajar con el nombre, el tipo y el resultado del campo de formulario:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
