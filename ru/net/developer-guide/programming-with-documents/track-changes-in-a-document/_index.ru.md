---
title: Отслеживать изменения в документе в C#
second_title: Aspose.Words для .NET
articleTitle: Отслеживать изменения в документе
linktitle: Отслеживать изменения в документе
description: "Отслеживайте изменения в содержимом и форматировании, внесенные вами или другими лицами с помощью C#. Получайте доступ к отдельным редакциям документа и применяйте к ним различные свойства."
type: docs
weight: 270
url: /ru/net/track-changes-in-a-document/
---

Функция отслеживания изменений, также известная как просмотр, позволяет отслеживать изменения контента и форматирования, внесенные вами или другими пользователями. Эта функция отслеживания изменений в Aspose.Words поддерживает отслеживание изменений в Microsoft Word. Благодаря этой функции вы можете получить доступ к отдельным редакциям вашего документа и применить к ним различные свойства.

Когда вы включаете функцию отслеживания изменений, все вставленные, удаленные и измененные элементы документа будут визуально выделены с информацией о том, кем, когда и что было изменено. Объекты, несущие информацию о том, что было изменено, называются "отслеживающими изменениями". Например, предположим, что вы хотите просмотреть документ и внести важные изменения — это может означать, что вам необходимо внести изменения. Также вам может потребоваться вставить комментарии для обсуждения некоторых изменений. Вот тут-то и пригодится отслеживание изменений в документах.

В этой статье объясняется, как управлять и отслеживать изменения, созданные многими рецензентами в одном документе, а также свойства для отслеживания изменений.

{{% alert color="primary" %}}

Обратите внимание, что функция комментариев в Aspose.Words, как и в Microsoft Word, может быть связана с отслеживанием изменений. Однако помните, что комментарии совершенно не зависят от отслеживания изменений.

{{% /alert %}}

## Что такое ревизия

Прежде чем углубляться в ревизии, давайте объясним значение ревизий. [revision](https://reference.aspose.com/words/ru/net/aspose.words/revision/) — это изменение, которое происходит в одном узле документа, а группа редакций, представленная классом [RevisionGroup](https://reference.aspose.com/words/ru/net/aspose.words/revision/group/), представляет собой группу последовательных редакций, которые происходят во многих узлах документа. По сути, ревизия — это инструмент отслеживания изменений.

Редакции используются в функции отслеживания изменений и в функции сравнения документов, где редакции появляются в результате сравнения. Таким образом, изменения в функции отслеживания изменений показывают, кем и что было изменено.

{{% alert color="primary" %}}

Обратите внимание, что Microsoft Word не позволяет просматривать отдельные версии, а только позволяет просматривать последовательные версии как единое целое. Но Aspose.Words решает это ограничение с помощью класса **RevisionGroup**.

{{% /alert %}}

Aspose.Words поддерживает различные типы изменений, как и Microsoft Word, такие как вставка, удаление, FormatChange, StyleDefinitionChange и Moving. Все типы редакций представлены перечислением [RevisionType](https://reference.aspose.com/words/ru/net/aspose.words/revisiontype/).

{{% alert color="primary" %}}

Обратите внимание, что версии имеют результат, аналогичный Microsoft Word, но Aspose.Words не обнаруживает форматирование во время отслеживания изменений.

{{% /alert %}}

## Запуск и остановка отслеживания изменений

Редактирование документа обычно не считается исправлением, пока вы не начнете его отслеживать. Aspose.Words позволяет автоматически отслеживать все изменения в вашем документе с помощью простых шагов. Вы можете легко начать процесс отслеживания изменений, воспользовавшись методом [StartTrackRevisions](https://reference.aspose.com/words/ru/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/). Если вам необходимо остановить процесс отслеживания изменений, чтобы любые будущие правки не считались ревизиями, вам нужно будет использовать метод [StopTrackRevisions](https://reference.aspose.com/words/ru/net/aspose.words/document/stoptrackrevisions/).

{{% alert color="primary" %}}

Обратите внимание, что метод `StartTrackingRevisions` не меняет состояние свойства [TrackRevisions](https://reference.aspose.com/words/ru/net/aspose.words/document/trackrevisions/) и не использует его значение для отслеживания изменений. Кроме того, если узел был перемещен из одного места в другое внутри отслеживаемого документа, будут созданы изменения перемещения, включая диапазон перемещения из и перемещения.

{{% /alert %}}

В конце процесса отслеживания изменений в вашем документе у вас будет возможность даже принять все изменения или отклонить их, чтобы вернуть документ в исходную форму. Этого можно добиться, используя метод [AcceptAllRevisions](https://reference.aspose.com/words/ru/net/aspose.words/document/acceptallrevisions/) или [RejectAll](https://reference.aspose.com/words/ru/net/aspose.words/revisioncollection/rejectall/). Кроме того, вы можете принять или отклонить каждую редакцию отдельно, используя метод [Accept](https://reference.aspose.com/words/ru/net/aspose.words/revision/accept/) или [Reject](https://reference.aspose.com/words/ru/net/aspose.words/revision/reject/).

Все изменения будут отслеживаться за одну итерацию с момента запуска процесса до момента его остановки. Связь между различными итерациями представляется в виде следующего сценария: вы завершаете процесс отслеживания, затем вносите некоторые изменения и снова начинаете отслеживать изменения. В этом сценарии все изменения, которые вы не приняли или отклонили, будут отображены снова.

{{% alert color="primary" %}}

Обратите внимание, что метод `AcceptAllRevisions` аналогичен методу "Принять все изменения" в Microsoft Word.

{{% /alert %}}

В следующем примере кода показано, как работать с отслеживанием изменений:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

В следующем примере кода показано, как генерируются версии при перемещении узла внутри отслеживаемого документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## Управляйте изменениями и сохраняйте их как версии

С помощью предыдущей функции отслеживания изменений вы можете понять, какие изменения были внесены в ваш документ и кто внес эти изменения. Используя функцию [TrackRevisions](https://reference.aspose.com/words/ru/net/aspose.words/document/trackrevisions/), вы принудительно сохраняете любые изменения в документе как версии.

Aspose.Words позволяет вам проверить, есть ли у документа редакция, используя свойство [HasRevision](https://reference.aspose.com/words/ru/net/aspose.words/document/hasrevisions/). Если вам не нужно автоматически отслеживать изменения в вашем документе с помощью методов StartTrackRevisions и StopTrackRevisions, то вы можете использовать свойство `TrackRevisions`, чтобы проверить, отслеживаются ли изменения при редактировании документа в Microsoft Word и сохраняются ли они как ревизии.

Функция `TrackRevisions` вносит изменения вместо реальных изменений DOM. Но сами ревизии отдельные. Например, если вы удалите какой-либо абзац, Aspose.Words сделает его исправленным, пометив его как удаленный, а не удалив.

Кроме того, Aspose.Words позволяет проверить, был ли объект вставлен, удален или изменено форматирование, используя свойства [IsDeleteRevision](https://reference.aspose.com/words/ru/net/aspose.words/inline/isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/ru/net/aspose.words/inline/isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/ru/net/aspose.words/inline/isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/ru/net/aspose.words/inline/ismovefromrevision/) и [IsMoveToRevision](https://reference.aspose.com/words/ru/net/aspose.words/inline/ismovetorevision/).

{{% alert color="primary" %}}

Обратите внимание, что между самими редакциями и свойством `TrackRevisions` нет никакой связи. Кроме того, вы можете принимать/отклонять изменения независимо от функции отслеживания изменений.

{{% /alert %}}

В следующем примере кода показано, как применять различные свойства с редакциями:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
