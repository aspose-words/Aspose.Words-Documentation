---
title: Простая операция Mail Merge в C++
second_title: Aspose.Words для C++
articleTitle: Простое управление Mail Merge
linktitle: Простое управление Mail Merge
type: docs
description: "Простое mail merge используется для заполнения полей mail merge в вашем шаблоне необходимыми данными из вашего источника данных – оно аналогично классическому mail merge в Microsoft Word. Добавьте одно или несколько полей для объединения в свой шаблон, а затем выполните простую операцию mail merge."
keywords: "how to execute mail merge c++"
weight: 10
url: /ru/cpp/simple-mail-merge-operation/
---

Простое значение mail merge используется для заполнения полей mail merge внутри вашего шаблона необходимыми данными из вашего источника данных (представление в виде одной таблицы). Таким образом, оно аналогично классическому значению mail merge в Microsoft Word.

Вы можете добавить одно или несколько полей для объединения в свой шаблон, а затем выполнить простую операцию mail merge. Рекомендуется использовать ее, если в вашем шаблоне нет областей для объединения.

Основным ограничением использования этого типа является то, что все содержимое документа будет повторяться для каждой записи в источнике данных.

## Как выполнить простую операцию Mail Merge

Как только ваш шаблон будет готов, вы можете приступить к выполнению простой операции mail merge. Aspose.Words позволяет выполнить простую операцию mail merge, используя различные методы [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/), которые принимают различные объекты данных в качестве источника данных.

В следующем примере кода показано, как выполнить простую операцию mail merge, используя один из методов [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Вы можете заметить разницу между документами перед выполнением простого mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

И после выполнения простого mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Как создать несколько объединенных документов

В случае Aspose.Words стандартная операция mail merge заполняет содержимым из вашего источника данных только один документ. Таким образом, вам нужно будет выполнить операцию mail merge много раз, чтобы создать несколько объединенных документов в качестве выходных данных.

В следующем примере кода показано, как сгенерировать несколько объединенных документов во время операции mail merge с [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
