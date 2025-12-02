#import "@preview/cuti:0.4.0": show-cn-fakebold
#import "@preview/pointless-size:0.1.2": zh

#import "src/fonts.typ": *
#import "src/utils.typ": three-line-table

#let project(
  title: "",
  authors: (),
  abstract: [],
  keywords: (),
  body,
) = {
  show: show-cn-fakebold
  show table: three-line-table

  set par(
    leading: 1.02em,
    spacing: 1.02em,
    first-line-indent: (amount: 2em, all: true),
    justify: true,
  )

  set page(
    paper: "a4",
    margin: (
      top: 2cm + 0.98cm, // 图片 0.98cm
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
  show emph: set text(font: kaiti)
  show raw: set text(font: code, size: zh(5))
  show raw.where(block: true): set block(
    width: 100%,
    fill: luma(245),
    inset: 10pt,
    radius: 4pt,
    stroke: luma(200) + 0.5pt,
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

  set enum(
    indent: 2em,
    full: true,
    numbering: (..n) => {
      n = n.pos()
      let level = n.len()
      let number = ("(1)", "①").at(level - 1, default: "1.")
      numbering(number, ..n.slice(level - 1))
    },
  )
  set list(indent: 2em, marker: ([●], [○], [■]))
  show list: it => {
    set list(indent: 0em)
    set enum(indent: 0em)
    it
  }
  show enum: it => {
    set list(indent: 0em)
    set enum(indent: 0em)
    it
  }

  show figure.where(kind: table): set figure.caption(position: top)
  set table(inset: (y: 0.5em))

  set math.equation(numbering: "(1)")
  show math.equation.where(block: true): set block(breakable: true)
  show math.equation.where(block: true): it => {
    if not it.has("label") [
      #counter(math.equation).update(v => v - 1)
      #math.equation(it.body, block: true, numbering: none)#label("_")
    ] else if it.numbering != none {
      set align(left)
      it
    } else {
      it
    }
  }

  body
}
