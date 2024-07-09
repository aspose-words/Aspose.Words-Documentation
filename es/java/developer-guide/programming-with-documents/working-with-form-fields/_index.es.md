---
title: Trabajando con campos de formularios en Java
second_title: Aspose.Words para Java
articleTitle: Trabajando con campos de formularios
linktitle: Trabajando con campos de formularios
description: "Función de campos de formulario de comprensión, trabajando con campos de formularios utilizando Java."
type: docs
weight: 380
url: /es/java/working-with-form-fields/
---

Un documento que contiene en blancos rellenos (campos) se conoce como un formulario. Por ejemplo, puede crear un formulario de registro en Microsoft Word que utiliza listas desplegables de las cuales los usuarios pueden seleccionar entradas. El `Form` campo es un lugar donde se almacena un tipo particular de datos, como un nombre o dirección. Campos de formulario en Microsoft Word incluir entrada de texto, combobox y casilla de verificación.

Puede utilizar campos de formularios en su proyecto para "comunicar" con sus usuarios. Por ejemplo, usted crea un documento cuyo contenido está protegido, pero sólo los campos de formulario son editables. Los usuarios pueden introducir los datos en los campos del formulario y enviar el documento. Su aplicación que utiliza Aspose.Words puede recuperar datos de los campos del formulario y procesarlo.

Colocar campos de formularios en el documento a través del código es fácil. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) tiene métodos especiales para insertarlos, uno para cada tipo de campo de formulario. Cada uno de los métodos acepta un parámetro de cadena que representa el nombre del campo de forma. El nombre puede ser una cuerda vacía. Si sin embargo usted especifica un nombre para el campo de formulario, entonces un marcador se crea automáticamente con el mismo nombre.

## Insertar campos de formulario

Los campos de formulario son un caso particular de campos de Word que permite la "interacción" con el usuario. Campos de formulario en Microsoft Word incluye caja de texto, caja de combo y casilla de verificación.

**DocumentBuilder** proporciona métodos especiales para insertar cada tipo de campo de forma en el documento: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) o [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

El siguiente ejemplo de código muestra cómo insertar un campo de formulario combobox en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Insertar una entrada de texto

Usar el **insertar TextInput** método para insertar una caja de texto en el documento.

El siguiente ejemplo de código muestra cómo insertar un campo de formulario de entrada de texto en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Inserte una casilla de verificación

Call **insertCheckBox** para insertar una casilla de verificación en el documento.

El siguiente ejemplo de código muestra cómo insertar un campo de formulario de casilla de verificación en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Insertar una caja Combo

Call **insertarComboBox** insertar un combobox en el documento.

El siguiente ejemplo de código muestra cómo insertar un campo de formulario Combobox en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Obtain Form Fields

Una colección de campos de forma está representada por la [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) clase que se puede recuperar utilizando [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) propiedad. Esto significa que usted puede obtener campos de formulario contenidos en cualquier nodo de documento incluyendo el documento mismo.

El siguiente ejemplo de código muestra cómo obtener una colección de campos de formularios:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de los siguientes ejemplos [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Usted puede obtener un campo de forma particular por su índice o nombre.

El siguiente ejemplo de código muestra cómo acceder a los campos del formulario:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

El **FormField** propiedades le permiten trabajar con el nombre de campo de formulario, tipo y resultado.

El siguiente ejemplo de código muestra cómo trabajar con nombre de campo de formulario, tipo y resultado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
