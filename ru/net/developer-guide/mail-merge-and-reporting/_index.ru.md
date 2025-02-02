﻿---
title: Mail Merge и отчет в C#
second_title: Aspose.Words для .NET
articleTitle: Mail Merge и отчетность
linktitle: Mail Merge и отчетность
type: docs
description: "Mail Merge - популярная функция для быстрого создания документов с помощью C#. Aspose.Words для .NET использует стандартную функциональность Mail Merge и развивает ее на много шагов вперед, превращая в полноценное решение для создания отчетов, которое позволяет создавать еще более сложные документы, такие как отчеты, каталоги, инвентаризации и счета-фактуры."
keywords: "how to use Mail Merge c#"
weight: 30
url: /ru/net/mail-merge-and-reporting/
timestamp: 2024-07-11-08-07-06
---

Mail Merge - популярная функция для быстрого и простого создания документов, таких как письма, этикетки и конверты. Aspose.Words позволяет создавать документы на основе шаблонов с полями Mail Merge.

Поле Mail Merge - это поле, которое можно вставить в шаблон mail merge для включения определенных значений из записи источника данных в выходные документы. Например, вы можете вставить объединяющее поле в шаблон электронного письма, чтобы в приветствии было указано имя получателя, а не обычное "Привет!". Aspose.Words в эти поля помещаются данные из внешнего источника, такие как база данных или файл, и они форматируются. Полученный документ сохраняется в указанной папке.

Aspose.Words использует стандартную функциональность Mail Merge и развивает ее на много шагов вперед, превращая в полноценное решение для создания отчетов, которое позволяет создавать еще более сложные документы, такие как отчеты, каталоги, инвентаризации и счета-фактуры. Вот несколько преимуществ решения для создания отчетов Aspose.Words:

- Создавайте отчеты в Microsoft Word с использованием стандартных Mail Merge полей
- Определите области в документе, которые увеличиваются, например строки подробного заказа
- Вставка изображений во время mail merge
- Выполняйте любую пользовательскую логику, управляйте форматированием или вставляйте сложное содержимое с помощью обработчиков событий Mail Merge
- Заполнять документы данными из любого типа источника данных

{{% alert color="primary" %}}

Пространство имен [Aspose.Words.MailMerging](https://reference.aspose.com/words/net/aspose.words.mailmerging/) используется для работы со слиянием почтовых отправлений.

{{% /alert %}}

## Механизм и основные компоненты Mail Merge {#mechanism-and-main-components-of-a-mail-merge-operation}

Aspose.Words предоставляет возможность загружать документы в различных [supported formats](https://reference.aspose.com/words/net/aspose.words/loadformat/) форматах, а затем позволяет пользователям выполнять Mail Merge операции.

Обычно загруженный документ позволяет сохранять поля слияния, например, документ в формате DOCX. Но есть форматы, которые не хранят такие поля, например, TXT. Если Aspose.Words поддерживает загрузку таких форматов файлов, вы можете добавить поля слияния непосредственно в модель документа, сохранить документ в удобном [supported format](https://reference.aspose.com/words/net/aspose.words/saveformat/) виде и выполнить операцию Mail Merge.

Операция Mail Merge объединит ваши *mail merge template* и ваши *data source* для создания отдельного *merged documents*.

## Что такое шаблон Mail Merge {#what-is-a-mail-merge-template}

Цель применения операции mail merge с использованием шаблона слияния состоит в том, чтобы упростить процесс создания документа.

Существует несколько способов создания и оформления шаблона слияния. Вы можете использовать Microsoft Word, и шаблон слияния не обязательно должен быть шаблоном Microsoft Word, то есть документом в формате DOT или DOTX, это может быть обычный документ в формате DOC или DOCX. Вам нужно вставить в этот шаблон несколько специальных полей, называемых полями слияния, в тех местах, куда вы хотите позже вставить данные из вашего источника данных. Или вы можете программно создать шаблон слияния, используя класс [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).

Шаблон объединения содержит основной текст, который должен быть одинаковым во всех выходных документах после выполнения операции Mail Merge. Вы можете использовать любой формат для своего шаблона, если есть возможность добавить в него поля для объединения. Все поля для объединения в вашем шаблоне будут заполнены из вашего источника данных во время операции Mail Merge.

## Источники данных для операции Mail Merge {#data-source-types-for-a-mail-merge-operation}

Aspose.Words Mail Merge принимает различные источники данных. Это может быть либо DataTable, DataView, DataSet, IDataReader, массив значений, поддерживаемых ADO .NET, либо пользовательские источники данных, представленные реализациями [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/).

Источник данных содержит всю информацию, которая извлекается во время операции Mail Merge для персонализации отдельных электронных писем и документов. Источники данных могут быть созданы вручную или сгенерированы с помощью отчетов из существующей базы данных или приложения. Если у вас есть данные в формате XML, вы можете загрузить их и объединить с форматом DataSet. Операция Mail Merge будет проходить через все записи источника данных и вставлять их в поля Mail Merge документа. Вы можете реализовать некоторые интерфейсы mail merge, такие как [IMailMergeDataSourceRoot](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasourceroot/), для объединения данных из любого источника данных, включая запрос LINQ, файл XML или бизнес-объекты.

В следующем примере кода показано, как загрузить таблицу данных в качестве источника данных для операции Mail Merge:

{{< gist "aspose-words-gists" "de5e13f5d5bb7d8cb88da900b4f9ed8b" "execute-with-regions-data-table.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Orders.docx).

{{% /alert %}}

## Объединенные документы операции Mail Merge {#merged-documents-of-a-mail-merge-operation}

Объединенный документ является результатом операции Mail Merge, выполняемой при объединении шаблона с источником данных. Все поля для объединения в объединенном документе заменяются фактическими данными из вашего источника данных.

На следующем рисунке показан пример шаблона объединения с объединенными полями перед выполнением операции Mail Merge.

![mail-merge-and-reporting-fields-aspose-words-net](mail-merge-and-reporting-1.jpg)

На следующем рисунке показан пример выходного объединенного документа, полученного в результате выполнения операции Mail Merge.

![mail-merge-and-reporting-result-aspose-words-net](mail-merge-and-reporting-2.jpg)

## Смотрите также

- [Работа с шаблонами Mail Merge в Word](https://docs.microsoft.com/en-us/power-platform/admin/work-mail-merge-templates)
