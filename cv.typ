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

// A Function to generate a resume item
#let WorkItem(Company, Title, Date, Keywords, Experiences) = {
  text(18pt, weight: "bold")[#Company]
  linebreak()

  if Title != "" {
    text(16pt, weight: "semibold", style: "italic")[#Title]
    linebreak()
  }
  text(16pt)[#Date]
  linebreak()

  if Keywords != "" {
    text(14pt, style: "italic")[#Keywords]
    linebreak()
  }
  for value in Experiences [
    - #value
  ]
}

// A function to Generate a styled header
#let NewSectionHeader(Title) = {
  text(22pt, weight: "bold")[
    #underline(offset: 5pt)[
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
    ]
  ]
]

#line(length: 100%, end: none)

// Keywords
#par()[
  #text(size: 14pt)[
  Developer, Problem-Solving, Leader, Lifelong learner.
  ]
]

// ITms
#NewSectionHeader("Work Experience")

#WorkItem(
  "Visteon Corporation",
  "Software Engineer",
  "Ago. 2022 - Present",
  "HMI Developer & Internal Tools Architect",
  (
    "Upgraded existing frameworks and tools to enhance efficiency and alleviate workflow pain points.",
    "Day to day work in C#, C/C++, Cmake, Python and Go.",
    "Agile methodologies enforcement and application.",
    "Proficiency Game engines like Unity and Godot.",
    "Expertise in Unix & Windows OS, IPC, Networking and reverse engineering for modernizing internal legacy tools and protocols while solving complex challenges with innovative solutions.",
    "Played a pivotal role in code reviews and conducted static analysis to uphold quality standards.",
    "Proactively reviewed and analyzed requirements to deliver tailored solutions.",
  )
)

#WorkItem(
  "Freelance Developer",
  "",
  "Ene. 2021 - Feb 2023",
  "Team Lead",
  (
    "Development of applications for small & medium size businesses.",
    "C#, F#, WPF, SQL Databases, Python, HTML, JS, Go, Rust.",
    "Lead of a small group of developers.",
    "Requirements Writing.",
    "Scrum Methodology."
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
    "Gathering of flower images on the internet.",
    "Cleaning, segmentation & counting of flowers via Computer vision algorithms.",
  )
)

#NewSectionHeader("Education")

#WorkItem(
  "Tecnológico Nacional de México campus Querétaro",
  "",
  "2017-2024",
  "Computer engineering",
  (
    "",
  )
)