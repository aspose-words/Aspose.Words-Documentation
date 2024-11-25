---
title: FIPS modo
second_title: Aspose.Words para Java
articleTitle: FIPS modo
linktitle: FIPS modo
description: "Aspose.Words for Java usa vários algoritmos de criptografia e hash ao processar documentos para cumprir os padrões FIPS."
type: docs
weight: 80
url: /pt/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words usa vários algoritmos de criptografia e hash ao processar documentos e este artigo descreve como isso está relacionado aos padrões FIPS.

Os padrões federais de processamento de informações (FIPS) são um conjunto de padrões publicados abertamente desenvolvidos pelo governo federal dos Estados Unidos para estabelecer requisitos para vários fins, como garantir a segurança e a interoperabilidade do computador.

## BouncyCastle para o resgate

Aspose.Words para Java e Aspose.Words para Android use o castelo inflável FIPS JAR para criptografia, descriptografia e assinatura de documentos. O JAR foi concebido e implementado para satisfazer os requisitos do FIPS 140-2, Nível 1.

FIPS 140-2 é um padrão de segurança de computadores do governo dos EUA usado para aprovar módulos criptográficos. Esta norma especifica os requisitos de segurança que serão satisfeitos por um módulo criptográfico e fornece altos níveis de segurança destinados a cobrir uma ampla gama de aplicações e ambientes potenciais. Para mais detalhes sobre FIPS 140-2, ver o [NIST publicaa](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words para .NET usa a versão Geral do Castelo Insuflável sem suporte para FIPS.

## FIPS Activação Do Modo

A partir da versão 18.10 Aspose.Words permite trabalhar em dois modos: geral e FIPS.

Por padrão, Aspose.Words funciona no modo geral, portanto, não há restrições ao uso de algoritmos e chaves neste caso.

Você pode alternar Aspose.Words do modo geral para o modo FIPS usando o seguinte método:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Por razões de segurança, não é possível alterar o modo de volta para geral em tempo de execução.

Observe também que Aspose.Words não pode reconhecer automaticamente se o seu sistema operacional está no modo FIPS, Portanto, você deve alternar Aspose.Words para o modo FIPS explicitamente.

Use o método a seguir para garantir que Aspose.Words para Java esteja no modo FIPS:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Quando o modo FIPS estiver ativado, as palavras Aspose impedirão que você use alguns algoritmos de criptografia e Chaves com comprimentos não aprovados.

Por exemplo, ao tentar abrir um documento encriptado ODT enquanto o modo FIPS está activo, poderá ver a seguinte excepção:

{{% alert color="primary" %}}

UnapprovedSecurityOperationException: uma tentativa de abrir um ficheiro ODT que utiliza o algoritmo Blowfish. Este algoritmo não está na lista de algoritmos aprovados por FIPS.

{{% /alert %}}

Isto acontece porque o algoritmo Blowfish não está na lista de algoritmos aprovados FIPS.

A exceção semelhante pode ocorrer se forem utilizadas chaves de comprimento inadequado:

UnapprovedSecurityOperationException: não pode utilizar uma chave com o tamanho 1024 para RSA no modo FIPS.

Para obter mais detalhes sobre a lista de algoritmos aprovados, consulte [BouncyCastle Guia Do Utilizador](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Algoritmos De Cifra (Simétricos)".


