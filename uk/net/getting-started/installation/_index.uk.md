---
title: Монтаж
second_title: Aspose.Words для .NET
articleTitle: Монтаж
linktitle: Монтаж
description: "Увійти Aspose.Words для .NET використання Visual Studio інструменти, такі як Manage NuGet Packages або Package Manager Console та інсталятор MSI. Використання Full Trust набір документів C#й"
type: docs
weight: 10
url: /uk/net/installation/
timestamp: 2024-01-27-14-07-04
---

Переконайтеся, що ваша машина відповідає [Вимоги до системи](/words/uk/net/system-requirements/) перед початком.

Ця стаття пояснює, як встановити Aspose.Words для .NET на комп'ютері.

## Встановлення або оновлення Aspose.Words для .NET використання Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet є найпростішим способом завантаження та встановлення [Aspose.Words для .NET](https://www.nuget.org/packages/Aspose.Words/) APIй Для цього слідуйте за цими кроками:

1,1 км Відкрити *Microsoft Visual Studio* і *Manage NuGet Packages* з меню для відкриття менеджера пакету
2,2 км Знайти бажану пропозицію API<br/>
      <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-words-nuget" style="width:800px"/>
3. У Виберіть бажану пропозицію API і натисніть кнопку "Install"

Вибрані API будуть завантажені та додані в проект.

Ви також можете оновити Aspose.Words для .NET до необхідної версії за допомогою *Manage NuGet Packages*.

## Встановлення або оновлення Aspose.Words використання Package Manager Console

Ви також можете встановити або оновити Aspose.Words для .NET APIs за допомогою *Package Manager Console*. Для цього слідуйте за цими кроками:

1,1 км Відкрити *Microsoft Visual Studio* і *Package Manager Console* з меню для відкриття консолі менеджера пакета<br/>
      <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-words-nuget-update" style="width:600px"/>
2,2 км Тип команди `Install-Package Aspose.Words` і натисніть кнопку Enter для установки останнього повного релізу в вашу програму<br/>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-words-nuget-update-2" style="width:600px"/><br/>
   {{% alert color="primary" %}}Додатково можна додати `-prerelease` suffix в команду, щоб вказати, що останній реліз, включаючи гарячіфікси, також слід встановити.{{% /alert %}}
3. У Після завантаження ви побачите повідомлення про підтвердження<br/>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-words-nuget-istalled" style="width:600px"/><br/>
   {{% alert color="primary" %}}Якщо ви не знайомі з [Аспозі ЄСЛА](https://about.aspose.com/legal/eula/), рекомендовано ознайомитися з посиланням на посилання в URL.{{% /alert %}}
4. У Тепер ви можете знайти Aspose.Words Ви успішно додали та доповіли у Вашому додатку<br/>
      <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-words-nuget-references" style="width:400px"/>

В *Package Manager Console*, ви також можете використовувати `Update-Package Aspose.Words` Команда для перевірки оновлень до Aspose.Words пакет і встановити їх, якщо присутній. Ви також можете додати `-prerelease` suffix для оновлення останнього релізу.

## Увійти Aspose.Words для .NET за допомогою Інсталятора

Aspose.Words для .NET може бути встановлена за допомогою прямого завантаження MSI установки з [розділ завантаження](https://releases.aspose.com/words/)й

{{% alert color="primary" %}}

Ви повинні увійти, щоб завантажити інсталятор. Якщо ви не зареєстровані, ви можете зареєструватися безкоштовно.

{{% /alert %}}

Встановити Aspose.Words для .NET, Слідкуйте за цими кроками:

1. Завантажити `Aspose.Words_{LatestVersion}.msi` з [розділ завантаження](https://releases.aspose.com/words/)
2,2 км Doble-click завантажений файл, тим самим, починаючи з налаштування майстра, дотримуйтесь інструкцій налаштування майстра<br/>
      <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-words-setup-1" style="width:500px"/>
3. У Коли настройка майстра завершує установку, потрібні файли будуть доступні в папці на заданій папці шлях<br/>
      <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-words-setup-4" style="width:500px"/>
4. У Відкрийте рішення/проект у Visual Studio
5. Умань Клацніть правою кнопкою миші ваш проект в *Solution Explorer * і додайте посилання на встановлені збірки
6. Жнівень Aspose.Words для .NET Встановлені збірки з'являться в розширеннях під розділом Зборів – просто виберіть необхідний компонент DLL<br/>
      <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-words-setup-5" style="width:800px"/>
7. Навігація Нарешті, натисніть OK

## Розгляд При запуску в акції Server Головна

Всі пропозиції .NET компоненти рекомендовані для запуску з *Full Trust* комплект дозволу. Це тому, що Aspose .NET іноді потребує доступу до параметрів реєстру та файлів, розташованих у місцях, крім віртуального каталогу, таких як шрифти читання. До того ж `Aspose.NET` компоненти на основі ядра .NET системні класи, деякі з яких також вимагають *Full Trust* дозвіл на роботу в деяких випадках.

Інтернет-сервіс Постачальники, які здійснюють багато додатків з різних компаній, в основному, використовують * Рівень безпеки Medium Trust*. У разі виникнення .NET 2.0, такий рівень безпеки може накладати такі обмеження, які можуть вплинути на здатність Aspose.Words правильно виконувати:

- до **RegistryPermission** немає. Це означає, що ви не можете отримати доступ до реєстру, який необхідний для ознайомлення встановлених шрифтів при наданні документів.
- до **FileIOPermission** обмежується. Це означає, що ви можете використовувати лише файли доступу у віртуальному каталозі програми. Це також потенційно означає, що шрифти не можуть прочитати під час експорту.

З цих причин, зазначених вище, рекомендується запустити Aspose.Words з Full Trust дозволи. Ви можете знайти, що деякі функції бібліотеки будуть працювати при виконанні різних завдань з середньою довірою, і деякі не будуть, наприклад, рендеринг. Це може бути пов'язано з документами GDI+.
