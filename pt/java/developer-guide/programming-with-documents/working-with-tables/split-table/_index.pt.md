---
title: Mesa dividida em Java
second_title: Aspose.Words para Java
articleTitle: Tabela de divisão
linktitle: Tabela de divisão
description: "Mesa dividida em Java. Como dividir uma tabela em duas tabelas separadas Java."
type: docs
weight: 100
url: /pt/java/split-table/
timestamp: 2024-01-27-14-07-04
---

Quadro, representado no Aspose.Words Document Object Model, é composta de linhas e células independentes, tornando mais fácil dividir uma tabela.

Para manipular uma mesa para dividi-la em duas mesas, só precisamos mover algumas das linhas da tabela original para a nova. Para fazer isso, precisamos escolher a linha pela qual queremos dividir a mesa.

Podemos criar duas tabelas da tabela original seguindo estas etapas simples:

1. Criar um clone da tabela sem clonar as crianças para manter as linhas movidas e inseri-las após a tabela original
2. A partir da linha especificada, mova todas as linhas subseqüentes para esta segunda tabela

O exemplo de código a seguir mostra como dividir uma tabela em duas tabelas em uma linha específica:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}
