---
title: Trabalhando com campos de formulário em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com campos de formulário
linktitle: Trabalhar com campos de formulário
description: "Entendendo o recurso de campos de formulário, trabalhando com campos de formulário usando C++."
type: docs
weight: 380
url: /pt/cpp/working-with-form-fields/
---

Um documento que contém espaços em branco (campos) é conhecido como formulário. Por exemplo, você pode criar um formulário de registro em Microsoft Word que usa listas suspensas nas quais os usuários podem selecionar entradas. Um campo de formulário é um local onde um determinado tipo de dados, como um nome ou endereço, é armazenado. Os campos de formulário em Microsoft Word incluem entrada de texto, caixa de combinação e caixa de seleção.

Você pode usar campos de formulário em seu projeto para "se comunicar" com seus usuários. Por exemplo, cria um documento cujo conteúdo está protegido, mas apenas os campos de formulário são editáveis. Os usuários podem inserir os dados nos campos do formulário e enviar o documento. Seu aplicativo que usa Aspose.Words pode recuperar dados dos campos do formulário e processá-los.

Colocar campos de formulário no documento através de código é fácil. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) possui métodos especiais para inseri-los, um para cada tipo de campo de formulário. Cada um dos métodos aceita um parâmetro string que representa o nome do campo do formulário. O nome pode ser uma string vazia. No entanto, se especificar um nome para o campo do formulário, será criado automaticamente um marcador com o mesmo nome.

## Inserir Campos De Formulário

Os campos de formulário são um caso particular de campos de palavras que permitem "interacção" com o utilizador. Os campos de formulário em Microsoft Word incluem caixa de texto, caixa de combinação e caixa de seleção.

**DocumentBuilder**

O exemplo de código a seguir mostra como inserir um campo de formulário combobox em um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Obtenção De Campos De Formulário

Uma coleção de campos de formulário é representada pela classe [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) que pode ser recuperada usando a propriedade [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/). Isso significa que você pode obter campos de formulário contidos em qualquer nó de documento, incluindo o próprio documento.

O exemplo de código a seguir mostra como obter uma coleção de campos de formulário:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

Você pode obter um campo de formulário específico por seu índice ou nome.

O exemplo de código a seguir mostra como acessar campos de formulário:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

As propriedades **FormField** permitem trabalhar com nome, tipo e resultado do campo de formulário.

O exemplo de código a seguir mostra como trabalhar com nome, tipo e resultado do campo de formulário:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
