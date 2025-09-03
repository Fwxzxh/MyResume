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

// Items
#NewSectionHeader("Work Experience")


#WorkItem(
  Company: "Kudo Technologies",
  Title: "Co-founder & CTO",
  Date: "Oct. 2024 - Actually",
  // Keywords: "CTO",
  Experiences: (
    "Architecting the technological vision and roadmap as founding CTO, strategically positioning our startup at the intersection of innovation and market opportunity",
    "Leading the design and implementation of specialized LLMs for 3D modeling applications, creating proprietary AI solutions that deliver unique competitive advantages",
    "Crafting a scalable technical architecture from the ground up, making decisive technology stack selections that balance cutting-edge capabilities with sustainable growth",
    "Curating an exceptional technical team through rigorous talent identification and assessment, building a culture where innovation thrives",
    "Leading hands-on development efforts while simultaneously guiding overall technical strategy, embodying the versatility required in early-stage ventures",
    "Driving research and development initiatives that push technological boundaries while maintaining clear alignment with business objectives and market needs",
  )
)

#WorkItem(
  Company:"Visteon Corporation",
  Title: "Software Engineer",
  Date:"Ago. 2022 - Sep. 2024",
  // Keywords:"HMI Developer",
  Experiences: (
    "Key role in the development of v363, v710, v769 & p758 Ford programs HMI, delivering sophisticated digital instrument clusters that enhanced driver experience",
    "Revolutionized internal development workflows by engineering automation tools that dramatically accelerated delivery timelines and improved code quality",
    "Revitalized legacy system functionality by meticulously reverse engineering proprietary IPCs with limited documentation, enabling seamless integration with modern development frameworks",
    "Contributed to cutting-edge augmented reality HUD technology showcased at CES 2024, pushing the boundaries of automotive interface innovation",
    "Implemented comprehensive metrics collection system that provided unprecedented visibility into team performance and delivery efficiency",
    "Mastered complex technical ecosystems including CAN protocols, Unix/Linux environments, and QNX real-time operating system to deliver robust automotive solutions",
    "Elevated team capabilities through strategic code reviews and mentorship, while optimizing build systems to enhance overall development infrastructure"
  )
)

#WorkItem(
  Company: "Freelance Developer",
  Title: "Team Lead",
  Date: "Ene. 2021 - Feb 2023",
  // Keywords: "Team Lead",
  Experiences: (

    "Orchestrated a dynamic team of 4 developers as a freelance tech lead, delivering bespoke software solutions that transformed business operations for small and medium enterprises",
    "Disrupted traditional client-developer relationships by implementing a radical client-centric approach, resulting in 95% client satisfaction and substantial repeat business",
    "Engineered process optimization strategies that boosted client sales by up to 40% while slashing operational inefficiencies through targeted digital transformation",
    "Cultivated a high-performance development culture through decisive leadership, transparent communication, and relentless focus on quality",
    "Pioneered agile methodologies tailored for small teams, increasing development velocity while maintaining exceptional code quality standards",
    "Redefined client collaboration by establishing transparent feedback loops that transformed complex requirements into elegant, scalable solutions while maintaining project integrity"
  )
)

#WorkItem(
  Company: "CIDESI",
  Title: "Intern",
  Date: "Ago. 2021 - March 2022",
  Keywords: "Social Service",
  Experiences: (
    "Pioneered AI and computer vision research at CIDESI, developing innovative aerial flower counting technology that bridged the gap between traditional agriculture and cutting-edge tech",
    "Architected and curated comprehensive tagged datasets, transforming raw visual data into actionable intelligence for precision agriculture applications",
    "Implemented foundational computer vision algorithms that pushed the boundaries of automated pattern recognition in complex natural environments",
    "Coded versatile AI solutions in both MATLAB and Python, demonstrating technical adaptability while maintaining a focus on practical, real-world applications",
    "Challenged conventional agricultural monitoring methods by introducing scalable, data-driven approaches that dramatically improved efficiency and accuracy",
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
