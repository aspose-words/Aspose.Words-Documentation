---
title: Trabalhar com campos de formulário em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com campos de formulário
linktitle: Trabalhar com campos de formulário
description: "Entendendo o recurso de campos de formulário, trabalhando com campos de formulário usando Java."
type: docs
weight: 380
url: /pt/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Um documento que contém espaços em branco (campos) é conhecido como formulário. Por exemplo, você pode criar um formulário de registro em Microsoft Word que usa listas suspensas nas quais os usuários podem selecionar entradas. O campo `Form` é um local onde um determinado tipo de dados, como um nome ou endereço, é armazenado. Os campos de formulário em Microsoft Word incluem entrada de texto, combobox e checkbox.

Você pode usar campos de formulário em seu projeto para "se comunicar" com seus usuários. Por exemplo, cria um documento cujo conteúdo está protegido, mas apenas os campos de formulário são editáveis. Os usuários podem inserir os dados nos campos do formulário e enviar o documento. Seu aplicativo que usa Aspose.Words pode recuperar dados dos campos do formulário e processá-los.

Colocar campos de formulário no documento através de código é fácil. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) possui métodos especiais para inseri-los, um para cada tipo de campo de formulário. Cada um dos métodos aceita um parâmetro string que representa o nome do campo do formulário. O nome pode ser uma string vazia. No entanto, se especificar um nome para o campo do formulário, será criado automaticamente um marcador com o mesmo nome.

## Inserir Campos Do Formulário

Os campos de formulário são um caso particular de campos de palavras que permitem "interacção" com o utilizador. Os campos de formulário em Microsoft Word incluem textbox, combo box e checkbox.

**DocumentBuilder**

O exemplo de código a seguir mostra como inserir um campo de formulário combobox em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Inserir uma entrada de texto

Use o método **insertTextInput** para inserir uma caixa de texto no documento.

O exemplo de código a seguir mostra como inserir um campo de formulário de entrada de texto em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Inserir uma caixa de verificação

Chame **insertCheckBox** para inserir um checkbox no documento.

O exemplo de código a seguir mostra como inserir um campo de formulário checkbox em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Inserir uma caixa de combinação

Chame **insertComboBox** para inserir um combobox no documento.

O exemplo de código a seguir mostra como inserir um campo de formulário Combobox em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Obter Campos Do Formulário

Uma coleção de campos de formulário é representada pela classe [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) que pode ser recuperada usando a propriedade [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields). Isso significa que você pode obter campos de formulário contidos em qualquer nó de documento, incluindo o próprio documento.

O exemplo de código a seguir mostra como obter uma coleção de campos de formulário:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Pode transferir o ficheiro de exemplo dos seguintes exemplos a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Você pode obter um campo de formulário específico por seu índice ou nome.

O exemplo de código a seguir mostra como acessar campos de formulário:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

As propriedades **FormField** permitem trabalhar com nome, tipo e resultado do campo de formulário.

O exemplo de código a seguir mostra como trabalhar com nome, tipo e resultado do campo de formulário:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
