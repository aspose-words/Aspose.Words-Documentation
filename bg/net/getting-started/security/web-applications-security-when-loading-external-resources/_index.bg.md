---
title: Уеб приложение Сигурност При зареждане на ресурси
second_title: Aspose.Words вместо .NET
articleTitle: Уеб приложения сигурност при зареждане на външни ресурси
linktitle: Уеб приложения сигурност при зареждане на външни ресурси
type: docs
description: "Зареждане на отдалечени ресурси, това може да бъде причина за рискове за сигурността. Разгледайте общите въпроси на сигурността и техните решения, като използвате C#."
weight: 100
url: /bg/net/web-applications-security-when-loading-external-resources/
---

По подразбиране, Aspose.Words вместо .NET може да зарежда дистанционни ресурси като изображения, стилове CSS или външни HTML документи при внос на документи или въвеждане на изображения с помощта на DocumentBuilder. Това поведение ви позволява да обработвате вашите документи в пълен детайл, но може да бъде причина за някои рискове за сигурността, ако библиотеката е част от уеб приложение.

В тази статия разглеждаме общи въпроси, свързани със сигурността, които могат да възникнат при зареждане на външни ресурси и да предоставим препоръки как да се избегнат такива проблеми.

{{% alert color="primary" %}}

Aspose.Words не функционира като антивирусен софтуер. Следователно тя не предоставя информация за наличието на злонамерени компоненти в документа. За да се гарантира сигурността на вашите данни, проверете документите, получени от външен източник. На свой ред, Aspose.Words предоставя препоръки как да се справим с проблемите, които могат да възникнат при зареждане на външни ресурси.

{{% /alert %}}

## Въпроси на сигурността

Има редица типични проблеми със сигурността при зареждане на външни ресурси.

### Credential Разкриване Via Linked Images

На Windows-базирани домакини, документи, съдържащи препратки към ресурси, които използват UNC пътеки, като например *.\\ script.com\a\b** ще бъдат обработени по подразбиране. В среда на домейни, това ще накара хоста да изпрати своите домейни в хаширан формат на посочения сървър.

Ако нападателят е в състояние да убеди потребител или сървър да обработи документ с такъв ресурсна връзка, сочеща към хост, който те контролират, нападателят ще получи акредитивите на потребителя или сервизния акаунт във формат NTLM хеш. Тези данни могат да бъдат използвани повторно при класическа атака с преминаване през хаш, което позволява на нападателя да получи достъп до всеки ресурс като потребител на жертвата или сметка за обслужване.

Ако въпросният акаунт използва слаба или предполагаема парола, нападателят може да извърши допълнително разбиваща парола атака, за да възстанови паролата на акаунта за допълнителна злонамерена употреба.

### Локално разкриване на изображения Via Linked Images

Подобно на предишния случай, обработката на документ с препратка към местен образен файл ще доведе до включването на файла в окончателния документ. Това може да доведе до деликатно разкриване на информация.

### Отказ на служба

Атакуващ може да качи документ, който или е подбран, или включва изключително големи изображения, така наречените "декомпресионни бомби." При обработката на тези изображения, библиотеката ще консумира огромни количества памет и CPU време.

### Server- Side Request Forgery Via Linked Content

Нападател може да създаде поредица от документи, съдържащи вградени връзки към общи комбинации от вътрешен IP адрес и порт, след което да ги представи на уеб услуга, използвайки Aspose.Words библиотека за обработка на документите.

Въз основа на продължителността на използване на услугата за обработка на документа нападателят може да определи дали дадена IP/Port комбинация се филтрира от защитна стена:

- по-дълго време за обработка показва, че TCP SYN пакет, изпратен от сървъра е бил свален от защитна стена
- бързото време за обработка показва успешна връзка

## Решения на въпросите на сигурността

За да решите проблемите, описани по-горе, и да подобрите сигурността на уеб приложенията, можете да контролирате или деактивирате зареждането на външни ресурси, като използвате [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/).

Следният пример за код показва как да изключите зареждането на външни изображения:

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

Следният пример за код показва как да деактивирате отдалечени ресурси:

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

Тази статия се основава на консултантската фирма Independent Security Evaluators [доклад](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}
