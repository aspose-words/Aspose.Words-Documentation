---
title: Отслеживание изменений в документе в C#
second_title: Aspose.Words для .NET
articleTitle: Отслеживание изменений в документе
linktitle: Отслеживание изменений в документе
description: "Отслеживать изменения в контенте и форматировании, сделанные вами или другими пользователями C#. Доступ к отдельным изменениям в документе и применение к ним различных свойств."
type: docs
weight: 270
url: /ru/net/track-changes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Функциональность отслеживания изменений, также известная как просмотр, позволяет отслеживать изменения в контенте и форматировании, сделанные вами или другими пользователями. Этот трек меняет функцию с Aspose.Words Поддерживает отслеживание изменений Microsoft Word. С помощью этой функции вы можете получить доступ к отдельным изменениям в вашем документе и применить к ним различные свойства.

При включении функции изменения трека все вставленные, удаленные и измененные элементы документа будут визуально выделены информацией о том, кем, когда и что было изменено. Объекты, несущие информацию о том, что было изменено, называются "отслеживанием изменений". Например, предположим, что вы хотите просмотреть документ и внести важные изменения - это может означать, что вам нужно внести изменения. Кроме того, вам может потребоваться добавить комментарии, чтобы обсудить некоторые изменения. Именно здесь отслеживаются изменения в документах.

В этой статье объясняется, как управлять и отслеживать изменения, созданные многими рецензентами на одном документе, а также свойства для отслеживания изменений.

{{% alert color="primary" %}}

Обратите внимание, что комментарий содержит Aspose.Words, а также в Microsoft Word, Это может быть связано с отслеживанием изменений. Однако помните, что комментарии полностью независимы от отслеживания изменений.

{{% /alert %}}

## Что такое пересмотр

Прежде чем погрузиться в ревизии, давайте объясним смысл ревизий. А. [revision](https://reference.aspose.com/words/net/aspose.words/revision/) изменение, которое происходит в одном узле документа, в то время как группа пересмотра, представленная [RevisionGroup](https://reference.aspose.com/words/net/aspose.words/revision/group/) Класс - это группа последовательных изменений, которые происходят во многих узлах документа. Редактирование является инструментом для отслеживания изменений.

Пересмотры используются в функции отслеживания изменений и в функции сравнения документов, где изменения появляются в результате сравнения. Таким образом, изменения в функции отслеживания изменений показывают, кем и что было изменено.

{{% alert color="primary" %}}

Заметьте, что Microsoft Word Он не позволяет просматривать отдельные изменения, он позволяет просматривать последовательные изменения только как единое целое. Но Aspose.Words Устраняет это ограничение с помощью **RevisionGroup** класс.

{{% /alert %}}

Aspose.Words поддерживает различные типы пересмотра, а также в Microsoft Word, такие как вставка, удаление, формат Изменение, StyleDefinition Меняться и двигаться. Все типы пересмотра представлены в [RevisionType](https://reference.aspose.com/words/net/aspose.words/revisiontype/) перечисление.

{{% alert color="primary" %}}

Обратите внимание, что изменения имеют результат, аналогичный Microsoft Word но Aspose.Words Не обнаруживает форматирование при отслеживании изменений.

{{% /alert %}}

## Начать и прекратить отслеживать изменения

Редактирование документа обычно не считается пересмотром, пока вы не начнете его отслеживать. Aspose.Words Это позволяет автоматически отслеживать все изменения в вашем документе с помощью простых шагов. Вы можете легко начать процесс отслеживания изменений, используя [StartTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/starttrackrevisions/#starttrackrevisions/) метод. Если вам нужно остановить процесс отслеживания изменений, чтобы любые будущие изменения не рассматривались как изменения, вам нужно будет использовать [StopTrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/stoptrackrevisions/) метод.

{{% alert color="primary" %}}

Обратите внимание, что `StartTrackingRevisions` Метод не меняет статус [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) имущество и не использует его стоимость с целью отслеживания изменений. Кроме того, если узел был перемещен из одного места в другое внутри отслеживаемого документа, то будут созданы изменения перемещения, включая переход из и переход в диапазон.

{{% /alert %}}

В конце процесса отслеживания изменений в вашем документе у вас будет возможность даже принять все изменения или отклонить их, чтобы вернуть документ в его первоначальную форму. Этого можно достичь, используя [AcceptAllRevisions](https://reference.aspose.com/words/net/aspose.words/document/acceptallrevisions/) или [RejectAll](https://reference.aspose.com/words/net/aspose.words/revisioncollection/rejectall/) метод. Кроме того, вы можете принять или отклонить каждый пересмотр отдельно, используя [Accept](https://reference.aspose.com/words/net/aspose.words/revision/accept/) или [Reject](https://reference.aspose.com/words/net/aspose.words/revision/reject/) метод.

Все изменения будут отслеживаться для одной итерации с момента запуска процесса до момента его остановки. Связь между различными итерациями представлена следующим сценарием: вы завершаете процесс отслеживания, затем вносите некоторые изменения и снова начинаете отслеживать изменения. При этом сценарии все изменения, которые вы не приняли или отвергли, будут отображаться снова.

{{% alert color="primary" %}}

Обратите внимание, что `AcceptAllRevisions` Метод похож на "Принять все изменения". Microsoft Word.

{{% /alert %}}

Следующий пример кода показывает, как работать с отслеживанием изменений:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-AcceptAllRevisions.cs" >}}

Следующий пример кода показывает, как создаются изменения, когда узел перемещается в отслеживаемом документе:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-MoveNodeInTrackedDocument.cs" >}}

## Управлять и хранить изменения как изменения

С помощью предыдущей функции отслеживания изменений вы можете понять, какие изменения были внесены в ваш документ и кто внес эти изменения. В то время как с [TrackRevisions](https://reference.aspose.com/words/net/aspose.words/document/trackrevisions/) Функция, вы заставляете любые изменения в вашем документе храниться в виде изменений.

Aspose.Words позволяет проверить, имеет ли документ пересмотр или нет, используя [HasRevision](https://reference.aspose.com/words/net/aspose.words/document/hasrevisions/) собственность. Если вам не нужно автоматически отслеживать изменения в вашем документе с помощью методов StartTrackRevisions и StopTrackRevisions, то вы можете использовать `TrackRevisions` свойство проверять, отслеживаются ли изменения при редактировании документа в Microsoft Word Сохраняется как ревизия.

The `TrackRevisions` Функция делает изменения вместо реальных DOM изменения. Но сами пересмотры являются отдельными. Например, Если вы удалите какой-либо абзац, Aspose.Words сделать его пересмотром, пометив его как удаление, вместо того, чтобы удалять его.

Кроме того, Aspose.Words позволяет проверить, был ли объект вставлен, удален или изменен форматирование с помощью [IsDeleteRevision](https://reference.aspose.com/words/net/aspose.words/inline/isdeleterevision/), [IsFormatRevision](https://reference.aspose.com/words/net/aspose.words/inline/isformatrevision/), [IsInsertRevision](https://reference.aspose.com/words/net/aspose.words/inline/isinsertrevision/), [IsMoveFromRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovefromrevision/), и [IsMoveToRevision](https://reference.aspose.com/words/net/aspose.words/inline/ismovetorevision/) свойств.

{{% alert color="primary" %}}

Следует отметить, что между самими изменениями и `TrackRevisions` собственность. Кроме того, вы можете принимать/отклонять изменения независимо от функции отслеживания изменений.

{{% /alert %}}

Следующий пример кода показывает, как применять различные свойства с изменениями:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShapeRevision.cs" >}}
