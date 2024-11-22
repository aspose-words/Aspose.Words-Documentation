---
title: Simples Mail Merge Operação em C++
second_title: Aspose.Words para C++
articleTitle: Simples Mail Merge Operação
linktitle: Simples Mail Merge Operação
type: docs
description: "Um simples Mail Merge é usado para preencher o Mail Merge campos dentro do seu modelo com os dados necessários da sua fonte de dados-é semelhante ao clássico Mail Merge em Microsoft Word. Adicione um ou mais campos de mesclagem em seu modelo e, em seguida, execute Mail Merge operação."
keywords: "how to execute Mail Merge c++"
weight: 10
url: /pt/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

Um simples Mail Merge é usado para preencher o Mail Merge campos dentro do seu modelo com os dados necessários da sua fonte de dados (representação de tabela única). Por isso, é semelhante ao clássico Mail Merge em Microsoft Word.

Você pode adicionar um ou mais campos de mesclagem em seu modelo e, em seguida, executar Mail Merge operação. Recomenda-se usá-lo se o seu modelo não contiver regiões de mesclagem.

A principal limitação da utilização deste tipo é que todo o conteúdo do documento será repetido para cada registo na fonte de dados.

## Como executar um simples Mail Merge Operação

Uma vez que seu modelo está pronto, você pode começar a executar o simples Mail Merge operação. Aspose.Words permite executar um simples Mail Merge operação usando diferentes [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) métodos que aceitam vários objetos de dados como fonte de dados.

O exemplo de código a seguir mostra como executar um Mail Merge operação utilizando um dos [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) método:

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Você pode notar a diferença entre o documento antes de executar o simple mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

E depois de executar simples mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Como criar vários documentos mesclados

Em Aspose.Words, a norma Mail Merge a operação preenche apenas um único documento com conteúdo da sua fonte de dados. Então, você precisará executar o Mail Merge operação muitas vezes para criar alguns documentos mesclados como saída.

O exemplo de código a seguir mostra como gerar alguns documentos mesclados durante um Mail Merge operação com [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
