---
title: Abra um documento somente leitura em Java
second_title: Aspose.Words para Java
articleTitle: Abra um documento somente leitura
linktitle: Abra um documento somente leitura
description: "Faça seu documento somente leitura para que o conteúdo possa ser copiado ou lido, mas não modificado usando Java."
type: docs
weight: 10
url: /pt/java/open-a-document-read-only/
---

Às vezes, você pode ter um documento que precisa de uma revisão, mas você não quer que os revisores modifiquem aleatoriamente seu conteúdo. Aspose.Words permite que você faça a permissão do seu documento somente leitura para que o conteúdo possa ser copiado ou lido, mas não modificado. Isso impedirá que o conteúdo seja removido ou adicionado ao seu documento.

{{% alert color="primary" %}}

Aplicar a opção somente leitura ao seu documento não impede que alguém crie uma nova cópia e salve-a com outro nome.

{{% /alert %}}

Este artigo explica como fazer um documento somente leitura.

## Faça um documento somente leitura

Aspose.Words tem a classe pública [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) que especifica configurações de proteção de gravação para um documento. Você não cria instâncias desta classe diretamente.

Escrever proteção mostra se o autor recomendou abrir um documento como somente leitura e/ou exigir uma senha para modificar o documento.

Aspose.Words permite que você faça um documento somente leitura para restringir a edição usando o [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) propriedade e [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String) método.

{{% alert color="primary" %}}

Em Microsoft Word, você pode criar um documento somente leitura de uma forma semelhante usando ambos:

* "Sempre aberto somente leitura" (File → Info → Proteger Documento)
* "Senha para modificar" (Salvar como → Ferramentas → Opções Gerais → Senha)

{{% /alert %}}

{{% alert color="primary" %}}

Os usuários também podem restringir a edição de documentos selecionando [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) como **ReadOnly**, mas este é outro recurso que fornece recursos de proteção mais avançados. Há tal função em Microsoft Word, respectivamente, é implementado em Aspose.Words.

**ProtectionType** será descrito em detalhes em um dos seguintes artigos – "Restrição de Edição de Documentos".

{{% /alert %}}

O **ReadOnlyRecommended** propriedade é protegido por senha, então se você não definir uma senha antes de aplicar o **ReadOnlyRecommended** propriedade, então outros usuários podem simplesmente abrir o documento como se não estivesse protegido. Você acessa as configurações de proteção de documentos e define uma senha de proteção de gravação via **SetPassword** método.

{{% alert color="primary" %}}

Note que a senha que está sendo definida é apenas uma propriedade em um documento que pode ser removido se as propriedades do documento forem acessadas. Assim, tal senha não é uma garantia da segurança do documento.

{{% /alert %}}

Se você precisar verificar se um documento tem uma senha de proteção de gravação que o restringe da edição, você pode usar o [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) propriedade.

O exemplo de código a seguir mostra como fazer um documento somente leitura:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Remover Restrição somente leitura

Se você não quiser que um usuário abra seu documento como somente leitura, você pode simplesmente definir o **ReadOnlyRecommened** propriedade para *false* ou selecionar **ProtectionType** como **NoProtection**.

O exemplo a seguir mostra como remover o acesso somente leitura para um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
