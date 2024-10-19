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

#let EducationItem(Institution: "", Date: "", Title: "", BulletPoints: ()) = {
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
#let WorkItem(Company: "", Title: "", Date: "", Keywords: "", Experiences: ()) = {

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
// #par()[
//   #text(size: 14pt)[
//     Hi! I’m Jorge, a developer with a strong problem-solving mindset and an unwavering passion for lifelong learning.
//     My journey in software development has allowed me to cultivate a deep understanding of emerging technologies and expertise in crafting innovative solutions.
//   ]
// ]

// Items
#NewSectionHeader("Work Experience")

#WorkItem(
  Company:"Visteon Corporation",
  Title: "Software Engineer",
  Date:"Ago. 2022 - Present",
  Keywords:"HMI Developer & Internal Tools Architect",
  Experiences: (
    "Key role in the development of v363, v710, v769 & p758 ford programs HMI.",
    "Led code reviews and static analysis to uphold quality standards.",
    "Proactively reviewed and analyzed requirements to deliver solid solutions.",
    "Participated in CES concepts, representing the company's solutions.",
    "Led the upgrade of existing legacy frameworks to enhance efficiency and alleviate workflow pain points.",
    "Led the creation of new tools and frameworks to enhance developer productivity.",
    "Skills in Unix, IPC, CAN, Networking, reverse engineering data analysis and data engineering for internal projects.",
  )
)

#WorkItem(
  Company: "Freelance Developer",
  Title: "Team Lead",
  Date: "Ene. 2021 - Feb 2023",
  // Keywords: "Team Lead",
  Experiences: (
    "Coordinated a team of 4 developers to create software solutions for small and medium-sized businesses.",
    "Developed custom applications that helped clients to improve internal processes and increase revenue.",
    "Implemented Agile workflows in the team.",
    "Focus on fulfill customer needs & delivering a reliable solution.",
    "Designed a management platform for a retail store that increased sales by 15%",
  )
)

#WorkItem(
  Company: "CIDESI",
  Title: "Intern",
  Date: "Ago. 2021 - March 2022",
  Keywords: "Social Service",
  Experiences: (
    "Computer vision algorithms implementation and theory in Python and Matlab",
    "Search & Cleaning of free flowers images for the validation of a flower-counting algorithm",
    "Creation of a open Dataset of flower images.",
    "Said Dataset allowed researchers to improve the accuracy of the flower-counting algorithm by 20%",
    "Cleaning, segmentation & counting of flowers via Computer vision algorithms and frameworks.",
  )
)

#NewSectionHeader("Education")

#EducationItem(
  Institution: "Tecnológico Nacional de México Campus Querétaro",
  Date:"2017-2023",
  Title:"Computer engineering, with specialization in distributed systems.",
  BulletPoints:()
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
  "WPF, AvaloniaUI, QT, Robot Framework, OpenCV, TensorFlow, FastApi."
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
    Project Management (Planning, Organizing & Executing)
    #linebreak()
    Technical Writing (Writing clear & concise technical documentation)
    #linebreak()
    Presentation Skills (Communicating technical information effectively to to all audiences)
  ]
)
#terms.item(
  "Technical Interests",
  "Compilers, Operating Systems, Artificial Intelligence, Game Engines, Functional Programming."
)