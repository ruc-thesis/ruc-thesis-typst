#import "@preview/pointless-size:0.1.2": zh

#import "./fonts.typ": *


#let cover(
  title: "",
  subtitle: "",
  author: "",
  school: "",
  major: "",
  grade: "",
  student-id: "",
  advisor: "",
  score: "",
  date: "",
  encoding: "",
) = {
  // 论文编码
  align(right)[
    #text(font: heiti, size: 12pt, weight: "bold")[论文编码：]
  ]

  v(1cm)

  // 文头
  align(center)[
    #text(font: heiti, size: 28pt, weight: "bold")[中国人民大学本科毕业论文（设计）]
  ]

  v(2em)

  // 论文题名
  align(center)[
    #text(font: heiti, size: 28pt, weight: "bold")[#title]
  ]

  // 论文副题名
  if subtitle != "" {
    v(1em)
    align(center)[
      #text(font: heiti, size: 20pt, weight: "bold")[—— #subtitle]
    ]
  }

  v(6em)

  // 个人信息栏
  let info-key(body) = {
    text(font: heiti, size: 20pt, weight: "bold")[#body]
  }

  let info-value(body) = {
    set align(center)
    rect(
      width: 100%,
      stroke: (bottom: 1pt + black),
      outset: (bottom: 4pt),
    )[
      #text(font: heiti, size: 20pt, weight: "bold")[#body]
    ]
  }

  let info-row(key, value) = {
    grid(
      columns: (120pt, 1fr),
      column-gutter: 10pt,
      align(right, info-key(key + "：")), info-value(value),
    )
    v(1.5em)
  }

  pad(left: 5em, right: 2em)[
    #info-row("作　　者", author)
    #info-row("学　　院", school)
    #info-row("专　　业", major)
    #info-row("年　　级", grade)
    #info-row("学　　号", student-id)
    #info-row("指导教师", advisor)
    #info-row("论文成绩", score)
    #info-row("日　　期", date)
  ]

  pagebreak()
}
