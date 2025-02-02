﻿---
title: Клонировать документ в Java
second_title: Aspose.Words для Java
articleTitle: Клонирование документа
linktitle: Клонирование документа
type: docs
description: "Клонируйте документ, чтобы получить его идентичную копию. При создании копии узлы и свойства исходного документа клонируются с помощью Java."
weight: 70
url: /ru/java/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

Клонирование документа - это процесс создания идентичной копии исходного документа, который может повысить производительность и уберечь вас от потенциальных утечек памяти.

В этой статье будут описаны основные варианты использования клонирования документа и как создать клон документа с помощью Aspose.Words.

## Операции с клонируемыми документами

Операция клонирования позволяет ускорить процесс создания документов, так как вам не нужно будет каждый раз загружать и анализировать документ из файла.

После создания клона вашего документа вы сможете редактировать его и выполнять с ним различные операции, например, сравнивать с исходным документом, добавлять или вставлять в другой документ. Вы также можете изменять клонированные элементы или их содержимое перед вставкой в другой документ.

## Создание клона документа

Aspose.Words позволяет вам клонировать документ, используя метод [Clone](https://reference.aspose.com/words/java/com.aspose.words/document/#deepClone), который выполняет глубокую копию документа и возвращает его. Другими словами, он получит полную копию DOM. Метод `Clone` ускоряет создание документов, и вам нужна всего одна строка кода, чтобы получить копию вашего документа.

При клонировании создается новый документ с тем же содержимым, что и в оригинале, но с уникальной копией каждого из [nodes](https://reference.aspose.com/words/java/com.aspose.words/node/) исходных документов. Вы также можете применить операцию клонирования к узлу документа, используя метод node [Clone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean), который позволяет дублировать узлы составного документа с их дочерними узлами и без них.

{{% alert color="primary" %}}

Обратите внимание, что при применении метода клонирования будут клонированы все свойства документа.

{{% /alert %}}

В следующем примере кода показано, как клонировать документ и создать дубликат раздела в этом документе:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CloneDocument-CloneADocument.java" >}}
