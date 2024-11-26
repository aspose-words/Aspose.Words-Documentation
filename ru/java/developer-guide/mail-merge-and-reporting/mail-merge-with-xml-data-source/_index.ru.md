---
title: Mail Merge с источником данных XML в Java
second_title: Aspose.Words для Java
articleTitle: Mail Merge с источником данных XML
linktitle: Mail Merge с источником данных XML
type: docs
description: "При выполнении операции Mail Merge можно использовать различные источники данных, в том числе файл XML. Основным преимуществом использования XML является возможность определения иерархии непосредственно в документе в Java."
keywords: "mail merge XML data source Java, Mail Merge Java"
weight: 30
url: /ru/java/mail-merge-with-xml-data-source/
timestamp: 2024-01-27-14-07-04
---

При выполнении операции Mail Merge можно использовать различные источники данных, включая файл XML. Основным преимуществом использования XML является возможность определить иерархию прямо в документе, а затем просто передать ее в Aspose.Words.

В этой статье будет описано, как считывать данные из файла XML, а не непосредственно из базы данных, и использовать XML в качестве источника данных для выполнения операции Mail Merge.

## Преимущества XML Как источника данных

XML источники данных очень удобны для хранения данных без дополнительных затрат, связанных с базой данных. Они отлично подходят для автономных приложений, где пользователям необходимо добавлять, редактировать и удалять данные, когда они не могут подключиться к базе данных.

XML данные могут быть хорошей альтернативой реляционным базам данных, особенно если вы работаете с веб-приложениями. Большинство веб-сервисов используют XML для обмена информацией. на современном рынке активно используются XML-ориентированные базы данных, и разработчики реляционных баз данных добавляют XML совместимость в свои продукты, чтобы обеспечить возврат базы данных XML.

Поскольку XML хранит данные в обычном текстовом формате, хранилище не зависит от платформы. Таким образом, данные можно легко экспортировать, импортировать или просто перемещать. XML популярен в качестве источника данных, поскольку он позволяет сохранить семантическое значение данных при обмене данными между различными приложениями.

## Заполнение шаблона слияния данными из XML с использованием DataSet

XML является универсальным стандартом для обмена данными, а форматы документов Microsoft Word являются наиболее популярными форматами для шаблонов Mail Merge. Таким образом, возможность запуска Mail Merge из файла XML в документ шаблона Word стала общим требованием.

Microsoft Word не предоставляет прямого метода для работы с данными XML в качестве источника данных для операции Mail Merge, в то время как Aspose.Words позволяет выполнять операцию Mail Merge с данными из источника данных XML. Обратите внимание, что структура документа XML также может быть изменена, и данные все равно будут считываться корректно. Это позволяет легко объединять различные типы документов XML.

Используйте метод `ReadXML` для считывания схемы XML и данных в объект `DataSet`. Затем этот объект используется в качестве источника данных для mail merge.

{{% alert color="primary" %}}

Вы можете использовать одни и те же шаблоны для разных источников данных.

{{% /alert %}}

Следующий XML содержит данные, необходимые для заполнения шаблона слияния:

{{< highlight xml >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

В следующем примере кода показано, как загрузить данные XML в DataSet и затем использовать их в качестве источника данных:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-mail_merge-XMLMailMerge-XMLMailMerge.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

Вы можете заметить разницу между шаблонами перед выполнением операции Mail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset_aspose_words_java" style="width:250px"/>

И после выполнения операции Mail Merge:

<img src="/words/java/mail-merge-with-xml-data-source/fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml_aspose_words_java" style="width:285px"/>
