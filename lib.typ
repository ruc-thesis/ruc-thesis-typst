#import "@preview/cuti:0.4.0": show-cn-fakebold

#import "src/body.typ": body-style
#import "src/cover.typ": cover
#import "src/header.typ": header


#import "src/abstract.typ": abstract

#let project(
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
  abstract-zh: [],
  keywords-zh: (),
  abstract-en: [],
  keywords-en: (),
  body,
) = {
  show: show-cn-fakebold
  show: header("/assets/ruc-logo-header-gray.svg")

  set par(
    first-line-indent: (amount: 2em, all: true),
    justify: true,
  )

  cover(
    title: title,
    subtitle: subtitle,
    author: author,
    school: school,
    major: major,
    grade: grade,
    student-id: student-id,
    advisor: advisor,
    score: score,
    date: date,
    encoding: encoding,
  )
  abstract(
    abstract-zh: abstract-zh,
    keywords-zh: keywords-zh,
    abstract-en: abstract-en,
    keywords-en: keywords-en,
  )
  body-style(body)
}
