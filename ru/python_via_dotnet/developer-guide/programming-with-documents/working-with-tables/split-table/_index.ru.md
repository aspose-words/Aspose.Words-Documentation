﻿---
title: Разделить таблицу на Python
second_title: Aspose.Words для Python
articleTitle: Разделенный стол
linktitle: Разделенный стол
description: "Разделить таблицу на Python. Как разделить одну таблицу на две отдельные таблицы Python."
type: docs
weight: 100
url: /ru/python-net/split-table/
timestamp: 2024-01-27-14-07-04
---

Таблица, представленная в объектной модели документа Aspose.Words, состоит из независимых строк и ячеек, что упрощает разделение таблицы.

Чтобы разделить таблицу на две части, нам просто нужно переместить некоторые строки из исходной таблицы в новую. Для этого нам нужно выбрать строку, на которую мы хотим разделить таблицу.

Мы можем создать две таблицы из исходной таблицы, выполнив следующие простые действия:

1. Создайте клон таблицы без клонирования дочерних элементов, чтобы сохранить перемещенные строки и вставить их после исходной таблицы
2. Начиная с указанной строки, переместите все последующие строки во вторую таблицу

В следующем примере кода показано, как разделить таблицу на две таблицы в определенной строке:

{{< gist "aspose-words-gists" "d31be78b25b463dd4eb31c85c60fc549" "split-table.py" >}}
