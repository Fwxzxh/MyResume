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

  text[
    #text(Header1, weight: "bold")[#Company]
    #h(1fr)
    #text(Header1)[#Date]
  ]
  linebreak()

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
      #link("mailto:jdemeca01@gmail.com")
      #sym.emptyset
      (442) 189 7740
      #sym.emptyset
      México, Querétaro Querétaro
      #sym.emptyset
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
    Hi! I’m Jorge, a developer with a strong problem-solving mindset and an unwavering passion for lifelong learning.
    My journey in software development has allowed me to cultivate a deep understanding of emerging technologies and expertise in crafting innovative solutions.
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
    "Day to day work in C#, C/C++, Cmake, Python, Bash & Powershell.",
    "Proficiency Game engines like Unity and Godot.",
    "Proficiency in Unix & Windows OS, IPC, CAN, Networking, and reverse engineering.",
    "Played a relevant role in HMI Automotive Software development and Company demos.",
    "Played a pivotal role in code reviews and conducted static analysis to uphold quality standards.",
    "Proactively reviewed and analyzed requirements to deliver solid solutions.",
    "Upgraded existing frameworks and create new tools to enhance efficiency and alleviate workflow pain points.",
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
    "Focus on fullfil customer needs & delivering a reliable solution.",
    "Software solutions helped customers to improve current workflows and grow revenue.",
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
    "Cleaning, segmentation & counting of flowers via Computer vision algorithms and frameworks.",
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
  "C#/F#, C/C++, Python, Go, Rust, Swift, Java, Kotlin, SQL, Bash, Powershell.",
)
#terms.item(
  "Developer Tools",
  "CANalizer, Git, GitHub, Jira, GDB, RenderDoc, Unity, Godot, Blender."
)
#terms.item(
  "Operating Systems",
  "Windows, MacOs, Linux, QNX."
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
  "Soft Technical Skills",
  text()[
    Data Analysis (Collecting, Processing & interpreting)
    #linebreak()
    Project Management (Planing, Organizing & Executing)
    #linebreak()
    Technical Writing (Creating clear & concise technical documentation)
    #linebreak()
    Presentation Skills (Communicating technical information effectively to to all audiences)
  ]
)
#terms.item(
  "Technical Interests",
  "Compilers, Operating Systems, Artificial Intelligence, Game Engines, Functional Programming."
)