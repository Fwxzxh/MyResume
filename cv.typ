#set document(
  title: "Resume",
  author: "Jorge David Elihu Mejía Castro",
  date: auto,
  keywords: ("Resume", "Jorge David Elihu Mejía Castro", "Technology")
)
#set page(
  paper: "us-letter"
)
#set par(justify: true)
#set text(
  font: "Times New Roman",
  size: 12pt,
)

#let Header1 = 18pt
#let Header2 = 16pt
#let Header3 = 14pt

#let EducationItem(Institution, Date, Title, BulletPoints) = {
  text(Header1, weight: "bold")[#Institution]
  linebreak()

  text(Header2)[#Date]
  linebreak()

  text(Header3, style: "italic")[#Title]
  linebreak()

  if BulletPoints == () {
    for value in BulletPoints [
      - value
    ]
  }
}

// A Function to generate a resume item
#let WorkItem(Company, Title, Date, Keywords, Experiences) = {

  stack(
    dir: ltr,
    spacing: 1fr,
    text(Header1, weight: "bold")[#Company],
    text(Header1)[#Date]
  )

  if Title != "" {
    text(Header2, weight: "semibold", style: "italic")[#Title]
    linebreak()
  }

  if Keywords != "" {
    text(Header3, style: "italic")[#Keywords]
    linebreak()
  }
  if Experiences != () {
    for value in Experiences [
      - #value
    ]
  }
}

// A function to Generate a styled header
#let NewSectionHeader(Title) = {
  text(22pt, weight: "bold")[
    #underline(extent: 2pt, stroke: blue)[
      #Title
    ]
  ]
}

// Header of my document
#par(justify: false)[
  #align(left)[
    #text(28pt, weight: "black")[
      *Jorge David Elihu Mejía Castro*
    ]
    #text(16pt, weight: "light")[
      `jdemeca01@gmail.com` #sym.emptyset
      (442) 189 7740 #sym.emptyset
      México, Querétaro Querétaro #sym.emptyset
      #show link: underline
      #link("https://github.com/Fwxzxh")[github.com/Fwxzxh]
      #sym.emptyset
      #link("https://www.linkedin.com/in/jdemeca")[linkedin.com/jdemeca]
    ]
  ]
]

#line(length: 100%, end: none)

// Keywords
#par()[
  #text(size: 14pt)[
    Keywords:

    Developer, Problem-Solving, Leader, Innovation, Lifelong learner.
  ]
]

// Items
#NewSectionHeader("Work Experience")

#WorkItem(
  "Visteon Corporation",
  "Software Engineer",
  "Ago. 2022 - Present",
  "HMI Developer & Internal Tools Architect",
  (
    "Day to day work in C#, C/C++, Cmake, Python and Go.",
    "Enforcement and application of Agile Methodologies.",
    "Proficiency Game engines like Unity and Godot.",
    "Proficiency in Unix & Windows OS, IPC, CAN, Networking, and reverse engineering.",
    "Played a pivotal role in code reviews and conducted static analysis to uphold quality standards.",
    "Proactively reviewed and analyzed requirements to deliver solid solutions.",
    "Upgraded existing frameworks and tools to enhance efficiency and alleviate workflow pain points.",
  )
)

#WorkItem(
  "Freelance Developer",
  "",
  "Ene. 2021 - Feb 2023",
  "Team Lead",
  (
    "Lead of a team of 4 developers.",
    "Development of applications and platforms for small & medium size businesses.",
    "Focus on fullfil customer needs and delivering a reliable solution.",
    "C#, F#, WPF, SQL Databases, Python, HTML, JS, Go, Rust.",
    "Scrum Methodology.",
  )
)

#WorkItem(
  "CIDESI",
  "",
  "Ago. 2021 - March 2022",
  "Social Service",
  (
    "Computer vision algorithms implementation and theory in Python and Matlab",
    "Search & Cleaning of free flowers images for the validation of a flower-counting algorithm",
    "Creation of a open Dataset of flower images.",
    "Cleaning, segmentation & counting of flowers via Computer vision algorithms.",
  )
)

#NewSectionHeader("Education")

#EducationItem(
  "Tecnológico Nacional de México Campus Querétaro",
  "2017-2023",
  "Computer engineering, with specialization in distributed systems.",
  ()
)

#NewSectionHeader("Skills")

#terms.item(
  "Programming Languages",
  "C#/F#, C/C++, Python, Go, Rust, Swift, Java, Kotlin, SQL.",
)
#terms.item(
  "Developer Tools",
  "CANalizer, Git, GitHub, Jira, GDB, RenderDoc, Unity, Godot, Blender."
)
#terms.item(
  "Frameworks",
  "WPF, AvaloniaUI, QT, Robot Framework, OpenCv, TensorFlow, FastApi."
)
#terms.item(
  "Languages",
  "Spanish, English."
)
#terms.item(
  "Technical Interests",
  "Compilers, Operating Systems, Artificial Intelligence, Game Engines, Functional Programming."
)