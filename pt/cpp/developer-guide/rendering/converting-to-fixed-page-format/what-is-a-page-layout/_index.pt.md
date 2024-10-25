---
title: O que é um Layout de Página Em C++
second_title: Aspose.Words para C++
articleTitle: O que é um Layout de página
linktitle: O que é um Layout de página
description: "Vamos descobrir o que é um layout de página. Um layout de página descreve a geometria do conteúdo contido em um documento."
type: docs
weight: 5
url: /pt/cpp/what-is-a-page-layout/
---

A **document page layout** é uma estrutura de dados, descrevendo onde um determinado objeto está localizado nas páginas para todos os objetos do documento. Além disso, como os objetos têm propriedades que afetam sua aparência, como tamanho da fonte, efeitos de sombreamento ou desenho, você precisa não apenas saber onde o objeto está, mas também qual (is) área (s) da página que ocupa e se se aplicará a várias páginas para que outros objetos não se sobreponham à (s) mesma (s) Área (s).

## Para que serve um Layout de página?

Aspose.Words implementa a funcionalidade de layout de página internamente, permitindo-lhe produzir todos os formatos de página fixos, como PDF, XPS e vários formatos de imagem. Sem o layout da página, as informações armazenadas no arquivo de documento de página fixa não estariam disponíveis e todos esses formatos não seriam suportados.

A relação entre um documento e um layout de página é bastante simples. Enquanto um documento descreve o conteúdo, o layout da página correspondente descreve a geometria desse conteúdo. Observe que um layout de página não pode existir sem um documento, pois não haveria conteúdo para calcular a geometria, mas um documento pode existir sem um layout de página. Por exemplo, quando um documento DOCX é convertido em um documento RTF, normalmente é desnecessário conhecer a geometria, uma vez que nenhum formato a armazena.

## Ver Também

* [Criando um Layout de página](/words/cpp/creating-a-page-layout/)
* [Salvar um documento no formato de página Fixa](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Especificar Opções De Disposição](/words/cpp/specify-layout-options/)