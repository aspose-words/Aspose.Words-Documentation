---
title: לסכם מסמך
second_title: Aspose.Words עבור Python via .NET
articleTitle: לסכם מסמך
linktitle: לסכם מסמך
type: docs
weight: 20
description: "סכם מסמך. Aspose.Words עבור Python מפשט את סיכום המסמכים באמצעות OpenAI וגוגל AI מודלים בכך שהוא מאפשר לך לציין את אורך הסיכום."
url: /he/python-net/summarize-a-document/
timestamp: 2024-11-26-12-00-00
---

סיכום מסמכים הוא כלי רב ערך לבדיקת תוכן, תובנות מהירות או הכנת תקצירים. Aspose.Words תומך בסיכום מסמכים באמצעות מודלים המופעלים על AI, מה שמקל על עיבוד טקסט ארוך. תכונה זו, הזמינה במודול [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/), משלבת מודלים מתקדמים של שפות גנרטיביות מ *OpenAI* ו *Google*.

ניתן לציין אפשרויות שונות לסיכום תוכן המסמך. השתמש בשיטה [summarize](https://reference.aspose.com/words/python-net/aspose.words.ai/iaimodeltext/summarize/) כדי ליצור סיכום של המסמך שלך. ניתן גם להגדיר אורך סיכום באמצעות המאפיין [summary_length](https://reference.aspose.com/words/python-net/aspose.words.ai/summarizeoptions/summary_length/).

עם Aspose.Words, יישום סיכום מסמכים הוא פשוט. דוגמת הקוד הבאה מראה חם לסיכום מסמך באמצעות GPT-4או דֶגֶם:

{{< highlight python >}}
first_doc = aw.Document(MyDir + "Big document.docx")
second_doc = aw.Document(MyDir + "Document.docx")
api_key = os.getenv("API_KEY")
# Use OpenAI or Google generative language models.
model = aw.ai.AiModel.create(aw.ai.AiModelType.GPT_4O_MINI).with_api_key(api_key).as_open_ai_model()
options = aw.ai.SummarizeOptions()
options.summary_length = aw.ai.SummaryLength.SHORT
one_document_summary = model.summarize(first_doc, options)
oneDocumentSummary.save(ArtifactsDir + "AI.AiSummarize.One.docx")
options.summary_length = aw.ai.SummaryLength.LONG
multi_document_summary = model.summarize([first_doc, second_doc], options)
multiDocumentSummary.save(ArtifactsDir + "AI.AiSummarize.Multi.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

סיכום מסמכים עם Aspose.Words חוסך זמן ועוזר לך להתמקד במידע חיוני. למידע נוסף, עיין בתיעוד [aspose.words.ai](https://reference.aspose.com/words/python-net/aspose.words.ai/) API.

{{% /alert %}}