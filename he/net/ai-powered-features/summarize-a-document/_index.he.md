---
title: לסכם מסמך
second_title: Aspose.Words עבור .NET
articleTitle: לסכם מסמך
linktitle: לסכם מסמך
type: docs
weight: 20
description: "סכם מסמך. Aspose.Words עבור .NET מפשט את סיכום המסמכים באמצעות OpenAI וגוגל AI מודלים בכך שהוא מאפשר לך לציין את אורך הסיכום."
url: /he/net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

סיכום מסמכים הוא כלי רב ערך לבדיקת תוכן, תובנות מהירות או הכנת תקצירים. Aspose.Words תומך בסיכום מסמכים באמצעות מודלים המופעלים על AI, מה שמקל על עיבוד טקסט ארוך. תכונה זו, הזמינה במרחב השמות [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/), משלבת מודלים מתקדמים של שפות גנרטיביות מ *OpenAI* ו *Google*.

ניתן לציין אפשרויות שונות לסיכום תוכן המסמך. השתמש בשיטה [Summarize](https://reference.aspose.com/words/net/aspose.words.ai/iaimodeltext/summarize/) כדי ליצור סיכום של המסמך שלך. ניתן גם להגדיר אורך סיכום באמצעות המאפיין [SummaryLength](https://reference.aspose.com/words/net/aspose.words.ai/summarizeoptions/summarylength/).

עם Aspose.Words, יישום סיכום מסמכים הוא פשוט. דוגמת הקוד הבאה מראה חם לסיכום מסמך באמצעות GPT-4או דֶגֶם:

{{< highlight csharp >}}
Document firstDoc = new Document(MyDir + "Big document.docx");
Document secondDoc = new Document(MyDir + "Document.docx");

string apiKey = Environment.GetEnvironmentVariable("API_KEY");
// Use OpenAI or Google generative language models.
IAiModelText model = (IAiModelText)AiModel.Create(AiModelType.Gpt4OMini).WithApiKey(apiKey);

Document oneDocumentSummary = model.Summarize(firstDoc, new SummarizeOptions() { SummaryLength = SummaryLength.Short });
oneDocumentSummary.Save(ArtifactsDir + "AI.AiSummarize.One.docx");

Document multiDocumentSummary = model.Summarize(new Document[] { firstDoc, secondDoc }, new SummarizeOptions() { SummaryLength = SummaryLength.Long });
multiDocumentSummary.Save(ArtifactsDir + "AI.AiSummarize.Multi.docx");
{{< /highlight >}}

{{% alert color="primary" %}}

סיכום מסמכים עם Aspose.Words חוסך זמן ועוזר לך להתמקד במידע חיוני. למידע נוסף, עיין בתיעוד [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) API.

{{% /alert %}}