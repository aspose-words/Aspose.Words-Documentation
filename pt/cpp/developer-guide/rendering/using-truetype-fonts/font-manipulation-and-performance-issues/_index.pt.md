---
title: Manipulação de fontes e problemas de desempenho em C++
second_title: Aspose.Words para C++
articleTitle: Manipulação de fontes e problemas de desempenho
linktitle: Manipulação de fontes e problemas de desempenho
description: "Aspose.Words para C++ usa o nome completo da fonte, nome de Família, Versão, estilo para encontrar os dados de fonte necessários ou um substituto adequado para a fonte solicitada. FontSettings permite acelerar o carregamento dos documentos."
type: docs
weight: 11
url: /pt/cpp/font-manipulation-and-performance-issues/
timestamp: 2024-09-24-14-35-44
---

Todos os mecanismos de manipulação de fontes disponíveis estão contidos na classe [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings). Esta classe é responsável por buscar fontes dentro de fontes de fonte definidas, bem como pelo processo de substituição de fontes, conforme descrito abaixo.

## Analisando as fontes resolvidas

As fontes são analisadas em várias etapas:

1. Obtenção de informações para fonte, resolvendo de todas as fontes disponíveis.
1. Analisar as fontes resolvidas para obter glifos e métricas disponíveis (horizontal e vertical).
1. Análise das fontes resolvidas para incorporação e subconjunto.

Quando Aspose.Words encontra uma fonte no documento pela primeira vez, ele tenta obter informações básicas da fonte, como o nome completo da fonte, nome de Família, Versão, estilo, dos arquivos de fonte localizados em cada fonte. Depois que todas as fontes forem recuperadas, Aspose.Words usa esses detalhes para encontrar os dados de fonte necessários ou um substituto adequado para a fonte solicitada.

## Problema De Desempenho Ao Substituir Fontes

Uma vez que o procedimento acima descrito é demorado, pode afectar negativamente o desempenho da aplicação no seu primeiro lançamento. No entanto, cada instância de **FontSettings** tem a sua própria cache, o que pode reduzir o tempo de processamento dos documentos subsequentes. Por exemplo, você pode compartilhar uma instância da classe **FontSettings** entre documentos diferentes, o que permite acelerar o carregamento dos documentos. O exemplo a seguir demonstra isso:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

No caso em que **FontSettings** não é definido explicitamente, Aspose.Words usa a instância **FontSettings** padrão. Esta instância também é automaticamente partilhada entre documentos e pode ser extraída da seguinte forma:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Usando a instância FontSettings padrão

Se você tiver certeza de que todos os documentos de processamento exigem as mesmas configurações de fonte, é recomendável configurar e utilizar a instância **FontSettings** padrão. Suponha que você precise usar as mesmas fontes de fonte para todos os seus documentos. Nesse caso, você pode simplesmente alterar a instância padrão da seguinte maneira:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

O **FontSettings** personalizado tem prioridade mais alta do que a instância padrão.

{{% /alert %}}
