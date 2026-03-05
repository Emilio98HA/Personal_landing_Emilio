#let resume(
  author: "",
  header-description: "",
  author-position: left,
  personal-info-position: left,
  pronouns: "",
  location: "",
  email: "",
  linkedin: "",
  scholar: "",
  researchgate: "",
  github: "",
  phone: "",
  personal-site: "",
  orcid: "",
  accent-color: "#000000",
  font: "",
  paper: "us-letter",
  author-font-size: "",
  font-size: "",
  body,
) = {
  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    // LaTeX style font
    font: font,
    size: font-size,
    lang: "en",
    // Disable ligatures so ATS systems do not get confused when parsing fonts.
    ligatures: false,
  )

  // Recommended to have 0.5in margin on all sides
  set page(
    margin: 0.5in,
    paper: paper,
  )

  // Link styles
  show link: underline


  // Small caps for section titles
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -9pt, [
      //#smallcaps(it.body)]
      #smallcaps(text(size: font-size)[#it.body])])
    #line(length: 100%, stroke: 1pt)
  ]

  // Accent Color Styling
  show heading: set text(
    fill: rgb(accent-color),
  )

  show link: set text(
    fill: rgb(accent-color),
  )

  // Name will be aligned left, bold and big
  show heading.where(level: 1): it => [
    #set align(author-position)
    #set text(
      weight: 700,
      size: author-font-size,
    )
    #pad(it.body)
  ]

  // Level 1 Heading
  [= #(author)]

  // Personal Info Helper
  let contact-item(value, prefix: "", link-type: "") = {
    if value != "" {
      if link-type != "" {
        link(link-type + value)[#(prefix + value)]
      } else {
        value
      }
    }
  }

  // Personal Info
  pad(
    top: 0.25em,
    align(personal-info-position)[
      #{
        let items = (
          contact-item(pronouns),
          contact-item(phone),
          contact-item(location),
          contact-item(email, link-type: "mailto:"),
          contact-item(linkedin, link-type: "https://"),
          contact-item(scholar, link-type: "https://"),
          contact-item(github, link-type: "https://"),
          contact-item(researchgate, link-type: "https://"),
          contact-item(orcid, link-type: "https://"),
          //contact-item(orcid, prefix: [#orcid-icon(color: rgb("#AECD54"))orcid.org/], link-type: "https://orcid.org/"),
        )
        items.filter(x => x != none).join("  |  ")
      }
    ],
  )

  [= #(header-description)]
  // Main body.
  set par(justify: true)

  body
}

// Generic two by two component for resume
#let generic-two-by-two(
  top-left: "",
  top-right: "",
  bottom-left: "",
  bottom-right: "",
) = {
  [
    #top-left #h(1fr) #top-right \
    #bottom-left #h(1fr) #bottom-right
  ]
}

// Generic one by two component for resume
#let generic-one-by-two(
  left: "",
  right: "",
) = {
  [
    #left #h(1fr) #right
  ]
}

// Cannot just use normal --- ligature because ligatures are disabled for good reasons
#let dates-helper(
  start-date: "",
  end-date: "",
) = {
  start-date + " " + $dash.em$ + " " + end-date
}

// Section components below
#let edu(
  institution: "",
  dates: "",
  degree: "",
  gpa: "",
  location: "",
  // Makes dates on upper right like rest of components
  consistent: false,
) = {
  if consistent {
    // edu-constant style (dates top-right, location bottom-right)
    generic-two-by-two(
      top-left: strong(institution),
      top-right: dates,
      bottom-left: emph(degree),
      bottom-right: emph(location),
    )
  } else {
    // original edu style (location top-right, dates bottom-right)
    generic-two-by-two(
      top-left: strong(institution),
      top-right: location,
      bottom-left: emph(degree),
      bottom-right: emph(dates),
    )
  }
}

#let work(
  title: "",
  dates: "",
  company: "",
  location: "",
) = {
  generic-two-by-two(
    top-left: strong(title),
    top-right: dates,
    bottom-left: company,
    bottom-right: emph(location),
  )
}


#let project(
  role: "",
  name: "",
  url: "",
  dates: "",
) = {
  generic-one-by-two(
    left: {
      if role == "" {
        [*#name* #if url != "" and dates != "" [ (#link("https://" + url)[#url])]]
      } else {
        [*#role* #name #if url != "" and dates != "" [ (#link("https://" + url)[#url])]]
      }
    },
    right: {
      if dates == "" and url != "" {
        link("https://" + url)[#url]
      } else {
        dates
      }
    },
  )
}


#let certificates(
  name: "",
  issuer: "",
  url: "",
  date: "",
) = {
  [
    #name, *#issuer*
    #if url != "" {
      [ (#link("https://" + url)[#url])]
    }
    #h(1fr) #date
  ]
}

#let extracurriculars(
  activity: "",
  dates: "",
) = {
  generic-one-by-two(
    left: strong(activity),
    right: dates,
  )
}

/*
Para los artículos que ponga en mi CV
*/

#let main_author(
  article-author: "",
  author-name: "",
) = {
  // Verificar si author-name es string y no está vacío
  if author-name != "" {
    article-author
      .split(", ")
      .map(emph_author => if lower(emph_author) == lower(author-name) {
        strong(emph_author)
      } else {
        emph_author
      })
      .join(", ")
  } else {
    // Si author-name no es string o está vacío, devolver el original
    article-author
  }
}

#let article(
  title-art: "",
  year-art: "",
  author-art: "",
  paper-art: "",
  link-art: "",
  author-art-emph: "",
  repository-dataset-link: "",
  repository-dataset-host: "",
  journal-quartile: "",
) = {
  let authore-em = main_author(
    article-author: author-art,
    author-name: author-art-emph,
  )
  [
    #title-art #h(1fr) #year-art \
    _ #authore-em _ \
    #if paper-art != "" {
      emph(paper-art)
      if journal-quartile != "" {
        " (Journal Quartile: " + strong(journal-quartile) + ")"
      }
      linebreak()
    }
    #text(blue)[#link(link-art)]
    #if (repository-dataset-link != "") and (repository-dataset-host != "") {
      linebreak()
      "Data Repository (" + repository-dataset-host + ")"
      linebreak()
      text(blue)[#link(repository-dataset-link)]
    }
  ]
}
