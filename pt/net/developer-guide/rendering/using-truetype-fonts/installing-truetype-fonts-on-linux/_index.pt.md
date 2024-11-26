---
title: Instale fontes TrueType em Linux em C#
second_title: Aspose.Words para .NET
articleTitle: Instale fontes TrueType em Linux
linktitle: Instale fontes TrueType em Linux
description: "Aspose.Words para .NET permite renderizar um documento criado usando Microsoft Word em uma máquina Linux com a melhor precisão usando C#. Para fazer isso, copie os arquivos de fontes de uma máquina Windows ou instale um pacote de fontes `TrueType` em sua máquina Linux em C#."
type: docs
weight: 20
url: /pt/net/installing-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Na maioria das vezes, você usará Aspose.Words para converter documentos DOC ou DOCX para o formato PDF. Se você precisar fazer isso em uma máquina Linux, este tópico ajudará você a aprender como garantir que o Aspose.Words renderize seus documentos com a melhor precisão.

Na maioria das vezes, os documentos DOC e DOCX que precisam ser convertidos foram criados em Microsoft Word, em sistema operacional Windows ou Mac OS. Portanto, a maioria das fontes usadas em documentos DOC e DOCX são "fontes Windows" ou "fontes Office", que são as fontes instaladas com Microsoft Windows ou Microsoft Office. Essas fontes incluem Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings e muitas outras.

O problema é que as fontes `TrueType` listadas acima não são instaladas por padrão nas distribuições Linux. Se você pegar um documento DOCX típico formatado com a fonte Cambria e tentar convertê-lo para o formato PDF em Linux, o Aspose.Words usará uma fonte diferente porque Cambria não está disponível. Como resultado, o documento PDF terá uma aparência diferente em comparação ao documento DOCX original. Para garantir que os documentos convertidos por Aspose.Words apareçam o mais próximo possível do original, você precisa instalar "fontes Windows" em seu sistema Linux.

Existem duas maneiras principais de obter fontes TrueType em um sistema Linux:

- Copie arquivos .TTF e .TTC de uma máquina Windows para sua máquina Linux
- Instale um pacote de fontes `TrueType`, como *msttcorefonts*

## Copiando fontes de uma máquina Windows

Uma maneira fácil e rápida de obter fontes TrueType em um sistema Linux é copiar os arquivos .TTF e .TTC do diretório `C:\Windows\Fonts` em uma máquina Windows para algum diretório em sua máquina Linux. Você não precisa instalar ou registrar essas fontes no Linux de forma alguma; você só precisa especificar a localização das fontes usando a classe [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) em Aspose.Words.

{{% alert color="primary" %}}

Verifique se o licenciamento de fontes é necessário e leia o EULA com atenção antes de instalar MS Fonts em qualquer sistema operacional Linux.

{{% /alert %}}

## Instale um pacote de fontes `TrueType`

Existem vários pacotes Linux, contendo fontes Microsoft TrueType, que você pode baixar e instalar em sua máquina Linux. As etapas exatas podem ser diferentes em várias distribuições Linux.

- No Ubuntu, use o Synaptic Package Manager para localizar e instalar o pacote *ttf-mscorefonts-installer*.
- No openSUSE, use Yast2 → Gerenciamento de Software para localizar e instalar o pacote *fetchmsttfonts*.
- Use Liberation Fonts licenciadas pela OFL, como alternativa às fontes Windows padrão: Arial, Times New Roman e Courier New.
- Para pacotes de fontes adequados a outras distribuições Linux, pesquise a documentação disponível na internet.

Após instalar o pacote, o Aspose.Words encontrará essas fontes nas pastas do seu sistema e as utilizará ao trabalhar com documentos.

## Veja também

- [Fontes de libertação](https://github.com/liberationfonts) como alternativa às fontes Windows padrão
