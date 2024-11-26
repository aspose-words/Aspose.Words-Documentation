---
title: Dividir a tabela em Java
second_title: Aspose.Words para Java
articleTitle: Tabela Dividida
linktitle: Tabela Dividida
description: "Dividir a tabela em Java. Como dividir uma tabela em duas tabelas separadas Java."
type: docs
weight: 100
url: /pt/java/split-table/
timestamp: 2024-01-27-14-07-04
---

Uma tabela, representada no modelo de objeto de documento Aspose.Words, é composta por linhas e células independentes, facilitando a divisão de uma tabela.

Para manipular uma tabela para dividi-la em duas tabelas, basta mover algumas das linhas da tabela original para a nova. Para fazer isso, precisamos escolher a linha pela qual queremos dividir a tabela.

Podemos criar duas tabelas a partir da tabela original seguindo estes passos simples:

1. Crie um clone da tabela sem clonar os filhos para manter as linhas movidas e inseri-las após a tabela original
2. A partir da linha especificada, mova todas as linhas subsequentes para esta segunda tabela

O exemplo de código a seguir mostra como dividir uma tabela em duas tabelas em uma linha específica:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}
