---
title: Безопасность веб-приложений при загрузке ресурсов
second_title: Aspose.Words для .NET
articleTitle: Безопасность веб-приложений при загрузке внешних ресурсов
linktitle: Безопасность веб-приложений при загрузке внешних ресурсов
type: docs
description: "Загружайте удаленные ресурсы, что может быть причиной угроз безопасности. Взгляните на распространенные проблемы безопасности и их решения, используя C#."
weight: 100
url: /ru/net/web-applications-security-when-loading-external-resources/
---

По умолчанию Aspose.Words для .NET может загружать удаленные ресурсы, такие как изображения, стили CSS или внешние документы HTML, при импорте документов или вставке изображений с помощью DocumentBuilder. Такое поведение позволяет вам обрабатывать ваши документы во всех подробностях, но может быть причиной некоторых угроз безопасности, если библиотека является частью веб-приложения.

В этой статье мы рассмотрим распространенные проблемы безопасности, которые могут возникнуть при загрузке внешних ресурсов, и дадим рекомендации, как избежать таких проблем.

{{% alert color="primary" %}}

Aspose.Words не работает как антивирусное программное обеспечение. Поэтому он не предоставляет информацию о наличии в документе вредоносных компонентов. Чтобы обеспечить безопасность своих данных, проверяйте документы, полученные из внешнего источника, самостоятельно. В свою очередь Aspose.Words дает рекомендации, как бороться с проблемами, которые могут возникнуть при загрузке внешних ресурсов.

{{% /alert %}}

## Проблемы с безопасностью

Существует ряд типичных проблем безопасности при загрузке внешних ресурсов.

### Раскрытие учетных данных через связанные изображения

На хостах на базе Windows документы, содержащие ссылки на ресурсы, использующие пути UNC, такие как *'\\example.com\a\b*', будут обрабатываться по умолчанию. В доменной среде это приведет к тому, что хост отправит свои учетные данные домена в хешированном формате на указанный сервер.

Если злоумышленнику удастся убедить пользователя или сервер обработать документ с такой ссылкой на ресурс, указывающей на хост, который он контролирует, злоумышленник получит учетные данные пользователя или учетной записи службы в хеш-формате NTLM. Такие данные затем можно повторно использовать в классической атаке с передачей хэша, что позволяет злоумышленнику получить доступ к любому ресурсу в качестве учетной записи пользователя или службы жертвы.

Если рассматриваемая учетная запись использует слабый или угадываемый пароль, злоумышленник может дополнительно выполнить атаку по взлому пароля, чтобы восстановить пароль учетной записи для дальнейшего злонамеренного использования.

### Раскрытие локального изображения через связанные изображения

Как и в предыдущем случае, обработка документа со ссылкой на локальный файл изображения приведет к включению этого файла в окончательный документ. Это может привести к раскрытию конфиденциальной информации.

### Отказ в обслуживании

Злоумышленник мог загрузить документ, который либо ссылался, либо содержал чрезвычайно большие изображения – так называемые "декомпрессионные бомбы". При обработке этих изображений библиотека будет потреблять огромное количество памяти и процессорного времени.

### Server-Подделка запроса на стороне через связанный контент

Злоумышленник может создать серию документов, содержащих встроенные ссылки на распространенные комбинации внутреннего IP-адреса и порта, а затем отправить их веб-сервису, используя библиотеку Aspose.Words для обработки документов.

Основываясь на продолжительности времени, которое служба использует для обработки документа, злоумышленник может определить, фильтруется ли данная комбинация IP/порта брандмауэром:

- более длительное время обработки указывает на то, что пакет TCP SYN, отправленный сервером, был отброшен брандмауэром
- быстрое время обработки указывает на успешное соединение

## Решения проблем безопасности

Для решения описанных выше проблем и повышения безопасности веб-приложений вы можете контролировать или отключать загрузку внешних ресурсов с помощью [IResourceLoadingCallback](https://reference.aspose.com/words/ru/net/aspose.words.loading/iresourceloadingcallback/).

В следующем примере кода показано, как отключить загрузку внешних изображений:

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

В следующем примере кода показано, как отключить удаленные ресурсы:

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

Эта статья основана на материалах консалтинговой фирмы Independent Security Evaluators [отчет](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}
