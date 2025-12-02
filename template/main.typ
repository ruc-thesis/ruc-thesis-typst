#import "../lib.typ": project

#show: project.with(
  title: "对Typst毕业论文模板的研究",
  subtitle: "一个Typst模板",
  author: "张三",
  school: "信息学院",
  major: "计算机科学与技术",
  grade: "2022级",
  student-id: "2022000000",
  advisor: "李四",
  score: "90分",
  date: "2026年3月",
  abstract: [
    这是中文摘要。本文旨在测试Typst模板的各种样式和功能。

    摘要通常包含研究背景、目的、方法、结果和结论。
  ],
  keywords: ("关键词1", "关键词2", "Typst", "模板"),
)

#include "chapters/chapter1.typ"
#include "chapters/chapter2.typ"
