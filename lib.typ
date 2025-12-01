#import "@preview/pointless-size:0.1.2": zh

#import "src/fonts.typ": *


#let project(
  title: "",
  authors: (),
  abstract: [],
  keywords: (),
  body,
) = {
  set page(
    paper: "a4",
    margin: (
      top: 2cm,
      bottom: 2cm,
      left: 2cm,
      right: 1.5cm,
    ),
    header: align(center)[
      #image("assets/ruc-logo-header-gray.svg", height: 0.98cm)
    ],
    footer: context {
      let page_num = counter(page).at(here()).first()
      align(center, text(font: songti, size: zh(5))[第 #page_num 页])
    },
  )
  set text(
    font: songti,
    size: zh(4.5),
    lang: "zh",
    region: "cn",
  )
  set par(
    leading: 1.05em,
    spacing: 1.25em,
    first-line-indent: (amount: 2em, all: true),
    justify: true,
  )

  set heading(numbering: "1.1")
  show heading.where(level: 1): it => {
    set align(center)
    set text(font: heiti, size: zh(3), weight: "bold")
    set par(leading: 1em, first-line-indent: 0pt)
    v(1em)
    it
    v(1em)
  }
  show heading.where(level: 2): it => {
    set align(left)
    set text(font: heiti, size: zh(4), weight: "bold")
    set par(leading: 1em, first-line-indent: 0pt)
    v(1em)
    it
    v(1em)
  }
  show heading.where(level: 3): it => {
    set align(left)
    set text(font: heiti, size: zh(4.5), weight: "bold")
    set par(leading: 1em, first-line-indent: 0pt)
    v(1em)
    it
    v(1em)
  }

  body
}
