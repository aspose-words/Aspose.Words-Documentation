---
title: Mail Merge Mustache Синтаксис
second_title: Aspose.Words для Python via .NET
articleTitle: Mail Merge Шаблон из синтаксиса Mustache
linktitle: Mail Merge Шаблон из синтаксиса Mustache
type: docs
description: "Создайте шаблоны с синтаксисом Mustache, используя Python. Синтаксис Mustache - это единственный вариант, который можно использовать с шаблонами, не содержащими полей (HTML или TXT). В шаблонах Word у вас есть два варианта: поля или синтаксис Mustache."
keywords: "mail merge template mustache syntax python"
weight: 40
url: /ru/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words позволяет создавать шаблоны с синтаксисом mustache в дополнение к знакомым шаблонам. A Mustache - это альтернативный вариант синтаксиса шаблона, который состоит из имен тегов, заключенных в `{{ }}`, и поддерживается объектом model, который содержит данные для шаблона.

Синтаксис Mustache - это единственный вариант, который можно использовать с шаблонами, не содержащими полей, такими как шаблоны HTML и TXT. В шаблонах Word у вас есть два варианта: либо использовать поля, либо синтаксис Mustache.

Синтаксис Mustache поддерживает тег *foreach*, который является альтернативой использованию Mail Merge с регионами. Таким образом, преимущество заключается в том, что вы можете использовать синтаксис mustache, если по какой-либо причине вы не можете или просто не хотите использовать поля слияния и области объединения.

Вы также можете объединить поля Mail Merge с некоторыми дополнительными полями, используя тег *foreach*, как показано на рисунке ниже.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Создайте шаблон Mustache

Первый важный момент, который следует прояснить, заключается в том, что Mustache не является механизмом создания шаблонов. Mustache - это другой вариант синтаксиса, который доступен для любого шаблона в [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/), поддерживаемого Aspose.Words. Таким образом, вы можете создать такой шаблон как программно, так и через интерфейс, вам просто нужно включить определенный синтаксис и соответствовать спецификации Mustache.

Давайте предположим, что вам нужно отправить одно и то же электронное письмо 50 получателям, чтобы персонализировать приветствие, указав их соответствующие имена. Вы могли бы заменить имя получателя каким-либо заполнителем следующим образом:

> Dear {{FirstName}}
>
> I hereby...

Вопрос здесь: как вы можете создать 50 электронных писем из одного шаблона Mustache? Чтобы ответить на этот вопрос, вам нужно выполнить Mail Merge с регионами, чтобы заполнить фигурные скобки для заполнителей в шаблоне фактическими данными и сгенерировать выходной документ.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

Как вы заметили из приведенного выше примера, в Mustache вам нужно использовать фигурные скобки для заполнителей, которые выглядят как mustache, когда вы поворачиваете фигурные скобки на 90 градусов по часовой стрелке.

{{% /alert %}}

## Работа с синтаксисом Mustache

Mustache представлен в виде логического порядка, поскольку в нем отсутствуют какие-либо конкретные инструкции потока управления, такие как циклы *for* и условия *if* и *else*. Но вы можете использовать списки обработки тегов раздела и лямбда-выражения для выполнения условной оценки и циклирования. Таким образом, чтобы включить синтаксис Mustache в операцию Mail Merge, вам нужно будет использовать свойство [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) и установить его значение равным *True*.

## Используйте поля `IF`, чтобы сделать Mail Merge интеллектуальным

Aspose.Words позволяет использовать поля Mail Merge и теги Mustache с инструкцией `IF`. Поля `IF` можно использовать в любом документе Mail Merge для устранения нежелательных пробелов и запятых, если поле пустое.

Формула поля `IF` приведена ниже:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Здесь условием может быть либо поле слияния, либо тег Mustache.

Например, вы можете использовать поля `IF`, если вам нужно вставить "его", "ее", "он" или "она" в зависимости от пола следующим образом:

**{ IF { MERGEFIELD Gender } = "MALE" " истинный текст" "ложный текст" }**

**{ IF "{{ GENDER }}" = "MALE" " истинный текст" "ложный текст" }**

В следующем примере кода показано, как выполнить операцию Mail Merge с тегами Mustache и полями `IF`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

Вы можете заметить разницу между документами до применения свойства [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

И после применения свойства [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
