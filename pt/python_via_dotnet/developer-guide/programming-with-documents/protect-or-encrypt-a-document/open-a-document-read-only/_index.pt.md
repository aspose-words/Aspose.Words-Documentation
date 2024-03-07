---
title: Abra um documento somente leitura em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Abra um documento somente leitura
linktitle: Abra um documento somente leitura
description: "Torne seu documento somente leitura para que o conteúdo possa ser copiado ou lido, mas não modificado usando Python."
type: docs
weight: 10
url: /pt/python-net/open-a-document-read-only/
---

Às vezes, você pode ter um documento que precisa de revisão, mas não deseja que os revisores modifiquem aleatoriamente seu conteúdo. Aspose.Words permite que você torne a permissão do seu documento somente leitura para que o conteúdo possa ser copiado ou lido, mas não modificado. Isso impedirá que o conteúdo seja removido ou adicionado ao seu documento.

{{% alert color="primary" %}}

Aplicar a opção somente leitura ao seu documento não impede que alguém crie uma nova cópia dele e salve-o com outro nome.

{{% /alert %}}

Este artigo explica como tornar um documento somente leitura.

## Tornar um documento somente leitura

Aspose.Words possui a classe pública [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) que especifica as configurações de proteção contra gravação para um documento. Você não cria instâncias desta classe diretamente.

A proteção contra gravação mostra se o autor recomendou a abertura de um documento como somente leitura e/ou exigiu uma senha para modificar o documento.

Aspose.Words permite tornar um documento somente leitura para restringir a edição usando a propriedade [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) e o método [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

No Microsoft Word, você pode criar um documento somente leitura de maneira semelhante usando ambos:

* "Sempre abrir somente leitura" (Arquivo → Informações → Proteger documento)
* "Senha para modificar" (Salvar como → Ferramentas → Opções gerais → Senha)

{{% /alert %}}

{{% alert color="primary" %}}

Os usuários também podem restringir a edição de documentos selecionando [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) como [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), mas este é outro recurso que oferece recursos de proteção mais avançados. Existe tal função em Microsoft Word, respectivamente, ela é implementada em Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) será descrito em detalhes em um dos seguintes artigos – "Restringir Edição de Documentos".

{{% /alert %}}

A propriedade [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) é protegida por senha, portanto, se você não definir uma senha antes de aplicar a propriedade [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/), outros usuários poderão simplesmente abrir o documento como se ele estivesse desprotegido. Você acessa as configurações de proteção de documentos e define uma senha de proteção contra gravação através do método [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

Observe que a senha definida é apenas uma propriedade em um documento que pode ser removida se as propriedades do documento forem acessadas. Conseqüentemente, tal senha não é garantia da segurança do documento.

{{% /alert %}}

Se precisar verificar se um documento possui uma senha de proteção contra gravação que restringe sua edição, você pode usar a propriedade [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/).

O exemplo de código a seguir mostra como tornar um documento somente leitura:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## Remover restrição somente leitura

Se não quiser que um usuário abra seu documento como somente leitura, você pode simplesmente definir a propriedade [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) como `False` ou selecionar [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) como [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

O exemplo de código a seguir mostra como remover o acesso somente leitura de um documento:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
