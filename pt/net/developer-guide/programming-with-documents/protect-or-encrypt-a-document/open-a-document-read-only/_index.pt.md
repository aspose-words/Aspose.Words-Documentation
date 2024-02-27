---
title: Abra um documento somente leitura em C#
second_title: Aspose.Words para .NET
articleTitle: Abra um documento somente leitura
linktitle: Abra um documento somente leitura
description: "Torne seu documento somente leitura para que o conteúdo possa ser copiado ou lido, mas não modificado usando C#."
type: docs
weight: 10
url: /pt/net/open-a-document-read-only/
---

Às vezes, você pode ter um documento que precisa de revisão, mas não deseja que os revisores modifiquem aleatoriamente seu conteúdo. Aspose.Words permite que você torne a permissão do seu documento somente leitura para que o conteúdo possa ser copiado ou lido, mas não modificado. Isso impedirá que o conteúdo seja removido ou adicionado ao seu documento.

{{% alert color="primary" %}}

Aplicar a opção somente leitura ao seu documento não impede que alguém crie uma nova cópia dele e salve-o com outro nome.

{{% /alert %}}

Este artigo explica como tornar um documento somente leitura.

## Tornar um documento somente leitura

Aspose.Words possui a classe pública [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/) que especifica as configurações de proteção contra gravação para um documento. Você não cria instâncias desta classe diretamente.

A proteção contra gravação mostra se o autor recomendou a abertura de um documento como somente leitura e/ou exigiu uma senha para modificar o documento.

Aspose.Words permite tornar um documento somente leitura para restringir a edição usando a propriedade [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) e o método [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

No Microsoft Word, você pode criar um documento somente leitura de maneira semelhante usando ambos:

* "Sempre abrir somente leitura" (Arquivo → Informações → Proteger documento)
* "Senha para modificar" (Salvar como → Ferramentas → Opções gerais → Senha)

{{% /alert %}}

{{% alert color="primary" %}}

Os usuários também podem restringir a edição de documentos selecionando [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) como **ReadOnly**, mas este é outro recurso que oferece recursos de proteção mais avançados. Existe tal função em Microsoft Word, respectivamente, ela é implementada em Aspose.Words.

**ProtectionType** será descrito detalhadamente em um dos seguintes artigos – "Restringir edição de documentos".

{{% /alert %}}

A propriedade **ReadOnlyRecommended** é protegida por senha, portanto, se você não definir uma senha antes de aplicar a propriedade **ReadOnlyRecommended**, outros usuários poderão simplesmente abrir o documento como se ele estivesse desprotegido. Você acessa as configurações de proteção de documentos e define uma senha de proteção contra gravação através do método **SetPassword**.

{{% alert color="primary" %}}

Observe que a senha definida é apenas uma propriedade em um documento que pode ser removida se as propriedades do documento forem acessadas. Conseqüentemente, tal senha não é garantia da segurança do documento.

{{% /alert %}}

Se precisar verificar se um documento possui uma senha de proteção contra gravação que restringe sua edição, você pode usar a propriedade [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/).

O exemplo de código a seguir mostra como tornar um documento somente leitura:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## Remover restrição somente leitura

Se não quiser que um usuário abra seu documento como somente leitura, você pode simplesmente definir a propriedade **ReadOnlyRecommened** como *false* ou selecionar **ProtectionType** como **NoProtection**.

O exemplo de código a seguir mostra como remover o acesso somente leitura de um documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
