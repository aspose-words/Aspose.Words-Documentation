---
title: Безпека веб-додатків При навантаженні ресурсів
second_title: Aspose.Words для .NET
articleTitle: Безпека веб-додатків при завантаженні зовнішніх ресурсів
linktitle: Безпека веб-додатків при завантаженні зовнішніх ресурсів
type: docs
description: "Навантаження віддалених ресурсів, які можуть бути причиною ризиків безпеки. Взяти увагу на загальні проблеми безпеки та їх рішення, використовуючи C#й"
weight: 100
url: /uk/net/web-applications-security-when-loading-external-resources/
---

За замовчуванням, Aspose.Words для .NET може навантажувати віддалені ресурси, такі як зображення, стилі CSS, або зовнішні документи HTML при імпорті документів або вставки зображень за допомогою DocumentBuilder. Ця поведінка дозволяє обробляти ваші документи в повному обсязі, але може бути причиною деяких ризиків безпеки, якщо бібліотека є частиною веб-додатку.

У статті ми розглянемо загальні проблеми безпеки, які можуть виникнути при завантаженні зовнішніх ресурсів і надаємо рекомендації щодо того, як уникнути подібних проблем.

{{% alert color="primary" %}}

Aspose.Words не функціонує як антивірусне програмне забезпечення. Тому не надає інформацію про наявність шкідливих компонентів в документі. Щоб забезпечити безпеку Ваших даних, перевірте документи, отримані з зовнішнього джерела самостійно. У свою чергу, Aspose.Words надає рекомендації щодо вирішення проблем, які можуть виникнути при завантаженні зовнішніх ресурсів.

{{% /alert %}}

## Проблеми безпеки

При завантаженні зовнішніх ресурсів існує низка типових проблем безпеки.

### Почергове покриття Via Linked Зображення

Про нас WindowsCatalàDeutschEnglishEspañolFrançaisItalianoLatviešuLietuviųNederlandsNorskPolskiPortuguêsRomânăSlovenčinaSvenskaالعربيةفارسیעבריתΕλληνικάБългарскиРусскийСрпски / srpskiУкраїнська中文(台灣) У доменному середовищі, це призведе до того, щоб надіслати свої облікові дані доменів у застарілому форматі до вказаного сервера.

Якщо атакуючий може переконувати користувача або сервер для обробки документа з таким ресурсним посиланням, що вказується на хост, який контролює, атакуючий отримає облікові дані користувача або служби у форматі NTLM. Такі дані можуть бути використані в класичному проході, що дозволяє атакувати, щоб отримати доступ до будь-якого ресурсу, як потерпілий користувач або обліковий запис служби.

Якщо обліковий запис у питанні використовує слабкий або здогадливий пароль, атакуючий може додатково виконувати атаку тріщин пароля, щоб відновити пароль облікового запису для подальшого шкідливого використання.

### Місцеве зображення Via Linked Зображення

Аналогічно до попереднього випадку обробка документа з посиланням на локальний файл зображень призведе до того, що файл, що входить до кінцевого документа. Це може призвести до конфіденційної інформації.

### Відмова від служби

А атакуючий може завантажити документ, який або довідкований або включав надзвичайно великі зображення – так звані "декомпресійні бомби". При обробці цих зображень бібліотека споживає величезну кількість пам'яті та часу процесора.

### Server-Приховати запит через посилання

Атакувальник може створити ряд документів, що містять вбудовані посилання на загальні комбінації внутрішньої IP-адреси та порту, потім подати їх на веб-сервіс за допомогою веб-сервісу Aspose.Words Бібліотека для обробки документів.

Виходячи з довжини часу, служба використовує для обробки документа, атакуючий може визначити, чи віддана комбінація IP/Port фільтрується фаєрволом:

- Довший час обробки вказує на те, що пакет TCP SYN, відправлений сервером, був випущений брандмауером
- швидкий час обробки вказує на успішне підключення

## Рішення проблеми безпеки

Щоб вирішити проблеми, описані вище і поліпшити безпеку веб-додатків, можна контролювати або вимкнути завантаження зовнішніх ресурсів за допомогою [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/)й

Приклад коду показує, як відключити навантаження зовнішніх зображень:

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

Приклад коду показує, як відключити віддалені ресурси:

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

Дана стаття ґрунтується на консалтинговій фірмі Незалежна безпека [Новини](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf)й

{{% /alert %}}
