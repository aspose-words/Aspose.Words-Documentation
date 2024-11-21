---
title: Друк документів C#
second_title: Aspose.Words для .NET
articleTitle: Друк документів Програматично або за допомогою ділогів
linktitle: Друк документів Програматично або за допомогою ділогів
description: "Друк документа на сайті Server за допомогою некерованих XpsPrint API або за допомогою вибраного принтера з налаштуваннями та друком ділогів попереднього перегляду C#й"
type: docs
weight: 55
url: /uk/net/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-31-14-23-37
---

У статті описано, як друкувати документ обробки слів з ASP.NET або Windows Сервісний додаток за допомогою Aspose.Words і `XpsPrint` APIй Також продемонстровано методи друку документа з налаштуваннями, переглядом друку та діалогами про прогресування друку, а також пояснює, як зменшити час першого виклику для друку документа.

## Друк документів на документі Server через `XpsPrint` API

Цей розділ призначений для користувачів, які хочуть подати заявку XPS документ на некерований XpsPrint API з .NET Застосування Aspose.Wordsй

### Обмеження друку документа в ASP.NET або Windows Сервісні програми

При розробці .NET додаток, який виробляє деякі друковані дані, ви можете зазвичай використовувати класи, що надаються в *System.Drawing.Printing* простір імен, або Windows Презентація програм (WPF) Однак, якщо додаток є ASP.NET або Windows Застосування послуг, варіанти друку обмежені, оскільки Microsoft Дискурування за допомогою цього підходу. Про нас .NET Framework Класи друку не підтримуються застосуванням послуг. Це включає ASP сторінки, які зазвичай виконуються в умовах серверного сервісу.

Про класи *System.Drawing.Printing* простір імен не підтримується для використання в межах Windows Послуги або послуги ASP.NET Заявка або сервіс, а також спроба їх використання може виробляти знижену продуктивність сервісу, винятку та інші проблеми. Використання WPF для побудови Windows послуги не підтримується. Оскільки WPF є технологією презентації, Windows Послуга вимагає відповідних дозволів на виконання візуальних операцій, пов’язаних з взаємодією користувача. Якщо Windows Послуга не має таких дозволів, можуть бути несподівані результати.

Про нас Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) об'єкт забезпечує сім'ю [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) методи друку документів. Ці методи використовують .NET класи друку, визначені в *System.Drawing.Printing* простір імен. Є багато Aspose.Words Клієнти, які успішно використовують для друку в своїх серверних додатках. Тим не менш, ця стаття демонструє альтернативний метод друку, який відповідає MicrosoftРекомендації.

### Способи друку документів на документі Server

Правильний спосіб друку документів відповідно до Microsoft за допомогою некерованих XpsPrint APIй Про нас API доступна на Windows 7,7 км Windows Server 2008 рік R2, й Windows Vista Надано оновлення платформи для Windows Vista встановлюється.

З Aspose.Words може легко конвертувати будь-який документ у <span notrans="<span notrans=" XPS"=""></span>, > Вам потрібно лише написати код, який проходить XPS документ до документа `XpsPrint` APIй Єдина проблема полягає в тому, що `XpsPrint` API - це незахищений і вимагає певних знань технології платформи.

Для друку документа, Aspose.Words надає послуги **XpsPrintHelper** клас містить простий метод друку, де потрібно лише вказати такі параметри (див. докладніше в статті [Друкувати документ через XPS API](/words/net/missing-features-in-openxml/)):

- Ви хочете друкувати.
- Назва принтера.
- Ім'я користувача (за бажанням).
- Boolean значення, вказавши, що програма повинна чекати до завершення роботи друку. Таким чином, система перевірить, чи друкується документ успішно або повернеться негайно після відправки на друк. В останньому випадку неможливо визначити, чи успішно пройшла робота друку.

При виникненні будь-яких проблем, які подають або друкують документ, метод кине виняток.

Приклад коду нижче показує, як друкувати документ за допомогою **XpsPrintHelper** клас:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

Коли ви запустіть проект, він друкує зразок документа на вказаному принтері і відкриває вікно консолі для відображення результатів друку. Коли робота друку завершує або вичерпає помилки, система буде відображати повідомлення про успішність або текст винятків.

Ви також можете встановити деякі налаштування друку за допомогою [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) клас. Наприклад, в Microsoft Word, Принтерні лотки визначаються для кожного розділу і є принтером. Таким чином, ви можете запрограмовано змінити ці значення для кожного розділу через [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) і [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/) властивості.

{{% alert color="primary" %}}

У деяких випадках можна використовувати цей зразок без Aspose.Wordsй Наприклад, коли ви вже маєте XPS документ і просто хочете друкувати його з ASP.NET або Windows Сервісне додаток. Потім ви можете просто видалити `Print` метод.

{{% /alert %}}

Є два перевантаження **XpsPrintHelper**й**Print** метод. Перше перевантаження займає [Document](https://reference.aspose.com/words/net/aspose.words/document/) об'єкт і зберігає його в `MemoryStream` в XPS Формат. Друге перевантаження приймає `Stream` об'єкт. Потік повинен містити документ у документі XPS Формат.

Ви можете завантажити приклади перевантаження способу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip)й

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)й

## Друк документів з налаштуваннями та друком ділогів

При роботі з документами часто потрібно друкувати їх на обраний принтер. Ви можете використовувати діалогове вікно попереднього перегляду друку, щоб візуально зрозуміти, як буде виглядати друкований документ і вибрати відповідні параметри друку.

Про нас Aspose.Words не має вбудованих діалогів або форм, але реалізує [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) клас, на основі .NET **PrintDocument** клас. Приклад цього класу може бути переданий до **PrintPreviewDialog** у вигляді попереднього перегляду та друку документа. Також, [ДрукПоглядДіалог](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) клас визначає вихід для передачі принтера.

Наступний приклад показує, як використовувати ці класи для друку документа з Aspose.Words через вікно попереднього перегляду та налаштування друку:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

Про нас **AllowSomePages** майно дозволяє вибрати діапазон сторінок для друку, якщо значення цього майна є вірним. За замовчуванням, всі сторінки в діапазоні вибрані для друку.

{{% /alert %}}

Щоб оптимізувати зовнішній вигляд діалогових налаштувань, вкажіть властивості **PrintPreviewDialog** клас.

## Друк кількох сторінок на одному аркуші

Завжди вигідно мати більш гнучкість при друку документів. Використання .NET і Aspose.Words Ви можете легко відхилити роботу друку, щоб реалізувати вашу логіку, визначивши спосіб, документ буде з'являтися на друкованій сторінці.

Як в попередньому розділі, Aspose.Words впроваджує **MultipagePrintDocument** клас, який базується на .NET **PrintDocument** клас. Це означає, що існуючий .NET Друк інфраструктури може бути використана таким чином, що діалоги попереднього перегляду друку та друку дозволять візуалізувати документ до друку. Про нас **MultipagePrintDocument** клас надає можливість друкувати кілька сторінок на одному аркуші паперу.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Приклад даного коду показано нижче:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## При друку документа

Діалог щодо друку Прогрес не відображається при друку документа через [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) метод. Тим не менш, це діалог з'являється під час друку з іншим [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) метод. У цьому випадку, щоб запобігти діалоговому вікні з'являються, ви повинні вказати дійсні налаштування принтера і стандартний контролер друку в цьому методі, як показано на прикладі нижче:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)й

## Як зменшити час першого виклику для друку документів

Aspose.Words Читання та кешування деяких полів **PrinterSettings** скоротити час друку. Ви можете досягти цього за допомогою виклику [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/) метод. Цей метод називається до друку починається, якщо він не був виконаний раніше. Зауважте, що загальний час друку з і без виклику цього способу майже однаково. Мета використання цього методу полягає в скороченні часу першого виклику [Print](https://reference.aspose.com/words/net/aspose.words/document/print/) метод. Приклад коду показує, як використовувати цей метод:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Дивитися ще

- [Оновлення платформи для Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
