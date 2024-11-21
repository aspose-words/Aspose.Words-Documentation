---
title: Habilite recursos OpenType em C#
second_title: Aspose.Words para .NET
articleTitle: Habilitar recursos OpenType
linktitle: Habilitar recursos OpenType
description: "Recursos avançados de tipografia usando C#."
type: docs
weight: 25
url: /pt/net/enable-opentype-features/
timestamp: 2024-07-10-14-38-57
---

OpenType é um formato de fonte introduzido para fornecer melhor suporte para idiomas e sistemas de escrita internacionais em comparação com PostScript e TrueType. Os recursos de layout do OpenType são comumente conhecidos como recursos OpenType. O pacote Aspose.Words.Shaping.HarfBuzz fornece suporte para recursos OpenType em Aspose.Words usando mecanismo de modelagem de texto HarfBuzz.

Aspose.Words é capaz de usar objetos modeladores de texto fornecidos externamente. Um modelador de texto representa uma fonte e calcula informações de modelagem para um texto. Um documento normalmente se refere a várias fontes, portanto, é necessária uma fábrica de modeladores de texto. Este pacote contém uma implementação de uma fábrica de modelador de texto utilizada pela propriedade Aspose.Words.Layout.LayoutOptions.TextShaperFactory.

{{% alert color="primary" %}}

A modelagem do texto só é realizada na exportação para os formatos PDF ou XPS.

{{% /alert %}}

Em um aplicativo típico, uma única instância de uma fábrica de modeladores de texto é compartilhada entre todas as instâncias de documentos. Sempre que o modelador de texto é criado, um arquivo de fonte é acessado. Analisar um arquivo de fonte é uma operação cara, portanto, o armazenamento em cache é recomendado. Aspose.Words implementa a classe BasicTextShaperCache que agrupa a implementação da fábrica do modelador de texto e armazena em cache as instâncias do modelador de texto retornadas pela fábrica agrupada.

O exemplo de código a seguir mostra como ativar o suporte de recursos OpenType.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-OpenType-OpenTypeFeatures-OpenTypeFeatures.cs" >}}
