---
title: Restringir documento Editar Java
second_title: Aspose.Words para Java
articleTitle: Restringir a edição de documentos
linktitle: Restringir a edição de documentos
description: "Restringir a edição de um documento definindo um tipo de restrição. Você também pode remover a proteção e fazer regiões editáveis sem restrições usando Java."
type: docs
weight: 30
url: /pt/java/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Às vezes você pode precisar limitar a capacidade de editar um documento e apenas permitir certas ações com ele. Isso pode ser útil para evitar que outras pessoas editem informações confidenciais e sensíveis em seu documento.

Aspose.Words permite restringir a edição de um documento definindo um tipo de restrição. Além disso, Aspose.Words também permite especificar configurações de proteção de gravação para um documento.

Este artigo explica como usar Aspose.Words para selecionar um tipo de restrição, como adicionar ou remover a proteção e como fazer regiões editáveis sem restrições.

## Selecione Editar Tipo de Restrição

Aspose.Words permite controlar a forma como você restringe o conteúdo usando o [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) Parâmetro de enumeração. Isso permitirá que você selecione um tipo exato de proteção, como o seguinte:

* Permitir apenas Compartimentos
* Permitindo apenas parafusos
* Permitir apenas revisões
* ReadOnly
* NoProtecção

Todos os tipos são protegidos por senha, e se essa senha não for inserida corretamente, um usuário não será capaz de alterar legalmente o conteúdo do seu documento. Assim, se o seu documento é devolvido a você sem um requisito para fornecer a senha necessária, este é um sinal de que algo está errado.

Se você não definiu uma senha ao escolher o tipo de segurança, outros usuários podem simplesmente ignorar a proteção do seu documento.

{{% alert color="primary" %}}

Note que a senha que está sendo definida é apenas uma propriedade em um documento que pode ser removido se as propriedades do documento forem acessadas. Assim, tal senha não é uma garantia da segurança do documento. O [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) método mostra apenas isso.

{{% /alert %}}

## Adicionar proteção de documentos

Adicionar proteção ao seu documento é um processo simples, pois tudo que você precisa fazer é aplicar um dos métodos de proteção detalhados nesta seção.

Aspose.Words permite proteger seus documentos de alterações usando o [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int) método. Este método não é um recurso de segurança e não criptografa um documento.

{{% alert color="primary" %}}

Em Microsoft Word, você pode restringir a edição de uma forma semelhante usando ambos:

* Restrict Editing (File → Info → Proteger Documento)
* Característica alternativa – "Restrict Editing" (Review → Protect → Restrict Editing)

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar proteção de senha ao seu documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

O exemplo de código a seguir mostra como restringir a edição em um documento para que somente a edição em campos de formulário seja possível:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## Remover a proteção do documento

Aspose.Words permite remover a proteção de um documento com modificação simples e direta do documento. Você pode remover a proteção do documento sem saber a senha real ou fornecer a senha correta para desbloquear o documento usando o [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) método. Ambos removendo maneiras não têm diferença.

O exemplo de código a seguir mostra como remover a proteção do seu documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## Especificar Regiões Editáveis sem restrições

Você pode restringir a edição do seu documento e, ao mesmo tempo, permitir alterações em partes selecionadas dele. Assim, qualquer pessoa que abra seu documento será capaz de acessar essas partes irrestritas e fazer alterações no conteúdo.

Aspose.Words permite que você marque as peças que podem ser alteradas em seu documento usando o [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) e [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange) métodos.

O exemplo de código a seguir mostra como marcar todo o documento como somente leitura e especificar regiões editáveis nele:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

Você também pode escolher diferentes restrições de edição de documentos para diferentes seções.

O exemplo de código a seguir mostra como adicionar uma restrição para todo o documento e, em seguida, remover a restrição para uma das seções:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
