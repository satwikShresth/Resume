#import "@preview/basic-resume:0.2.8": *

#let name = "Satwik Shresth"
#let phone = ""
#let location = ""
#let email = "satwikshresth@gmail.com"
#let github = "github.com/satwikShresth"
#let linkedin = "linkedin.com/in/satwik-shresth"
#let personal-site = "satwik.dev"
#let accent-color= "#26428b"
#let font= "Times New Roman"
#let paper= "us-letter"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: accent-color,
  font: font,
  paper: paper,
  author-position: center,
  personal-info-position: center,
)
#set text(10.2pt)
/*
 * Lines that start with == are formatted into section headings
 * You can use the specific formatting functions if needed
 * The following formatting functions are listed below
 * #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
 * #work(company: "", dates: "", location: "", title: "")
 * #project(dates: "", name: "", role: "", url: "")
 * #certificates(name: "", issuer: "", url: "", date: "")
 * #extracurriculars(activity: "", dates: "")
 * There are also the following generic functions that don't apply any formatting
 * #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
 * #generic-one-by-two(left: "", right: "") 
 */


#let relevant = ( "Adv Web Development", "Concurrent Programming", "Database Systems", "Discrete Math", "Linear Algebra", "Artificial Intelligence (TA)","Machine Learning", "Network Programming (TA)", "Software Architecture (TA)", "Data Structures (TA)" ).dedup().sorted().join(", ")

== Education

#edu(
  institution: "Drexel University",
  location: "Philadelphia, PA",
  dates: dates-helper(start-date: "Jan 2021", end-date: "June 2025"),
  degree: "Bachelor's of Science, Computer Science",
  // Uncomment the line below if you want edu formatting to be consistent with everything else
   consistent: true
)
- *Cumulative GPA*: *3.83/4.0* | Dean's List, A.J Drexel Merit Scholarship, 
- *Relevant Coursework*: #relevant


== Work Experience
#work(
  title: "Software Engineering Co-op",
  location: "Bala Cynwyd, PA",
  company: "Susquehanna International Group",
  dates: dates-helper(start-date: "September 2023", end-date: "March 2024"),
)
- Developed a *C++* protocol metrics publisher to tail multiple log files to generate data frames for *5.8 billion+ messages/day*
- Built a *Python* orchestration layer with C++ bindings to aggregate metric data-frames and stream real‑time data on Grafana
- Created a *Python FastAPI* proxy server to integrate OpenTelemetry alerts with an internal messaging platform via *RESTful API*
- Developed a concurrent *Python* Kafka consumer to process *500+ million* messages in 5 minutes, increasing speed by *9x*

#work(
  title: "Software Engineering Co-op",
  location: "Moorestown, NJ",
  company: "OPEX Corporation",
  dates: dates-helper(start-date: "September 2022", end-date: "March 2023"),
)
- Implemented asynchronous windows inter-process communication, connecting multiple *C++* applications with proprietary protocol, reducing alert latency by *60%*
- Developed a *Python* tool using Doxygen to integrate 15,000+ dynamic Windows Help files into a *C++ MFC* application
- Wrote comprehensive unit and integration tests for robot's host application, increasing test coverage and operational reliability

#work(
  title: "Teaching Assistant",
  location: "Philadelphia, PA",
  company: "Drexel University",
  dates: dates-helper(start-date: "September 2022", end-date: "March 2025"),
)
- Mentored over *150 students* during weekly labs and tutoring hours, helping them grasp complex concepts
- Developed #link("https://github.com/satwikShresth/grader")[#text()[grading tool]] with *Python* and *JavaScript* to automate assignment compilation, reducing grading time by *80%*

== Projects
#project(
  name: "OpenMario",
  role: "",
  url: "openmario.com",
  dates: [*Stack*: Docker, Node.js, React.js, TanStack Query, Meilisearch, Postgres, Python] 
)
- *Open-source* platform for Drexel students to search job listings, salaries, courses, and professor ratings in one place
- Scraped and transformed *50,000+ webpages* of raw data into a structured schema optimized for cross-reference features
- Implemented *millisecond-latency* search using *Meilisearch* with zero user data storage for privacy and performance
- Achieved early product validation with *100+ weekly active users* and *220+ wage submissions* via word-of-mouth

#project(
  name: "Inspiration",
  role: "",
  url: "gitlab.cci.drexel.edu/inspiration",
  dates: [*Stack*: Docker, React, TanStack, S3, Celery, Redis, Postgres, Python, Playwright] 
)
- Led *5-student team* to build open-source plagiarism detection end-to-end system currently utilized by *5+ Drexel professors*
- Set up *S3 infrastructure* for client-side document streaming, minimizing server overhead while enforcing strict authorization
- Redesigned database schema, enabling real-time visualizations of document similarities, improving query performance by *60%*
- Integrated *Celery* work-queues to offload computation from *TypeScript* backend to *Python* workers, delivering 10x faster results while maintaining seamless integration
- Developed *Rust* extensions for *Python*, accelerating winnowing algorithm by 2x


#project(
  name: "Shelved",
  role: "",
  url: "shelved.satwik.dev",
  dates:  [*Stack*: Docker, Node.js, Knex.js, Postgres, JavaScript, EJS]
)
- Led a team of *4* to design, implement and self-host a full-scale books and media tracking website using just JavaScript
- Built custom authentication with *JsonWebToken*, secure password hashing, and anti-bot measures to ensure platform security
- Integrated multiple APIs, normalizing data to support social features like sharing, following, review and ratings
- Developed *LRU caching* that reduced API-dependent page load times by *65%* and improved overall site responsiveness

#let lang = ( " C", " C++", " Go", " Haskell", " Java", " JavaScript", " Python", " SQL", " TypeScript").dedup().sorted().join(", ")
#let framework = ( "Express", "React.js", "Redux", "Next.js", "TanStack", "FastAPI", "Svelte", "SQLAlchemy", "NumPy", "TanStack Query", "Zod").dedup().sorted().join(", ")

#let tools = ( "Docker", "Kubernetes", "Git", "CI/CD (GitLab, Jenkins)", "Elasticsearch", "Kafka", "Redis", "Postgres", "Nginx", "Vim", "S3", "Playwright", "Typst" ).dedup().sorted().join(", ")

== Skills
- *Programming Languages*: #lang 
- *Frameworks*: #framework
- *Tools*: #tools

//#TODO: TA, at least link python tool you used in Github. Could use another bullet if possible
//#TODO: Shelved. Make bullet longer or combine bullets include that its a team project. NA if removing for spaxce
//#TODO: Library. Either replace with portfolio website or make bullets longer and flashier
//#TODO: Programming Languages:: Make alphabetic and add github actions
//#TODO: DONE: Openmario - add # of users and # of submissions achieved with free marketing + fact that its opensource
//#todo: if there's still whitespace at bottom after making all these edits, increase font size
//#TODO:DONE: replace Library OR Shelved with satwik.dev website. They look like the same thing to a non-tech recruiter
//TODO: add more fluff to Opex
//TODO:DONE : MOST IMPORTANT  - add senior design under experiences
//TODO: make frameworks alphabetical
