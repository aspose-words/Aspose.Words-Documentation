---
title: Instalar TrueType fontes em Linux Em C++
second_title: Aspose.Words para C++
articleTitle: Instalar TrueType fontes em Linux
linktitle: Instalar TrueType fontes em Linux
description: "Aspose.Words para C++ permite renderizar um documento criado usando Microsoft Word em uma máquina Linux com a melhor precisão. Para fazer isso, copie os arquivos de fonte de uma máquina Windows ou instale um pacote de fonte `TrueType` em sua máquina Linux."
type: docs
weight: 20
url: /pt/cpp/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Na maioria das vezes, você usará Aspose.Words para converter DOC ou DOCX documentos para o formato PDF. Se você precisar fazer isso em uma máquina Linux, este tópico o ajudará a aprender como garantir que Aspose.Words esteja renderizando seus documentos com a melhor precisão.

Na maioria das vezes, os documentos DOC e DOCX, que precisam ser convertidos, foram criados usando Microsoft Word, em um sistema operacional Windows ou Mac OS. Portanto, a maioria das fontes usadas em documentos DOC e DOCX são "Windows fonts" ou "Office fonts", que são as fontes instaladas com Microsoft Windows ou Microsoft Office. Essas fontes incluem Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings e muitos outros.

O problema é que as fontes `TrueType` listadas acima não são instaladas por padrão em distribuições Linux. Se você pegar um documento DOCX típico formatado com a Fonte Cambria e tentar convertê-lo para o formato PDF em Linux, Aspose.Words usará uma fonte diferente porque Cambria não está disponível. Como resultado, o documento PDF terá uma aparência diferente, em comparação com o documento DOCX original. Para garantir que os documentos convertidos por Aspose.Words aparecem o mais próximo possível do original, é necessário instalar "Windows fonts" no seu sistema Linux.

Existem duas maneiras principais de obter TrueType fontes em um sistema Linux:

- Entendido .TTF e.TTC ficheiros de uma máquina Windows para a sua máquina Linux
- Instale um pacote de fontes `TrueType`, como *msttcorefonts*

## Copiar Fontes de uma máquina Windows

Uma maneira fácil e rápida de obter TrueType fontes em um sistema Linux é copiar .TTF E.TTC arquivos do diretório C:\Windows\Fonts em uma máquina Windows para algum diretório em sua máquina Linux. Você não precisa instalar ou registrar essas fontes em Linux de forma alguma; você só precisa especificar a localização das fontes usando a classe [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) em Aspose.Words.

{{% alert color="primary" %}}

Verifique se o Licenciamento de fontes é necessário e leia o EULA cuidadosamente antes de instalar as fontes MS em qualquer sistema operacional Linux.

{{% /alert %}}

## Instalar um pacote de fontes `TrueType`

Existem vários pacotes Linux, contendo fontes Microsoft TrueType, que pode descarregar e instalar na sua máquina Linux. As etapas exatas podem ser diferentes em várias distribuições Linux.

- Em Ubuntu, use o Synaptic Package Manager para localizar e instalar o pacote *ttf-mscorefonts-installer*.
- No openSUSE, utilize a gestão de Software do Yast2 para localizar e instalar o pacote *fetchmsttfonts*.
- Use fontes Liberation licenciadas sob OFL, como uma alternativa às fontes padrão Windows: Arial, Times New Roman e Courier New.
- Para pacotes de fontes adequados a outras distribuições Linux, procure a documentação disponível na internet.

Depois de instalar o pacote, Aspose.Words encontrará essas fontes nas pastas do seu sistema e as usará ao trabalhar com documentos.

## Ver Também

- [Fontes Liberation](https://github.com/liberationfonts) como alternativa às fontes padrão Windows
