---
title: Mail Merge Шаблон из синтаксиса Mustache
second_title: Aspose.Words для Java
articleTitle: Mail Merge Шаблон из синтаксиса Mustache
linktitle: Mail Merge Шаблон из синтаксиса Mustache
type: docs
description: "Создавайте шаблоны с синтаксисом Mustache. Синтаксис Mustache - это единственный вариант, который можно использовать с шаблонами, не содержащими полей (HTML или TXT). В шаблонах Word у вас есть два варианта: поля или синтаксис Mustache с использованием Java."
keywords: "mail merge template mustache syntax java, Mail Merge java, mustache syntax java"
weight: 40
url: /ru/java/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words позволяет создавать шаблоны с синтаксисом mustache в дополнение к знакомым шаблонам. A Mustache - это альтернативный вариант синтаксиса шаблона, который состоит из имен тегов, заключенных в объект model, содержащий данные для шаблона, и поддерживается им.

Синтаксис Mustache - это единственный вариант, который можно использовать с шаблонами, не содержащими полей, такими как шаблоны HTML и TXT. В шаблонах Word у вас есть два варианта: либо использовать поля, либо синтаксис Mustache.

Синтаксис Mustache поддерживает тег *foreach*, который является альтернативой использованию Mail Merge с регионами. Таким образом, преимущество заключается в том, что вы можете использовать синтаксис mustache, если по какой-либо причине вы не можете или просто не хотите использовать поля слияния и области объединения.

Вы также можете объединить поля Mail Merge с некоторыми дополнительными полями, используя тег *foreach*, как показано на рисунке ниже.

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax.png" alt="mustache_syntax_aspose_words_java" style="width:800px"/>

## Создайте шаблон Mustache

Первый важный момент, который следует прояснить, заключается в том, что Mustache не является механизмом создания шаблонов. Mustache - это другой вариант синтаксиса, который доступен для любого шаблона в [формат загрузки](https://reference.aspose.com/words/java/com.aspose.words/loadformat/), поддерживаемого Aspose.Words. Таким образом, вы можете создать такой шаблон как программно, так и через интерфейс, вам просто нужно включить определенный синтаксис и соответствовать спецификации Mustache.

Давайте предположим, что вам нужно отправить одно и то же электронное письмо 50 получателям, чтобы персонализировать приветствие, указав их соответствующие имена. Вы могли бы заменить имя получателя каким-либо заполнителем следующим образом:

> Dear {{FirstName}}
>
> I hereby...

Вопрос здесь: как вы можете создать 50 электронных писем из одного шаблона Mustache? Чтобы ответить на этот вопрос, вам нужно выполнить Mail Merge с регионами, чтобы заполнить фигурные скобки для заполнителей в шаблоне фактическими данными и сгенерировать выходной документ.

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-template.png" alt="mustache_template_aspose_words_java" style="width:650px"/>

{{% alert color="primary" %}}

Как вы заметили из приведенного выше примера, в Mustache вам нужно использовать фигурные скобки для заполнителей, которые выглядят как mustache, когда вы поворачиваете фигурные скобки на 90 градусов по часовой стрелке.

{{% /alert %}}

## Работа с синтаксисом Mustache

Mustache представлен в виде логического порядка, поскольку в нем отсутствуют какие-либо конкретные инструкции потока управления, такие как циклы *for* и условия *if* и *else*. Но вы можете использовать списки обработки тегов раздела и лямбда-выражения для выполнения условной оценки и циклирования. Таким образом, чтобы включить синтаксис Mustache в операцию Mail Merge, вам нужно будет использовать свойство [UseNonMergeFields](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getUseNonMergeFields) и установить его значение равным *True*.

В следующем примере кода показано, как заменить теги Mustache конкретными данными:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeUsingMustacheTemplateSyntax-MustacheSyntaxUsingDataTable.java" >}}

Вы можете заметить разницу между документами перед выполнением Mail Merge с регионами и применением свойства **UseNonMergeFields**:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax-1.png" alt="mustache_syntax_aspose_words_java" style="width:400px"/>

{{% alert color="primary" %}}

Раздел начинается с запятой и заканчивается косой чертой. То есть `{{#foreach list}}` начинает раздел "для каждого", а `{{/foreach list}}` завершает его.

{{% /alert %}}

И после применения Mail Merge к регионам:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-syntax-2.png" alt="mustache_syntax_result_aspose_words_java" style="width:300px"/>

## Используйте поля `IF`, чтобы сделать Mail Merge интеллектуальным

Aspose.Words позволяет использовать Mail Merge поля и Mustache теги с инструкцией `IF`. Поля `IF` можно использовать в любом документе Mail Merge для устранения нежелательных пробелов и запятых, если поле пустое.

Формула поля `IF` приведена ниже:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Здесь условием может быть либо поле слияния, либо тег Mustache.

Например, вы можете использовать поля `IF`, если вам нужно вставить "его", "ее", "он" или "она" в зависимости от пола следующим образом:

**{ IF { MERGEFIELD Gender } = "MALE" " истинный текст" "ложный текст" }**

**{ IF "{{ GENDER }}" = "MALE" " истинный текст" "ложный текст" }**

В следующем примере кода показано, как выполнить операцию Mail Merge с тегами Mustache и полями `IF`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-MailMergeUsingMustacheTemplateSyntax-UseOfIfElseMustacheSyntax.java" >}}

Вы можете заметить разницу между документами до применения свойства **UseNonMergeFields**:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-if-field-1.png" alt="mustache_if_field_aspose_words_java" style="width:800px"/>

И после применения свойства **UseNonMergeFields**:

<img src="/words/java/mail-merge-template-from-mustache-syntax/mustache-if-field-2.png" alt="mustache_if_field_2_aspose_words_java" style="width:800px"/>
