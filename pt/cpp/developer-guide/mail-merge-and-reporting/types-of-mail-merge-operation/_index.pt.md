---
title: Tipos de Mail Merge Operação em C++
second_title: Aspose.Words para C++
articleTitle: Tipos de Mail Merge Operação
linktitle: Tipos de Mail Merge Operação
type: docs
description: "Realizar dois tipos diferentes de Mail Merge operações: simples Mail Merge e Mail Merge com regiões que utilizam C++. Simples Mail Merge repete todo o documento por cada registo da fonte de dados, enquanto Mail Merge com regiões repete apenas regiões designadas por Registo."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /pt/cpp/types-of-mail-merge-operations/
timestamp: 2024-09-24-14-35-44
---

A ideia principal do Mail Merge é criar automaticamente um documento ou vários documentos com base no seu modelo e nos dados obtidos a partir da sua fonte de dados. Aspose.Words permite que você execute dois tipos diferentes de Mail Merge operações: simples Mail Merge e Mail Merge com regiões.

O exemplo mais comum de Uso do simple Mail Merge é quando você deseja enviar um documento para diferentes clientes, incluindo seus nomes no início do documento. Para fazer isso, você precisa criar campos de mesclagem, como *First Name* e *Last Name* no seu modelo e, em seguida, preencha-os com os dados da sua fonte de dados. Considerando que o exemplo mais comum de Utilização Mail Merge com regiões é quando você deseja enviar um documento que inclui pedidos específicos com a lista de todos os itens dentro de cada pedido. Para fazer isso, você precisará criar regiões de mesclagem dentro do seu modelo – região própria para cada pedido, a fim de preenchê-lo com todos os dados necessários para os itens.

A principal diferença entre as duas operações de mesclagem é que simples Mail Merge (sem regiões) repete todo o documento por cada registo da fonte de dados, enquanto Mail Merge com regiões repete apenas regiões designadas por Registo. Você pode pensar em um simples Mail Merge operação como um caso particular de fusão com regiões em que a única região é o documento completo.

{{% alert color="primary" %}}

O [MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/) classe representa um Mail Merge funcionalidade. Com suas propriedades, Você pode personalizar o comportamento necessário antes de executar um Mail Merge operação.

{{% /alert %}}

