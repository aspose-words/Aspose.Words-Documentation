---
title: Requisitos de memória
second_title: Aspose.Words para Java
articleTitle: Requisitos de memória
linktitle: Requisitos de memória
description: "Quanto memória faz Aspose.Words para Java requerer trabalhar com documentos? Saiba os detalhes."
type: docs
weight: 10
url: /pt/java/memory-requirements/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words fornece uma ampla gama de recursos para trabalhar com documentos em vários formatos. É importante notar que não há limite no tamanho máximo de um arquivo de documento que Aspose.Words pode processar ou renderizar. A única limitação é a quantidade de RAM (memória) disponível em seu lado.

## Quanto Memória Aspose.Words Precisas

Normalmente. Aspose.Words precisa de várias vezes mais memória do que o tamanho do documento para construir um modelo do documento em memória. Por exemplo, se o seu tamanho do documento for 1 MB, Aspose.Words precisa de 10-20 MB de RAM para construir Document Object Model (DOM) em memória. O multiplicador depende do formato porque alguns formatos são mais compactos do que outros. Por exemplo, DOCX é mais compacto do que DOC e RTF, e DOC é mais compacto do que RTF.

Não há nenhuma maneira exata de estimar quanto memória Aspose.Words na verdade consome durante o processamento de qualquer arquivo de documento particular. Como você pode saber Java armazena dados em classes, cada instância de classe usa alguma memória para JVM (Java máquina virtual) finalidades internas. Assim, qualquer parágrafo ou texto formatado (mesmo consiste em um caractere) leva alguma memória extra depois de carregar no DOM. Além disso, Java O motor de coleta de lixo usa um algoritmo complexo para determinar o melhor momento para realizar uma coleção de memória, tornando difícil determinar o consumo real de memória.

## Como Calcular a quantidade de memória

Vamos considerar dois documentos:

1. DOCX "A" documento – 0,35 MB tamanho (2 mil páginas), texto apenas
2. DOCX "B" documento – 0,35 MB tamanho (apenas 1 página), com imagem PNG dentro

Como você sabe, muitos formatos modernos como DOCX, ODT, etc são arquivos ZIP simples. Então, obtemos o seguinte algoritmo de cálculo:
1. Unzipping. Documento não controlado "A" tem 20 MB de tamanho, documento "B" tem 0,4 MB de tamanho
2. Carregando o documento no modelo (construindo sua Document Object Model – DOM:
* Criando DOM do primeiro documento "A" requer 49 MB de tamanho
* Criando DOM do segundo documento "B" requer apenas 2 tamanho MB.
3. Medindo a quantidade necessária de memória para tornar esses documentos em PDF. Para esta operação, Aspose.Words requer:
  * 294 MB para documento "A"
  * 7 MB para documento "B"

Assim, como você pode ver, não há dependência linear do tamanho do documento de entrada. Existem muitos fatores que podem afetar o tamanho necessário da RAM – o formato do documento, sua complexidade e estrutura, o número de imagens e seu formato, e muitos outros fatores.

## Como Calcular o Multiplicador de Memória Mais Exatamente

Experimentos com milhares de documentos reais mostram que tipicamente Aspose.Words requer várias vezes mais memória do que o tamanho médio do documento para construir um modelo de documento em memória e executar operações simples como conversão entre formatos de fluxo, mail merge, analisar, substituir, e assim por diante. Às vezes estamos falando de um multiplicador de 2, e às vezes 20.

Operações mais complexas como renderização (conversão a formatos de página fixa), atualização de campos, página de divisão e outros, para alguns documentos exigem 20 vezes mais recursos do que a memória alocada pelo documento carregado em Aspose.Words DOM.

Se seus resultados de profiling indicarem um possível problema de memória em Aspose.Words, por favor contacte o nosso [Suporte para suporte técnico técnico](/words/pt/java/technical-support/) e incluir todas as informações diagnósticas.

## Ver também

* [Renderização](/words/pt/java/rendering/)
* [Mail Merge e Relatórios](/words/java/mail-merge-and-reporting/)
* [Trabalhando com Campos](/words/pt/java/working-with-fields/)
