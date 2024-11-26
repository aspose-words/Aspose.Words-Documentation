---
title: Requisitos De Memória
second_title: Aspose.Words para Java
articleTitle: Requisitos De Memória
linktitle: Requisitos De Memória
description: "Quanta memória Aspose.Words para Java requer para trabalhar com documentos? Aprenda os detalhes."
type: docs
weight: 10
url: /pt/java/memory-requirements/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words fornece uma ampla gama de recursos para trabalhar com documentos em vários formatos. É importante observar que não há limite para o tamanho máximo de um arquivo de documento que Aspose.Words pode processar ou renderizar. A única limitação é a quantidade de RAM (memória) disponível do seu lado.

## Quanta Memória Aspose.Words Necessita

Normalmente, Aspose.Words necessita de várias vezes mais memória do que o tamanho do documento para construir um modelo do documento na memória. Por exemplo, se o tamanho do seu documento for 1 MB, Aspose.Words Precisa de 10-20 MB de RAM para construir seu modelo de objeto de Documento (DOM) na memória. O Multiplicador depende do formato porque alguns formatos são mais compactos do que outros. Por exemplo, DOCX é mais compacto que DOC e RTF, e DOC é mais compacto que RTF.

Não existe uma forma exacta de estimar a quantidade de memória Aspose.Words que consome efectivamente durante o processamento de qualquer ficheiro de documento em particular. Como você deve saber, Java armazena dados em classes, cada instância de classe usa alguma memória para fins internos de JVM (Java máquina virtual). Portanto, qualquer parágrafo ou texto formatado (mesmo que consista em um caractere) leva alguma memória extra após o carregamento no DOM. Além disso, o mecanismo coletor de lixo Java usa um algoritmo complexo para determinar o melhor momento para realizar uma coleta de memória, dificultando a determinação do consumo real de memória.

## Como calcular a quantidade de memória

Vamos considerar dois documentos:

1. DOCX "A" Documento - 0.35 MB Tamanho (2 mil páginas), apenas texto
2. DOCX "B" Documento - 0.35 MB Tamanho (apenas 1 página), com PNG imagem dentro

Como você sabe, muitos formatos modernos como DOCX, ODT, etc. são simples ZIP arquivos. Então, obtemos o seguinte algoritmo de cálculo:
1. Descompactação. Documento descompactado "A" tem 20 MB Tamanho, documento "B" tem 0.4 MB Tamanho
2. Carregando o documento no modelo – construindo seu modelo de objeto de Documento - DOM):
* A criação de DOM do primeiro documento "A" requer um tamanho de 49 MB
* A criação de DOM do segundo documento "B" requer apenas 2 MB de tamanho.
3. Medindo a quantidade necessária de memória para renderizar esses documentos em PDF. Para esta operação, Aspose.Words requer:
  *  294 MB para o documento "A"
  * 7 MB para o documento "B"

Portanto, como você pode ver, não há dependência linear do tamanho do documento de entrada. Existem muitos fatores que podem afetar o tamanho RAM necessário – o formato do documento, sua complexidade e estrutura, o número de imagens e seu formato e muitos outros fatores.

## Como calcular o Multiplicador de memória com mais precisão

Experimentos com milhares de documentos reais mostram que normalmente Aspose.Words requer várias vezes mais memória do que o tamanho médio do documento para construir um modelo de documento na memória e executar operações simples como conversão entre formatos de fluxo, mail merge, analisar, substituir e assim por diante. Por vezes, estamos a falar de um multiplicador de 2 e, por vezes, de 20.

Operações mais complexas, como renderização (conversão para formatos de página fixa), atualização de campos, divisão de página e outras, para alguns documentos requerem 20 vezes mais recursos do que a memória alocada pelo documento carregado em Aspose.Words DOM.

Se os resultados do seu perfil indicarem um possível problema de memória em Aspose.Words, contacte o nosso [Equipa De Apoio](/words/java/technical-support/) e incluir todas as informações de diagnóstico.

## Ver Também

* [Renderiza3](/words/java/rendering/)
* [Mail Merge e relações](/words/java/mail-merge-and-reporting/)
* [Trabalhar com campos](/words/java/working-with-fields/)
