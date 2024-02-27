---
title: Restringir a edição de documentos em C#
second_title: Aspose.Words para .NET
articleTitle: Restringir edição de documentos
linktitle: Restringir edição de documentos
description: "Restrinja a edição de um documento definindo um tipo de restrição usando C#. Você também pode remover a proteção e tornar regiões editáveis sem restrições."
type: docs
weight: 30
url: /pt/net/restrict-document-editing/
---

Às vezes, pode ser necessário limitar a capacidade de editar um documento e permitir apenas determinadas ações com ele. Isso pode ser útil para evitar que outras pessoas editem informações sensíveis e confidenciais no seu documento.

Aspose.Words permite restringir a edição de um documento definindo um tipo de restrição. Além disso, Aspose.Words também permite especificar configurações de proteção contra gravação para um documento.

Este artigo explica como usar Aspose.Words para selecionar um tipo de restrição, como adicionar ou remover proteção e como tornar regiões editáveis irrestritas.

## Selecione o tipo de restrição de edição

Aspose.Words permite controlar a forma como você restringe o conteúdo usando o parâmetro de enumeração [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/). Isso permitirá que você selecione um tipo exato de proteção, como o seguinte:

* Permitir apenas comentários
*PermitirOnlyFormFields
* Permitir apenas revisões
* Somente leitura
* Sem proteção

Todos os tipos são protegidos por senha e, se essa senha não for inserida corretamente, o usuário não poderá alterar legalmente o conteúdo do seu documento. Assim, se o seu documento for devolvido sem a necessidade de fornecer a senha necessária, é sinal de que algo está errado.

Se você não definiu uma senha ao escolher o tipo de segurança, outros usuários podem simplesmente ignorar a proteção do seu documento.

{{% alert color="primary" %}}

Observe que a senha definida é apenas uma propriedade em um documento que pode ser removida se as propriedades do documento forem acessadas. Conseqüentemente, tal senha não é garantia da segurança do documento. O método [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) mostra exatamente isso.

{{% /alert %}}

## Adicionar proteção de documentos

Adicionar proteção ao seu documento é um processo simples, pois tudo o que você precisa fazer é aplicar um dos métodos de proteção detalhados nesta seção.

Aspose.Words permite proteger seus documentos contra alterações usando o método [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/). Este método não é um recurso de segurança e não criptografa um documento.

{{% alert color="primary" %}}

No Microsoft Word, você pode restringir a edição de maneira semelhante usando ambos:

* Restringir edição (Arquivo → Informações → Proteger documento)
* Recurso alternativo – "Restringir Edição" (Revisar → Proteger → Restringir Edição)

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar proteção por senha ao seu documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

O exemplo de código a seguir mostra como restringir a edição em um documento para que somente a edição nos campos do formulário seja possível:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Remover proteção de documentos

Aspose.Words permite remover a proteção de um documento com modificação simples e direta do documento. Você pode remover a proteção do documento sem saber a senha real ou fornecer a senha correta para desbloquear o documento usando o método [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/). Ambas as formas de remoção não têm diferença.

O exemplo de código a seguir mostra como remover a proteção do seu documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Especifique regiões editáveis irrestritas

Você pode restringir a edição do seu documento e ao mesmo tempo permitir alterações em partes selecionadas dele. Assim, qualquer pessoa que abrir o seu documento poderá acessar essas partes sem restrições e fazer alterações no conteúdo.

Aspose.Words permite marcar as partes que podem ser alteradas em seu documento usando os métodos [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) e [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/).

O exemplo de código a seguir mostra como marcar todo o documento como somente leitura e especificar regiões editáveis nele:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Você também pode escolher diferentes restrições de edição de documentos para diferentes seções.

O exemplo de código a seguir mostra como adicionar uma restrição para todo o documento e, em seguida, remover a restrição para uma das seções:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
