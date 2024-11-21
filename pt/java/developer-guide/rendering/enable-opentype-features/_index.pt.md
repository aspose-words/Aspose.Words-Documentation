---
title: Ativar recursos OpenType em Java
second_title: Aspose.Words para Java
articleTitle: Ativar recursos OpenType
linktitle: Ativar recursos OpenType
description: "Recursos avançados de tipografia em Aspose.Words para Java."
type: docs
weight: 25
url: /pt/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType é um formato de fonte, introduzido para fornecer melhor suporte para idiomas internacionais e sistemas de escrita em comparação com PostScript e TrueType. Os recursos de layout do OpenType são comumente conhecidos como recursos OpenType. Aspose.WordsComportamento.HarfBuzz pacote fornece suporte para recursos OpenType em Aspose.Words usando o `HarfBuzz` máquina de moldar texto.

Aspose.Words é capaz de usar objetos text shaper fornecidos externamente. Um modelador de texto representa uma fonte e computação moldando informações para um texto. Um documento refere-se tipicamente a várias fontes, portanto, uma fábrica de modelador de texto é necessária. Este pacote contém uma implementação de uma fábrica de modelador de texto utilizada por Aspose.Words.Layout.LayoutOptions.TextShaperFactory propriedade.

{{% alert color="primary" %}}

Formatação de texto só é realizada ao exportar para PDF ou XPS formatos.

{{% /alert %}}

Em uma única instância de aplicação típica de uma fábrica de modelador de texto é compartilhada entre todas as instâncias do documento. Sempre que um formador de texto é criado um arquivo de fonte é acessado. Parsing um arquivo de fonte é uma operação cara assim caching é recomendado. Aspose.Words implementos InformaÃ§Ã£o geral classe Cache que envolve a implementação de fábrica de modelador de texto e caches instâncias de modelador de texto devolvido pela fábrica embrulhada.

O exemplo de código a seguir mostra como ativar o suporte de recursos do OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
