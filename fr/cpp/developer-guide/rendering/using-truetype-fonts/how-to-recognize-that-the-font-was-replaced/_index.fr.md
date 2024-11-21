---
title: Comment reconnaître que la Police a été Remplacée en C++
second_title: Aspose.Words pour C++
articleTitle: Comment Reconnaître Que la Police A Été Remplacée
linktitle: Comment Reconnaître Que la Police A Été Remplacée
description: "Si vous ne savez pas pourquoi la mise en page d'un document a changé ou pourquoi une certaine police ne s'affiche pas comme prévu, les messages d'avertissement de substitution de police peuvent vous aider."
type: docs
weight: 13
url: /fr/cpp/how-to-recognize-that-the-font-was-replaced/
timestamp: 2024-09-24-14-35-44
---

Parfois, il peut être difficile de comprendre pourquoi la mise en page du document a changé ou pourquoi certaines polices ne ressemblent pas à ce qui était attendu. Dans de tels cas, les messages d'avertissement de substitution de police implémentés par l'interface IWarningCallback viennent à la rescousse. Ils ont le type d'avertissement [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) et le format de texte de description standard, " Police '<OriginalFont> ' n'a pas été trouvé. En utilisant '<SubstitutionFont>' font à la place. Raison: <Reason>", avec les raisons suivantes:

- " nom alternatif du document " – pour substitution par [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "fontconfig substitution" - pour la substitution par la règle de configuration de la police
- " substitution de table " – pour la substitution par règle de table
- "substitution d'informations sur la police" – pour la substitution par la règle d'informations sur la police
- " Substitution de police par défaut " – pour la substitution par règle de police par défaut
- " première police disponible " – pour la substitution avec la première police disponible
