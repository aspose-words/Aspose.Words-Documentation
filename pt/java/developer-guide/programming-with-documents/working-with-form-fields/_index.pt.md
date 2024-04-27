---
title: Trabalhando com campos de formulário em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com campos de formulário
linktitle: Trabalhando com campos de formulário
description: "Compreendendo o recurso Form Fields, trabalhando com Form Fields usando Java."
type: docs
weight: 380
url: /pt/java/working-with-form-fields/
---

Um documento que contém espaços de preenchimento (campos) é conhecido como um formulário. Por exemplo, você pode criar um formulário de registro em Microsoft Word que usa listas suspensas das quais os usuários podem selecionar entradas. O `Form` campo é um local onde um determinado tipo de dados, como um nome ou endereço, é armazenado. Campos de formulário Microsoft Word incluem entrada de texto, combobox e caixa de seleção.

Você pode usar campos de formulário em seu projeto para "comunicar" com seus usuários. Por exemplo, você cria um documento cujo conteúdo é protegido, mas apenas campos de formulário são editáveis. Os usuários podem inserir os dados nos campos do formulário e enviar o documento. Sua aplicação que usa Aspose.Words pode recuperar dados dos campos do formulário e processá-lo.

Colocar campos de formulário no documento através do código é fácil. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) tem métodos especiais para inseri-los, um para cada tipo de campo de formulário. Cada um dos métodos aceita um parâmetro de string representando o nome do campo de formulário. O nome pode ser uma string vazia. Se no entanto você especificar um nome para o campo de formulário, então um marcador de livro é criado automaticamente com o mesmo nome.

## Inserir campos de formulário

Campos de formulário são um caso particular de campos do Word que permite "interação" com o usuário. Campos de formulário Microsoft Word incluem caixa de texto, caixa de combinação e caixa de seleção.

**DocumentBuilder** fornece métodos especiais para inserir cada tipo de campo de formulário no documento: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) ou [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

O exemplo a seguir mostra como inserir um campo de formulário de combinação em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Insira uma entrada de texto

Use o **inserção Entrada de texto** método para inserir uma caixa de texto no documento.

O exemplo a seguir mostra como inserir um campo de formulário de entrada de texto em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Insira uma caixa de verificação

Chamada **caixa de entrada** para inserir uma caixa de seleção no documento.

O exemplo a seguir mostra como inserir um campo de formulário de caixa de seleção em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Insira uma caixa de combinação

Chamada **inserçãoComboBox** para inserir uma combinação no documento.

O exemplo a seguir mostra como inserir um campo de formulário Combobox em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Obter campos de formulário

Uma coleção de campos de forma é representada pelo [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) classe que pode ser recuperado usando o [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields) propriedade. Isso significa que você pode obter campos de formulário contidos em qualquer nó de documento, incluindo o próprio documento.

O exemplo de código a seguir mostra como obter uma coleção de campos de formulário:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra dos seguintes exemplos a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Você pode obter um campo de formulário particular por seu índice ou nome.

O exemplo a seguir mostra como acessar campos de formulários:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

O **FormField** propriedades permitem que você trabalhe com nome de campo de formulário, tipo e resultado.

O exemplo de código a seguir mostra como trabalhar com nome de campo de formulário, tipo e resultado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
