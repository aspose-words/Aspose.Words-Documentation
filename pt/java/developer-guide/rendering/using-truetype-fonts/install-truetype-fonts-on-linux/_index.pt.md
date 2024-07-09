---
title: Instalar True Tipo Fontes sobre Linux em Java
second_title: Aspose.Words para Java
articleTitle: Instalar True Tipo Fontes sobre Linux
linktitle: Instalar True Tipo Fontes sobre Linux
description: "Aspose.Words para Java permite renderizar um documento criado usando Microsoft Word em um Linux máquina com a melhor precisão."
type: docs
weight: 20
url: /pt/java/install-truetype-fonts-on-linux/
---

Na maioria das vezes, você vai usar Aspose.Words converter documentos DOC ou DOCX para formato PDF. Se você precisa fazer isso em um Linux máquina, este tópico irá ajudá-lo a aprender a garantir Aspose.Words está renderizando seus documentos com a melhor precisão.

Na maioria das vezes, os documentos DOC e DOCX, que precisam ser convertidos foram criados usando Microsoft Word, em um Windows ou sistema operacional Mac OS. Portanto, a maioria das fontes utilizadas nos documentos DOC e DOCX são "Windows fontes" ou "Office fonts", que são as fontes instaladas com Microsoft Windows ou Microsoft Escritório. Estas fontes incluem Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings, e muitos outros.

O problema é que o `TrueType` fontes listadas acima não são instaladas por padrão em Linux distribuições. Se você tomar um documento DOCX típico que é formatado com a fonte Cambria e tentar convertê-lo para o formato PDF em Linux, Aspose.Words usará uma fonte diferente porque Cambria não está disponível. Como resultado, o documento PDF será diferente, em comparação com o documento original DOCX. Para garantir que os documentos convertidos Aspose.Words aparecer o mais próximo possível para o original, você precisa instalar "Windows fonts" no seu Linux sistema.

Existem duas maneiras principais de obter fontes TrueType em uma Linux sistema:

- Entendido. Arquivos TTC de um Windows máquina em seu Linux máquina
- Instalar um `TrueType` pacote de fonte, como *msttcorefonts*

## Copiar fontes de um Windows Máquina

Uma maneira fácil e rápida de obter fontes TrueType em uma Linux sistema é copiar. TTF e. Arquivos TTC do `C:\Windows\Fonts` Google - Agências alfandegárias Windows máquina para algum diretório em seu Linux Máquina. Você não precisa instalar ou registrar essas fontes no Linux de qualquer forma; você só precisa especificar a localização das fontes usando o [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) classe em Aspose.Words.

{{% alert color="primary" %}}

Verifique se o licenciamento de fonte é necessário e leia o EULA cuidadosamente antes de instalar MS Fonts em qualquer Linux sistema operacional.

{{% /alert %}}

## Instalar um `TrueType` Pacote de fontes

Há um número de Linux pacotes, contendo Microsoft Fontes TrueType, que você pode baixar e instalar em seu Linux Máquina. Os passos exatos podem ser diferentes em vários Linux distribuições.

- Em Ubuntu, use Synaptic Package Manager para encontrar e instalar o pacote *ttf-mscorefonts-installer*.
- No openSUSE, use Yast2 → Gestão de Software para encontrar e instalar o *fetchmsttfonts* pacote.
- Use Fontes de Libertação licenciadas sob OFL, como uma alternativa ao padrão Windows fontes: Arial, Times New Roman e Courier New.
- Para pacotes de fontes adequados a outros Linux distribuições, pesquisa documentação disponível na internet.

Depois de instalar o pacote, Aspose.Words vai encontrar essas fontes nas pastas em seu sistema e usá-las ao trabalhar com documentos.

## Ver também

- Não. [Fontes de Libertação](https://github.com/liberationfonts) como uma alternativa ao padrão Windows fontes
