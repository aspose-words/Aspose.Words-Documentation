---
title: Web App Security При загрузке ресурсов
second_title: Aspose.Words для .NET
articleTitle: Безопасность веб-приложений при загрузке внешних ресурсов
linktitle: Безопасность веб-приложений при загрузке внешних ресурсов
type: docs
description: "Загрузка удаленных ресурсов, что может быть причиной рисков безопасности. Взгляд на общие вопросы безопасности и их решения C#."
weight: 100
url: /ru/net/web-applications-security-when-loading-external-resources/
---

По умолчанию, Aspose.Words для .NET Может загружать удаленные ресурсы, такие как изображения, стили CSS или внешние HTML-документы при импорте документов или вставке изображений с помощью DocumentBuilder. Такое поведение позволяет обрабатывать документы в деталях, но может быть причиной некоторых рисков безопасности, если библиотека является частью веб-приложения.

В этой статье мы рассмотрим общие вопросы безопасности, которые могут возникнуть при загрузке внешних ресурсов, и предоставим рекомендации, как избежать таких проблем.

{{% alert color="primary" %}}

Aspose.Words Не работает как антивирусное программное обеспечение. Поэтому он не предоставляет информацию о наличии в документе вредоносных компонентов. Чтобы обеспечить безопасность ваших данных, проверьте документы, полученные из внешнего источника. В свою очередь, Aspose.Words Предоставляет рекомендации по решению проблем, которые могут возникнуть при загрузке внешних ресурсов.

{{% /alert %}}

## Вопросы безопасности

Существует ряд типичных проблем безопасности при загрузке внешних ресурсов.

### Полномочное раскрытие Через связанные изображения

На Windows- на основе хостов документы, содержащие ссылки на ресурсы, использующие пути UNC, такие как *\\example.com\a\b*, будут обрабатываться по умолчанию. В доменной среде это заставит хост отправлять свои учетные данные домена в хэшированном формате на указанный сервер.

Если злоумышленник сможет убедить пользователя или сервер обработать документ с такой ссылкой на ресурс, указывающей на контролируемый им хост, злоумышленник получит учетные данные пользователя или учетной записи службы в хеш-формате NTLM. Такие данные затем могут быть повторно использованы в классической атаке pass-the-hash, что позволяет злоумышленнику получить доступ к любому ресурсу в качестве пользователя жертвы или учетной записи службы.

Если учетная запись использует слабый или угадываемый пароль, злоумышленник может дополнительно выполнить атаку взлома пароля, чтобы восстановить пароль учетной записи для дальнейшего злонамеренного использования.

### Локальное раскрытие изображений Через связанные изображения

Как и в предыдущем случае, обработка документа со ссылкой на локальный файл изображения приведет к включению этого файла в окончательный документ. Это может привести к раскрытию конфиденциальной информации.

### Отказ в обслуживании

Злоумышленник мог загрузить документ, который либо ссылался, либо включал чрезвычайно большие изображения - так называемые "декомпрессионные бомбы". При обработке этих изображений библиотека будет потреблять огромное количество памяти и времени процессора.

### Server-Подделка запросов через связанный контент

Злоумышленник может создать серию документов, содержащих встроенные ссылки на общие комбинации внутреннего IP-адреса и порта, а затем отправить их в веб-службу с использованием встроенных ссылок. Aspose.Words Библиотека для обработки документов.

Основываясь на продолжительности времени, которое сервис использует для обработки документа, злоумышленник может определить, фильтруется ли данная комбинация IP/Port брандмауэром:

- более длительное время обработки указывает на то, что пакет TCP SYN, отправленный сервером, был удален брандмауэром;
- Быстрое время обработки указывает на успешное соединение

## Решения проблем безопасности

Для решения описанных выше проблем и повышения безопасности веб-приложений можно контролировать или отключать загрузку внешних ресурсов с помощью [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/).

Следующий пример кода показывает, как отключить загрузку внешних изображений:

**.NET**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

Следующий пример кода показывает, как отключить удаленные ресурсы:

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

Эта статья основана на консалтинговой фирме Independent Security Evaluators. [доклад](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}
