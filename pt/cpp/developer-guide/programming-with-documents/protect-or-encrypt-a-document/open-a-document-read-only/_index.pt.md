---
title: Abrir um documento somente leitura em C++
second_title: Aspose.Words para C++
articleTitle: Abrir um documento apenas leitura
linktitle: Abrir um documento apenas leitura
description: "Torne o seu documento apenas de leitura para que o conteúdo possa ser copiado ou lido, mas não modificado."
type: docs
weight: 10
url: /pt/cpp/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Às vezes, você pode ter um documento que precisa de uma revisão, mas não deseja que os revisores modifiquem aleatoriamente seu conteúdo. Aspose.Words permite que você faça a permissão do seu documento somente leitura para que o conteúdo possa ser copiado ou lido, mas não modificado. Isso impedirá que o conteúdo seja removido ou adicionado ao seu documento.

{{% alert color="primary" %}}

Aplicar a opção somente leitura ao seu documento não impede que alguém crie uma nova cópia dele e salve-o com outro nome.

{{% /alert %}}

Este artigo explica como tornar um documento só de leitura.

## Tornar um documento só de leitura

Aspose.Words tem a classe pública [WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/) que especifica as configurações de proteção contra gravação para um documento. Você não cria instâncias dessa classe diretamente.

A proteção contra gravação mostra se o autor recomendou a abertura de um documento como somente leitura e/ou a necessidade de uma senha para modificar o documento.

Aspose.Words permite que você faça um documento somente leitura para restringir a edição usando a propriedade [ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/) e o método [SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

Em Microsoft Word, você pode criar um documento somente leitura de maneira semelhante usando ambos:

* "Always Open Read-Only" (Ficheiro (Ficheiro)
* "Senha para modificar" (Salvar como → Ferramentas → Opções gerais → Senha)

{{% /alert %}}

{{% alert color="primary" %}}

Os usuários também podem restringir a edição de documentos selecionando [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) como **ReadOnly**, mas esse é outro recurso que fornece recursos de proteção mais avançados. Existe tal função em Microsoft Word, respectivamente, é implementada em Aspose.Words.

**ProtectionType**

{{% /alert %}}

A propriedade **ReadOnlyRecommended** é protegida por senha, portanto, se você não definir uma senha antes de aplicar a propriedade **ReadOnlyRecommended**, outros usuários podem simplesmente abrir o documento como se estivesse desprotegido. Pode aceder às definições de protecção de documentos e definir uma palavra-passe de protecção contra gravação através do método **SetPassword**.

{{% alert color="primary" %}}

Observe que a senha que está sendo definida é apenas uma propriedade em um documento que pode ser removida se as propriedades do documento forem acessadas. Por conseguinte, essa palavra-passe não constitui uma garantia da segurança do documento.

{{% /alert %}}

Se você precisar verificar se um documento tem uma senha de proteção contra gravação que o restringe de edição, você pode usar a propriedade [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/).

O exemplo de código a seguir mostra como tornar um documento somente leitura:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## Remover A Restrição Somente Leitura

Se você não quiser que um usuário abra seu documento como somente leitura, basta definir a propriedade **ReadOnlyRecommened** como *false* ou selecionar **ProtectionType** como **NoProtection**.

O exemplo de código a seguir mostra como remover o acesso somente leitura para um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}
