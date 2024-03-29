---
title: Сериализация документа в базе данных
second_title: Aspose.Words для .NET
articleTitle: Сериализация и работа с документом в базе данных
linktitle: Сериализация и работа с документом в базе данных
description: "Преобразуйте документ в массив байтов для работы с этим документом в базе данных, используя C#. Вы можете хранить и извлекать документ в базу данных и из нее."
type: docs
weight: 10
url: /ru/net/serialize-and-work-with-a-document-in-a-database/
---

Одна из задач, которые вам, возможно, придется выполнить при работе с документами, — это сохранение и извлечение **Document** объекта в базу данных и из нее. Например, это может быть необходимо, если вы внедряете какую-либо систему управления контентом. Все предыдущие версии документов должны храниться в базе данных системы. Возможность хранить документы в базе данных также чрезвычайно полезна, когда ваше приложение предоставляет веб-сервис.

Aspose.Words предоставляет возможность конвертировать документ в байтовый массив для последующей работы с этим документом в базе данных.

## Преобразование документа в байтовый массив

Чтобы сохранить документ в базе данных или подготовить документ к передаче через Интернет, часто необходимо сериализовать документ для получения массива байтов.

Чтобы сериализовать объект [Document](https://reference.aspose.com/words/ru/net/aspose.words/document/) в Aspose.Words:

1. Сохраните его в **MemoryStream**, используя перегрузку метода [Save](https://reference.aspose.com/words/ru/net/aspose.words/document/save/) класса **Document**.
1. Вызовите метод **ToArray**, который возвращает массив байтов, представляющий документ в байтовой форме.

Затем описанные выше шаги можно отменить, чтобы загрузить байты обратно в объект **Document**.

{{% alert color="primary" %}}

Выбранный формат сохранения важен для обеспечения максимальной точности при сохранении и перезагрузке в объект **Document**. По этой причине предлагается использовать ряд форматов файлов OOXML.

{{% /alert %}}

В приведенном ниже примере показано, как сериализовать объект **Document** для получения массива байтов, а затем как десериализовать массив байтов, чтобы снова получить объект **Document**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

Вы можете скачать файл шаблона этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

## Хранение, чтение и удаление документа в базе данных

В этом разделе показано, как сохранить документ в базе данных, а затем загрузить его обратно в объект `Document` для работы с ним. Для простоты имя файла — это ключ, используемый для хранения и извлечения документов из базы данных. База данных содержит два столбца. Первый столбец "Имя файла" хранится в виде строки и используется для идентификации документов. Второй столбец "FileContent" хранится как объект `BLOB`, который хранит объект документа в байтовой форме.

В следующем примере кода показано, как настроить соединение с базой данных и выполнить команды:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

В этом примере мы используем базу данных Microsoft Access .mdb для хранения документа Aspose.Words.

{{% /alert %}}

В следующем примере кода показано, как сохранить документ в базе данных, затем снова прочитать тот же документ и, наконец, удалить запись, содержащую документ, из базы данных:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### Сохранение документа в базе данных

Чтобы сохранить документ в базе данных, преобразуйте этот документ в массив байтов, как описано в начале статьи. Затем сохраните этот массив байтов в поле базы данных.

В следующем примере кода показано, как сохранить документ в указанной базе данных:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

Укажите команду CommandString, которая представляет собой выражение SQL, выполняющее всю работу:

- Для сохранения документа в базу данных используется команда "INSERT INTO" и указывается таблица со значениями двух полей записи — FileName и FileContent. Чтобы избежать дополнительных параметров, имя файла берется из самого объекта **Document**. Значение поля `FileContent` присваивается байтам из потока памяти, который содержит двоичное представление сохраненного документа.
- Оставшаяся строка кода выполняет команду, сохраняющую документ Aspose.Words в базе данных.

### Получить документ из базы данных

Чтобы получить документ из базы данных, выберите запись, содержащую данные документа в виде массива байтов. Затем загрузите массив байтов из записи в **MemoryStream** и создайте объект **Document**, который будет загружать документ из **MemoryStream**.

В следующем примере кода показано, как получить и вернуть документ из указанной базы данных, используя имя файла в качестве ключа для получения этого документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

Команда SQL "SELECT * FROM" используется для извлечения соответствующей записи на основе имени файла.

{{% /alert %}}

### Удалить документ из базы данных

Для удаления документа из базы данных используйте соответствующую команду SQL без каких-либо манипуляций над объектом **Document**.

В следующем примере кода показано, как удалить документ из базы данных, используя имя файла для получения записи:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
