#import "@preview/cuti:0.4.0": show-cn-fakebold

#import "src/body.typ": body-style
#import "src/cover.typ": cover
#import "src/header.typ": header


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
  abstract: [],
  keywords: (),
  body,
) = {
  show: show-cn-fakebold

  show: header("/assets/ruc-logo-header-gray.svg")

  cover(
    title:  title,
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
  body-style(body)
}
