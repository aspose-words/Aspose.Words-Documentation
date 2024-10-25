---
title: Dividir tabela em C++
second_title: Aspose.Words para C++
articleTitle: Tabela Dividida
linktitle: Tabela Dividida
description: "Tabela dividida em C++. Como dividir uma tabela em duas tabelas separadas C++."
type: docs
weight: 100
url: /pt/cpp/split-table/
---

Uma tabela, representada no modelo de objeto de documento Aspose.Words, é composta por linhas e células independentes, facilitando a divisão de uma tabela.

Para manipular uma tabela para dividi-la em duas tabelas, basta mover algumas das linhas da tabela original para a nova. Para fazer isso, precisamos escolher a linha pela qual queremos dividir a tabela.

Podemos criar duas tabelas a partir da tabela original seguindo estes passos simples:

1. Crie um clone da tabela sem clonar os filhos para manter as linhas movidas e inseri-las após a tabela original
2. A partir da linha especificada, mova todas as linhas subsequentes para esta segunda tabela

O exemplo de código a seguir mostra como dividir uma tabela em duas tabelas em uma linha específica:

{{< gist "aspose-words-gists" "29ce7710cab8c3ef18e912a5813e0d36" "split-table.h" >}}
