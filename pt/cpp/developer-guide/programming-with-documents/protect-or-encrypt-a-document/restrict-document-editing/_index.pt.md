---
title: Restringir a edição de documentos em C++
second_title: Aspose.Words para C++
articleTitle: Restringir A Edição De Documentos
linktitle: Restringir A Edição De Documentos
description: "Restrinja a edição de um documento definindo um tipo de restrição usando C++. Você também pode remover a proteção e tornar regiões editáveis irrestritas."
type: docs
weight: 30
url: /pt/cpp/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Às vezes, pode ser necessário limitar a capacidade de editar um documento e permitir apenas certas ações com ele. Isto pode ser útil para impedir que outras pessoas editem informações sensíveis e confidenciais no seu documento.

Aspose.Words permite restringir a edição de um documento definindo um tipo de restrição. Além disso, Aspose.Words também permite especificar configurações de proteção contra gravação para um documento.

Este artigo explica como usar Aspose.Words para selecionar um tipo de restrição, como adicionar ou remover proteção e como criar regiões editáveis irrestritas.

## Selecionar O Tipo De Restrição De Edição

Aspose.Words permite controlar a forma como restringe o conteúdo utilizando o parâmetro de enumeração [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/). Isso permitirá que você selecione um tipo exato de proteção, como o seguinte:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

Todos os tipos são protegidos por senha e, se essa senha não for inserida corretamente, o Usuário não poderá alterar legalmente o conteúdo do seu documento. Assim, se o seu documento lhe for devolvido sem a necessidade de fornecer a senha necessária, isso é um sinal de que algo está errado.

Se você não definiu uma senha ao escolher o tipo de segurança, outros usuários podem simplesmente ignorar a proteção do seu documento.

{{% alert color="primary" %}}

Observe que a senha que está sendo definida é apenas uma propriedade em um documento que pode ser removida se as propriedades do documento forem acessadas. Por conseguinte, essa palavra-passe não constitui uma garantia da segurança do documento. O método [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) mostra exatamente isso.

{{% /alert %}}

## Adicionar Proteção De Documentos

Adicionar proteção ao seu documento é um processo simples, pois tudo o que você precisa fazer é aplicar um dos métodos de proteção detalhados nesta seção.

Aspose.Words permite-lhe proteger os seus documentos contra alterações utilizando o método [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/). Este método não é um recurso de segurança e não criptografa um documento.

{{% alert color="primary" %}}

Em Microsoft Word, você pode restringir a edição de maneira semelhante usando ambos:

* Restrinja A Edição (Ficheiro (Ficheiro)
* Recurso alternativo – " Restringir edição "(reveja a protecção da edição restrita)

{{% /alert %}}

O exemplo de código a seguir mostra como adicionar proteção por senha ao documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

O exemplo de código a seguir mostra como restringir a edição em um documento para que apenas a edição em campos de formulário seja possível:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## Remover A Protecção De Documentos

Aspose.Words permite remover a protecção de um documento com uma modificação simples e directa do documento. Você pode remover a proteção do documento sem saber a senha real ou fornecer a senha correta para desbloquear o documento usando o método [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/). Ambas as formas de remoção não têm diferença.

O exemplo de código a seguir mostra como remover a proteção do documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## Especificar Regiões Editáveis Irrestritas

Você pode restringir a edição do seu documento e, ao mesmo tempo, permitir alterações em partes selecionadas dele. Assim, qualquer pessoa que abrir seu documento poderá acessar essas partes irrestritas e fazer alterações no conteúdo.

Aspose.Words permite marcar as partes que podem ser alteradas no seu documento utilizando os métodos [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) e [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/).

O exemplo de código a seguir mostra como marcar o documento inteiro como somente leitura e especificar regiões editáveis nele:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

Você também pode escolher diferentes restrições de edição de documentos para diferentes seções.

O exemplo de código a seguir mostra como adicionar uma restrição para todo o documento e, em seguida, remover a restrição para uma das seções:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
