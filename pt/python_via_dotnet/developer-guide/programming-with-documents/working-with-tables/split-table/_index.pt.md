---
title: Dividir tabela em Python
second_title: Aspose.Words para Python
articleTitle: Tabela dividida
linktitle: Tabela dividida
description: "Dividir tabela em Python. Como dividir uma tabela em duas tabelas separadas Python."
type: docs
weight: 100
url: /pt/python-net/split-table/
---

Uma tabela, representada no Aspose.Words Document Object Model, é composta por linhas e células independentes, facilitando a divisão de uma tabela.

Para manipular uma tabela para dividi-la em duas tabelas, precisamos apenas mover algumas linhas da tabela original para a nova. Para fazer isso, precisamos escolher a linha pela qual queremos dividir a tabela.

Podemos criar duas tabelas a partir da tabela original seguindo estes passos simples:

1. Crie um clone da tabela sem clonar os filhos para manter as linhas movidas e insira-as após a tabela original
2. Começando na linha especificada, mova todas as linhas subsequentes para esta segunda tabela

O exemplo de código a seguir mostra como dividir uma tabela em duas tabelas em uma linha específica:

{{< gist "aspose-words-gists" "d31be78b25b463dd4eb31c85c60fc549" "split-table.py" >}}
