---
title: Activar OpenType funcionalidades em Java
second_title: Aspose.Words para Java
articleTitle: Activar OpenType Funcionalidades
linktitle: Activar OpenType Funcionalidades
description: "Características tipográficas avançadas em Aspose.Words para Java."
type: docs
weight: 25
url: /pt/java/enable-opentype-features/
timestamp: 2024-01-27-14-07-04
---



OpenType é um formato de fonte, introduzido para fornecer melhor suporte para idiomas internacionais e sistemas de escrita em comparação com PostScript e TrueType. Os recursos de layout de OpenType são comumente conhecidos como recursos OpenType. Aspose.Words.Moldar.O pacote HarfBuzz fornece suporte para OpenType recursos em Aspose.Words usando o mecanismo de modelagem de texto `HarfBuzz`.

Aspose.Words é capaz de utilizar objectos modeladores de texto fornecidos externamente. Um modelador de texto representa uma fonte e calcula as informações de modelagem de um texto. Um documento normalmente se refere a várias fontes, portanto, uma fábrica de Modeladores de texto é necessária. Este pacote contém uma implementação de uma fábrica de Modeladores de texto utilizada por Aspose.Words.Disposição.LayoutOptions.TextShaperFactory propriedade.

{{% alert color="primary" %}}

A modelagem de texto só é realizada ao exportar para os formatos PDF ou XPS.

{{% /alert %}}

Em um aplicativo típico, uma única instância de uma fábrica de Modeladores de texto é compartilhada entre todas as instâncias de documentos. Sempre que um modelador de texto é criado, um arquivo de fonte é acessado. Analisar um arquivo de fonte é uma operação cara, portanto, o armazenamento em cache é recomendado. Aspose.Words implementa a classe BasicTextShaperCache que envolve a implementação do Text shaper factory e armazena em cache as instâncias do Text shaper retornadas pela fábrica encapsulada.

O exemplo de código a seguir mostra como ativar o Suporte de recursos OpenType.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-OpenTypeFeatures-OpenTypeFeatures.java" >}}
