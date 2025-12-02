#let header(header-path) = it => {
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
      image(header-path, height: 0.98cm, width: 4.13cm)
      v(-0.5em)
      line(length: 100%, stroke: 1pt + black)
    },
    header-ascent: 1.2em,
  )

  it
}
