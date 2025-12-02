#import "@preview/pointless-size:0.1.2": zh
#import "@preview/cuti:0.4.0": show-cn-fakebold

#import "src/fonts.typ": *


#let project(
  title: "",
  authors: (),
  abstract: [],
  keywords: (),
  body,
) = {
  show: show-cn-fakebold

  set par(
    leading: 1.02em,
    spacing: 1.02em,
    first-line-indent: (amount: 2em, all: true),
    justify: true,
  )

  set page(
    paper: "a4",
    margin: (
      top: 2cm + 0.98cm,
      bottom: 2cm,
      left: 1.5cm + 0.5cm, // 装订线 0.5cm
      right: 1.5cm,
    ),
    header: {
      set align(center)
      image("assets/ruc-logo-header-gray.svg", height: 0.98cm, width: 4.13cm)
      v(-0.5em)
      line(length: 100%, stroke: 1pt + black)
    },
    header-ascent: 1.2em,
    footer: context {
      let page_num = counter(page).at(here()).first()
      set align(center)
      set text(font: songti, size: zh(5))
      [第 #page_num 页]
    },
  )

  set text(
    font: songti,
    size: zh(4.5),
    lang: "zh",
    region: "cn",
  )

  set heading(numbering: "1.1")
  show heading: set block(above: 1.7em, below: 1.7em)
  show heading: set text(font: heiti)
  show heading: it => block({
    if it.numbering != none {
      counter(heading).display(it.numbering)
      h(1em)
    }
    it.body
  })
  show heading.where(level: 1): set align(center)
  show heading.where(level: 1): set text(size: zh(3))
  show heading.where(level: 2): set text(size: zh(4))
  show heading.where(level: 3): set text(size: zh(4.5))
  show heading.where(level: 4): set text(size: zh(5))
  show heading.where(level: 5): set text(size: zh(5))

  body
}
