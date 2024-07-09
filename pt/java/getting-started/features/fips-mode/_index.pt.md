---
title: Modo FIPS
second_title: Aspose.Words para Java
articleTitle: Modo FIPS
linktitle: Modo FIPS
description: "Aspose.Words para Java usa vários algoritmos de criptografia e hash ao processar documentos para cumprir com os padrões FIPS."
type: docs
weight: 80
url: /pt/java/fips-mode/
---

Aspose.Words usa várias criptografia e algoritmos hash ao processar documentos e este artigo descreve como ele está relacionado com os padrões FIPS.

As Normas Federal de Processamento de Informações (FIPS) são um conjunto de normas abertamente publicadas desenvolvidas pelo governo federal dos Estados Unidos para estabelecer requisitos para vários propósitos, como garantir a segurança e a interoperabilidade do computador.

## BouncyCastle para o resgate

Aspose.Words para Java e Aspose.Words para Android usar o castelo Bouncy FIPS JAR para criptografia, decodificação e assinatura de documentos. O JAR foi projetado e implementado para atender aos requisitos FIPS 140-2, Nível 1.

FIPS 140-2 é um padrão de segurança de computadores do governo dos EUA usado para aprovar módulos criptográficos. Este padrão especifica os requisitos de segurança que serão satisfeitos por um módulo criptográfico e fornece altos níveis de segurança destinados a cobrir uma ampla gama de aplicações e ambientes potenciais. Para mais detalhes sobre FIPS 140-2, consulte o [NIST publicação](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words para .NET usa a versão geral Bouncy Castle sem suporte para FIPS.

## Ativação do modo FIPS

A partir da versão 18.10 Aspose.Words permite trabalhar em dois modos: Geral e FIPS.

Por padrão Aspose.Words funciona no modo Geral, então não há restrições sobre o uso de algoritmos e chaves neste caso.

Você pode mudar Aspose.Words do modo geral no modo FIPS usando o seguinte método:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Por razões de segurança, você não pode mudar o modo de volta para o General em tempo de execução.

Também note que Aspose.Words não pode reconhecer automaticamente se seu sistema operacional está no modo FIPS, portanto, você tem que mudar Aspose.Words para o modo FIPS explicitamente

Use o seguinte método para se certificar Aspose.Words para Java está no modo FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Quando o modo FIPS estiver ligado, Aspose Words irá impedi-lo de usar alguns algoritmos de criptografia e chaves com comprimentos não aprovados.

Por exemplo, ao tentar abrir um documento criptografado ODT enquanto o modo FIPS está ativo, você pode ver a seguinte exceção:

{{% alert color="primary" %}}

Operação de Segurança não aprovada Exceção: Uma tentativa de abrir um arquivo ODT que usa o algoritmo Blowfish. Este algoritmo não está na lista de algoritmos aprovados pela FIPS.

{{% /alert %}}

Isso acontece porque o algoritmo de Blowfish não está na lista de algoritmos aprovados pela FIPS.

A exceção semelhante pode ocorrer se as chaves do comprimento inadequado forem usadas:

Operação de Segurança não aprovada Exceção: Você não pode usar uma chave com o tamanho 1024 para RSA no modo FIPS.

Para mais detalhes na lista de algoritmos aprovados, consulte [Guia do usuário do castelo](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Cipher Algorithms (Symmetric)" (em inglês).


