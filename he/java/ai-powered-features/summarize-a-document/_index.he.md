---
title: לסכם מסמך
second_title: Aspose.Words עבור Java
articleTitle: לסכם מסמך
linktitle: לסכם מסמך
type: docs
weight: 20
description: "סכם מסמך. Aspose.Words עבור Java מפשט את סיכום המסמכים באמצעות OpenAI וגוגל AI מודלים בכך שהוא מאפשר לך לציין את אורך הסיכום."
url: /he/java/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

סיכום מסמכים הוא כלי רב ערך לבדיקת תוכן, תובנות מהירות או הכנת תקצירים. Aspose.Words תומך בסיכום מסמכים באמצעות מודלים המופעלים על ידי AI, מה שמקל על עיבוד טקסט ארוך. תכונה זו, הזמינה בפונקציונליות AI מבוססת Aspose.Words, משלבת מודלים מתקדמים של שפה גנראטיבית מ *OpenAI* ו *Google*.

ניתן לציין אפשרויות שונות לסיכום תוכן המסמך. השתמש בשיטת [Summarize](https://reference.aspose.com/words/java/com.aspose.words/iaimodeltext/#summarize-com.aspose.words.Document-com.aspose.words.SummarizeOptions) כדי ליצור סיכום של המסמך שלך. ניתן גם להגדיר אורך סיכום באמצעות המאפיין [SummaryLength](https://reference.aspose.com/words/java/com.aspose.words/summarizeoptions/#getSummaryLength).

עם Aspose.Words, יישום סיכום מסמכים הוא פשוט. דוגמת הקוד הבאה מראה חם לסיכום מסמך באמצעות GPT-4או דֶגֶם:

{{< highlight java >}}
Document firstDoc = new Document(getMyDir() + "Big document.docx");
 Document secondDoc = new Document(getMyDir() + "Document.docx");

 String apiKey = System.getenv("API_KEY");
 // Use OpenAI or Google generative language models.
 IAiModelText model = (IAiModelText)AiModel.create(AiModelType.GPT_4_O_MINI).withApiKey(apiKey);

 Document oneDocumentSummary = model.summarize(firstDoc, new SummarizeOptions(); { oneDocumentSummary.setSummaryLength(SummaryLength.SHORT); });
 oneDocumentSummary.save(getArtifactsDir() + "AI.AiSummarize.One.docx");

 Document multiDocumentSummary = model.summarize(new Document[] { firstDoc, secondDoc }, new SummarizeOptions(); { multiDocumentSummary.setSummaryLength(SummaryLength.LONG); });
 multiDocumentSummary.save(getArtifactsDir() + "AI.AiSummarize.Multi.docx");
{{< /highlight >}}

{{% alert color="primary" %}}

סיכום מסמכים עם Aspose.Words חוסך זמן ועוזר לך להתמקד במידע חיוני. למידע נוסף, בדוק את [Java API documentation](https://reference.aspose.com/words/java/com.aspose.words/).

{{% /alert %}}