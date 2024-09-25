---
title: Requisitos de memória
second_title: Aspose.Words para .NET
articleTitle: Requisitos de memória
linktitle: Requisitos de memória
description: "Quanta memória o Aspose.Words para .NET requer para trabalhar com documentos? Aprenda os detalhes."
type: docs
weight: 10
url: /pt/net/memory-requirements/
---

Aspose.Words oferece uma ampla gama de recursos para trabalhar com documentos em vários formatos. É importante observar que não há limite para o tamanho máximo de um arquivo de documento que o Aspose.Words pode processar ou renderizar. A única limitação é a quantidade de RAM (memória) disponível do seu lado.

## Quanta memória o Aspose.Words precisa

Normalmente, o Aspose.Words precisa de várias vezes mais memória do que o tamanho do documento para construir um modelo do documento na memória. Por exemplo, se o tamanho do seu documento for 1 MB, o Aspose.Words precisará de 10 a 20 MB de RAM para construir seu Document Object Model (DOM) na memória. O multiplicador depende do formato porque alguns formatos são mais compactos que outros. Por exemplo, DOCX é mais compacto que DOC e RTF, e DOC é mais compacto que RTF.

Não há uma maneira exata de estimar quanta memória o Aspose.Words realmente consome durante o processamento de qualquer arquivo de documento específico. Como você deve saber, o .NET armazena dados em classes, cada instância de classe usa alguma memória para fins internos do CLR. Portanto, qualquer parágrafo ou texto formatado (mesmo que consista em um caractere) ocupa um pouco de memória extra após ser carregado no DOM. Além disso, o mecanismo coletor de lixo .NET utiliza um algoritmo complexo para determinar o melhor momento para realizar uma coleta de memória, dificultando a determinação do consumo real de memória.

## Como calcular a quantidade de memória

Vamos considerar dois documentos:

1. Documento DOCX "A" – tamanho 0,35 MB (2 mil páginas), somente texto
2. Documento DOCX "B" – tamanho 0,35 MB (apenas 1 página), com imagem PNG dentro

Como você sabe, muitos formatos modernos como DOCX, ODT, etc. são arquivos ZIP simples. Portanto, obtemos o seguinte algoritmo de cálculo:
1. Descompactando. O documento descompactado "A" tem tamanho de 20 MB, o documento "B" tem tamanho de 0,4 MB
2. Carregando o documento no modelo (construindo seu Document Object Model – DOM):
* A criação de DOM do primeiro documento "A" requer tamanho de 49 MB
* A criação de DOM do segundo documento "B" requer apenas 2 MB.
3. Medir a quantidade necessária de memória para renderizar esses documentos em PDF. Para esta operação, Aspose.Words requer:
  * 294 MB para documento "A"
  * 7 MB para documento "B"

Portanto, como você pode ver, não há dependência linear do tamanho do documento de entrada. Existem muitos fatores que podem afetar o tamanho de RAM necessário – o formato do documento, sua complexidade e estrutura, o número de imagens e seu formato, e muitos outros fatores.

## Como calcular o multiplicador de memória com mais precisão

Experimentos com milhares de documentos reais mostram que normalmente o Aspose.Words requer várias vezes mais memória do que o tamanho médio do documento para construir um modelo de documento na memória e executar operações simples como conversão entre formatos de fluxo, mail merge, análise, substituição e assim por diante. Às vezes estamos falando de um multiplicador de 2 e às vezes de 20.

Operações mais complexas como renderização (conversão para formatos fixos de páginas), atualização de campos, divisão de páginas, entre outras, para alguns documentos requerem 20 vezes mais recursos que a memória alocada pelo documento carregado em Aspose.Words DOM.

Se os resultados do seu perfil indicarem um possível problema de memória no Aspose.Words, entre em contato com nosso [Suporte técnico](/words/pt/net/technical-support/) e inclua todas as informações de diagnóstico.

## Veja também

* [Meça o uso de memória em Visual Studio (C#, Visual Basic, C++, F#)](https://learn.microsoft.com/en-us/visualstudio/profiling/memory-usage?view=vs-2022)
* [Renderização](/words/pt/net/rendering/)
* [Mail Merge e relatórios](/words/net/mail-merge-and-reporting/)
* [Trabalhando com Campos](/words/pt/net/working-with-fields/)