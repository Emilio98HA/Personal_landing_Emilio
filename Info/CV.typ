#import "resume.typ": *
#let olague_2p = "https://www.mdpi.com/about/announcements/6991"
// Put your personal information here, replacing mine
#let name = "Emilio Hernández Arellano"
//#let location = "San Diego, CA"
#let email = "emillioha@outlook.com"
#let scholar = "scholar.google.com/citations?hl=es&user=qr12g68AAAAJ"
#let linkedin = "linkedin.com/in/emilio-hdez-are98/"
#let github = "github.com/Emilio98HA/"
#let phone = "+52-2223631651"
#let personal-site = "stuxf.dev"
#let orcid = "orcid.org/0009-0006-7321-2022"
#let header_description = [Optimization & Computer Vision Research
Data & AI Engineering]
#let researchgate = "www.researchgate.net/profile/Emilio-Hernandez-Arellano"
#let author-font-size = 12pt
#let font-size = 11pt
#set par(justify: true)
#set page(numbering: "1")
#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  email: email,
  linkedin: linkedin,
  orcid: orcid,
  font: "Arial",
  paper: "us-letter",
  author-position: center,
  personal-info-position: center,
  author-font-size: author-font-size,
  font-size: font-size,
  header-description: header_description
)

//Results-oriented and multidisciplinary Computer Scientist with a background in Biomedical Engineering, passionate about AI, machine learning, computer vision, signal processingg. Brings a cross-domain perspective to technological innovation at the intersection of healthcare and computing.

//LAST DESCRIPTION MSc Computer Science graduate specializing in AI and computer vision, eager to drive innovative solutions. Integrates a strong technical foundation with a Biomedical Engineering perspective, fostering a unique and effective approach to technological challenges.
//Computer Vision and Explainable AI researcher (*MSc* in Computer Science) specializing in analytical vision models and evolutionary optimization. Co-author of *Q1 publications* developing interpretable approaches to visual information recovery in challenging illumination conditions. Experienced in designing algorithms that bridge mathematical modeling, optimization, and real-world data systems.


//Computer Vision Researcher (MSc in Computer Science) passionate about the intersection of Soft Computing and aesthetics. I specialize in designing Evolutionary Algorithms for image restoration, prioritizing visual pleasure alongside mathematical precision. I operate under the conviction that art and science are not isolated realms, but symbiotic disciplines that inspire and complement one another to reveal new truths.

/*
•⁠  ⁠Lines that start with == are formatted into section headings
•⁠  ⁠You can use the specific formatting functions if needed
•⁠  ⁠The following formatting functions are listed below
•⁠  ⁠#edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
•⁠  ⁠#work(company: "", dates: "", location: "", title: "")
•⁠  ⁠#project(dates: "", name: "", role: "", url: "")
•⁠  ⁠certificates(name: "", issuer: "", url: "", date: "")
•⁠  ⁠#extracurriculars(activity: "", dates: "")
•⁠  ⁠There are also the following generic functions that don't apply any formatting
•⁠  ⁠#generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
•⁠  ⁠#generic-one-by-two(left: "", right: "")
*/


//
#show link: it => underline(text(fill: blue)[#it])
== Education

#edu(
  institution: "Center for Scientific Research and Higher Education of Ensenada (CICESE)",
  location: "Baja California, Mexico",
  dates: dates-helper(start-date: "Aug 2022", end-date: "Oct 2024"),
  degree: "MSc in Computer Science",
)
- Advisor: The late Dr. Gustavo Olague (#link(olague_2p)[Stanford's World Top 2% Most-Cited Scientists 2023])
- Mexican Government Graduate Scholarship (CONAHCYT) for tuition coverage and maintenance stipend.
- ⁠Master Thesis: #link("https://cicese.repositorioinstitucional.mx/jspui/handle/1007/4197")[Use of dichotomies for the enhancement of low-light colored images]
  - Developed an intrinsically explainable analytical model capable of recovering hidden information from low-light images.
  - Leveraged parameterized modeling and optimization techniques to maintain visual fidelity and interpretability.
/*- Implemented a *Genetic Algorithm (GA)* to automate parameter tuning via heuristic search, replacing empirical methods with evolutionary optimization; work featured in *Applied Soft Computing*.
- Validated the restoration quality using reference, non-reference image metrics to objectively assess the visual improvement.
- Designed the *Dichotomy Tuned Algorithm (Dichotomy Tuna)*, an algorithmic implementation based on the Dichotomy function applied to the enhancement of images with complex mixed-exposure.
- Implemented a *Genetic Algorithm (GA)* to automate parameter tuning via heuristic search, replacing empirical methods with evolutionary optimization; work featured in *Applied Soft Computing*.
- Validated the restoration quality using reference, non-reference image metrics to objectively assess the visual improvement.
- Demonstrated high computational efficiency by running the algorithm on standard CPU hardware, verifying its viability as a lightweight solution.

  - Designed the *Analytic Dichotomy Algorithm*, a mathematical framework for Low-Light Image Enhancement (LLIE) based on empirically determined global parameters in HSV and RGB, utilizing YCbCr specifically for noise suppression.
  - Demonstrated that this optimized analytical model achieves superior perceptual quality (lower *NIQE/PIQE* scores) compared to Deep Learning baselines on standard CPU hardware.
  - Subsequently evolved this algorithm post-thesis into the Dichotomy Tuned Algorithm (*Dichotomy Tuna*), by implementing a Genetic Algorithm (GA) to replace empirical tuning with automated heuristic search. This approach was featured in the journal *Applied Soft Computing*.
  - Optimized the published architecture *by eliminating the YCbCr dependency*, validating that applying denoising directly in RGB space maintained signal integrity while reducing color space transformations.


  - Developed the foundational Analytic Dichotomy Algorithm for low-light enhancement. The algorithm uses seven global parameters, ensuring high transparency and intrinsic explainability.
  - The work involved analytical design, demonstrating competitive visual enhancement performance against deep learning methods using only CPU resources.
  - The initial algorithm was later optimized, subsequent to the thesis defense, using a Genetic Algorithm (GA). This optimization resulted in the published algorithm, *Dichotomy Tuned Algorithm (Dichotomy Tuna)*, featured in the journal *Applied Soft Computing*.
*/
#edu(
  institution: "University of the Americas Puebla (UDLAP)",
  location: "Puebla, Mexico",
  dates: dates-helper(start-date: "Aug 2017", end-date: "May 2022"),
  degree: "BS in Biomedical Engineering",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
- ⁠Academic Scholarship
- ⁠Relevant Coursework: Image Processing, Rehabilitation Engineering, Digital Signal Processing

== Journal Articles

#let name_art = "Emilio Hernandez"

#article(
  author-art: "Axel Martinez, Gustavo Olague, Emilio Hernandez",
  paper-art: "Applied Mathematical Modelling",
  title-art: "Modeling Image Tone Dichotomy with the Power Function",
  year-art: 2025,
  link-art: "https://doi.org/10.1016/j.apm.2025.116538",
  author-art-emph: name_art,
  journal-quartile: "Q1",
)
- Applied the tone-dichotomy mathematical model to recover hidden structural information from complex visual imagery.
- Demonstrated applications including cultural heritage analysis and structural detail recovery.

#article(
  author-art: "Axel Martinez, Emilio Hernandez, Matthieu Olague, Gustavo Olague",
  author-art-emph: name_art,
  paper-art: "Applied Soft Computing",
  link-art: "https://doi.org/10.1016/j.asoc.2025.113546",
  year-art: 2025,
  title-art: "Analytical-heuristic modeling and optimization for low-light image enhancement",
  journal-quartile: "Q1",
)
- Designed *Dichotomy Tuna*, a 7-parameter analytical algorithm extending the tone-dichotomy model for low-light image enhancement.
- Integrated both the original mathematical model and the proposed algorithm into a *Genetic Algorithm optimization framework*.

/*
== Datasets

#article(
  author-art-emph: name_art,
  title-art: "Adversarial Attacks Dataset for Low Light Image Enhancement",
  year-art: 2025,
  author-art: "Axel Martinez, Matthieu Olague, Gustavo Olague, Emilio Hernandez, Julio Cesar Lopez-Arredondo",
  paper-art: "Data in Brief",
  link-art: "https://doi.org/10.1016/j.dib.2025.111680",
  repository-dataset-link: "https://data.mendeley.com/datasets/n2j4yfnt3x/1",
  repository-dataset-host: "Mendeley Data",
)*/
/*
#article(
  author-art-emph: name_art,
  title-art: "Adversarial Attacks for Low Light Image Enhancement",
  year-art: 2025,
  author-art: "Axel Martinez, Matthieu Olague, Gustavo Olague, Emilio Hernandez, Julio Cesar Lopez-Arredondo",
  link-art: "https://data.mendeley.com/datasets/n2j4yfnt3x/1"
)

#article(
  author-art-emph: name_art,
  title-art: "Analytical-Heuristic Modeling and Optimization for Low-Light Image Enhancement",
  paper-art: "Applied Mathematical Modelling",
  year-art: 2025,
  author-art: "Axel Martinez, Emilio Hernandez, Matthieu Olague, Gustavo Olague",
  link_art: "https://doi.org/10.1016/j.asoc.2025.113546"
)

#article(
  author-art-emph:  name_art,
  title-art: "Adversarial Attacks Dataset for Low Light Image Enhancement",
  year-art: 2025,
  author-art: "Axel Martinez, Matthieu Olague, Gustavo Olague, Emilio Hernandez, Julio Cesar Lopez-Arredondo",
  link_art: "https://doi.org/10.1016/j.dib.2025.111680",
)

#article(
  author-art-emph: name_art,
  title-art: "Adversarial Attacks for Low Light Image Enhancement",
  year-art: 2025,
  author-art: "Axel Martinez, Matthieu Olague, Gustavo Olague, Emilio Hernandez, Julio Cesar Lopez-Arredondo",
  link_art: "https://data.mendeley.com/datasets/n2j4yfnt3x/1"
)

#article(
  author-art-emph: name_art,
  title-art: "Modeling Image Tone Dichotomy with the Power Function",
  year-art: 2024,
  author-art: "Axel Martinez, Gustavo Olague, Emilio Hernandez",
  link_art: "https://arxiv.org/abs/2409.06764",
)*/



== Research Experience
#work(
  title: "Peer Reviewer",
  dates: dates-helper(start-date: "Oct 2024", end-date: "Jul 2025"),
  company: "Engineering Applications of Artificial Intelligence (Elsevier)",
)
- ⁠Reviewed scientific manuscripts focusing on methodological clarity, reproducibility, and AI model transparency.

#work(
  title: "EvoVisión Lab – Research Contribution",
  dates: dates-helper(start-date: "Jun 2024", end-date: "Oct 2024"),
  company: "CICESE",
  location: "Ensenada, Mexico",
)
- Developed an explainable analytical algorithm for low-light image enhancement during MSc research.
- Contributed to applying mathematical tone-dichotomy models to challenging visual analysis problems.
- Research outcomes later published in Q1 journals in applied AI and computational modeling.

#work(
  title: "Academic Support and Research Outreach",
  dates: dates-helper(start-date: "Jun 2024", end-date: "Oct 2024"),
  company: "CICESE",
  location: "Ensenada, Mexico",
)
- Presented my thesis advances at the annual CICESE *Open House 2024*, motivating undergraduate students from the *Universidad Autónoma de Baja California* to pursue graduate studies.
- Explained my research topic on the CICESE Computer Science Graduate Program's YouTube channel.
//- Successfully applied the *dichotomy mathematical model* to the *Shroud of Turin* to recover hidden visual details, as published in *Applied Mathematical Modelling*. This work demonstrated that analytical modeling reveals historical information that complex Deep Learning methods fail to preserve.
//- Advanced my thesis work by developing a *Genetic Algorithm for parameter tuning*, achieving state-of-the-art visual quality. Published in *Applied Soft Computing*, this research has received 4 citations, validating heuristic optimization as a robust alternative to data-heavy neural networks.


== Industry Experience

#work(
  title: "AI Trainer - Aether",
  company: "Outlier",
  location: "Remote",
  dates: dates-helper(start-date: "Jan 2026", end-date: "Present"),
)
- Evaluated multimodal content to determine whether images and audio were generated by AI systems.
- Assessed artistic sketches to determine feasibility for realistic reconstruction using generative AI models.
- Provided structured feedback contributing to improvements in frontier multimodal AI systems.

#work(
  title: "Data Engineering & AI Automation Consultant",
  company: "Swiss Just",
  location: "Remote",
  dates: dates-helper(start-date: "Jul 2025", end-date: "Present"),
)
- Built a data pipeline transforming Excel sales reports into a structured SQLite relational database, reconstructing the hierarchical consultant network using upline relationships.
- Parsed product catalogs from PDF and reconstructed them into a structured SQLite product database to track active promotions and pricing.
- Designed a greedy threshold optimization algorithm to generate minimum-cost product combinations ensuring consultants reach required sales targets, including promotional gift resolution.
- Automated the generation of ~120 personalized recommendation and recognition messages per reporting cycle based on consultant performance metrics.
- Generated segmented reports for team leaders by querying consultant subtrees within the relational hierarchy.
- Developed a WordPress content automation pipeline, extracting product images from PDF catalogs via Python and generating structured promotional posts using a Gemini-assisted workflow.

/*
#work(
  title: "Scientific Research Summarizer",
  location: "Puebla, Mexico",
  company: "Nubix",
  dates: dates-helper(start-date: "May 2021", end-date: "Jul 2021"),
)
- ⁠Translated and summarized English-language scientific articles on X-ray technologies into accessible Spanish for a general Hispanic audience.*/
/*
#work(
  title: "Reaserch Assitant",
  location: "Ensenada, Mexico",
  company: "CICESE",
  dates: dates-helper(start-date: "Aug 2023", end-date: "Oct 2024"),
)

•⁠  ⁠Co-authored 3 peer-reviewed publications.
•⁠  ⁠Reviewed 2 academic manuscripts, contributing to quality control.
*/

/*#work(
  title: "AI Wrangler and Code Ninja",
  location: "Silicon Mirage, CA",
  company: "Organic Stupidity Startup",
  dates: dates-helper(start-date: "Dec 2023", end-date: "Mar 2024"),
)
•⁠  ⁠Taught robots to predict when (and how much!) humans will empty their wallets at the doctor's office
•⁠  ⁠Developed HIPAA-compliant digital signatures, because doctors' handwriting wasn't illegible enough already
•⁠  ⁠Turned spaghetti code into a gourmet dish, making other interns drool with envy*/

/*
#work(
  title: "Biomedical Equipment Technician",
  location: "Puebla, Mexico",
  company: "Angeles Hospital of Puebla",
  dates: dates-helper(start-date: "Jun 2019", end-date: "Jul 2019")
)


•⁠  ⁠Ensured the functionality and availability of critical medical equipment:
    - Conducted preventive maintenance to maintain equipment performance.
    - Managed inventory of medical devices and supplies.
*/
/*== Projects
#project(
  name: "3D Prosthetic Socket Design with Fusion 360",
  // Role is optional
  //role: "Maintainer",
  // Dates is optional
  dates: dates-helper(start-date: "Jan 2025", end-date: "Feb 2025"),
  // URL is also optional
  // url: "hyperschedule.io",
)
//- Created an anatomically accurate socket using a human-leg STL model, leveraging parametric modeling tools in Fusion 360.
- ⁠Created an anatomically accurate socket using a human-leg STL model.
- ⁠Integrated adjustable knee articulation and aesthetic customization, showcasing early-stage design-to-human adaptation workflow.

#project(
  name: "Vowel detector in Mexican Sign Language",
  // Role is optional
  //role: "Maintainer",
  // Dates is optional
  dates: dates-helper(start-date: "Feb 2024", end-date: "Mar 2024"),
  // URL is also optional
  //url: "hyperschedule.io",
)
- Developed a lightweight, real-time hand gesture recognition system using MediaPipe for landmark extraction and SVM for classification.
- Achieved a macro F1-score of 0.74 across five Spanish vowels, contributing to accessible AI solutions for Mexican Sign Language users.
/*
#project(
  name: "Genetic Algorithm for Low Light Image Enhacement",
  // Role is optional
  //role: "Maintainer",
  // Dates is optional
  dates: dates-helper(start-date: "Aug 2024", end-date: "Oct 2024"),
  // URL is also optional
  //url: "hyperschedule.io",
)
•⁠  ⁠Designed a custom fitness function and evaluated image quality using reference/non-reference metrics
•⁠  ⁠Demonstrated competitive visual enhancement performance against deep learning methods using only CPU resources.

#project(
  name: "Vowel detector in Mexican Sign Language",
  // Role is optional
  //role: "Maintainer",
  // Dates is optional
  dates: dates-helper(start-date: "Feb 2024", end-date: "Mar 2024"),
  // URL is also optional
  //url: "hyperschedule.io",
)*/
//- ⁠Developed a lightweight, real-time hand gesture recognition system using MediaPipe for landmark extraction and SVM for classification.
//- ⁠Achieved a macro F1-score of 0.74 across five Spanish vowels contributing to accessible AI solutions for Mexican Sign Language users.

/*
== Extracurricular Activities

#extracurriculars(
  activity: "Capture The Flag Competitions",
  dates: dates-helper(start-date: "Jan 2021", end-date: "Present"),
)
•⁠  ⁠Founder of Les Amateurs (#link("https://amateurs.team")[amateurs.team]), currently ranked \#4 US, \#33 global on CTFTime (2023: \#4 US, \#42 global)
•⁠  ⁠Organized AmateursCTF 2023 and 2024, with 1000+ teams solving at least one challenge and \$2000+ in cash prizes
  - Scaled infrastructure using GCP, Digital Ocean with Kubernetes and Docker; deployed custom software on fly.io
•⁠  ⁠Qualified for DEFCON CTF 32 and CSAW CTF 2023, two of the most prestigious cybersecurity competitions globally

// #extracurriculars(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- Present"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )

*/
*/

== Certifications

#certificates(
  name: "Introduction to Neural Networks and Deep Learning",
  issuer: "P4H Bionics",
  date: 2026,
)

#certificates(
  name: "Vision Language Models (VLM) Bootcamp",
  issuer: "OpenCV University",
  date: 2025,
)

#certificates(
  name: "How Transformer LLMs Work!",
  issuer: "DeepLearning.AI",
  date: 2025,
)
/*
#certificates(
  name: "Applications-oriented instruction on signal processing and digital signal processing (DSP) using MATLAB and Python codes",
  issuer: "Udemy",
  date: 2025,
)*/

#certificates(
  name: "Fundamentals of Agents",
  issuer: "Hugging Face",
  date: 2025,
)

#certificates(
  name: "Introduction to Biorobotics",
  issuer: "P4H Bionics",
  date: 2025,
)

== Skills

- Explainable AI & Computer Vision: Explainable AI (XAI), analytical image models, visual information recovery.
- Optimization & Algorithms: Evolutionary computation, Genetic Algorithms, heuristic optimization.
- Scientific Computing: Python, C++, NumPy, MATLAB, Armadillo.
- Computer Vision Libraries: OpenCV, PyTorch.
- Computational Modeling: Parametric geometric modeling (Fusion 360).
- Languages: Spanish (Native), English (B2-Advanced), German (A2-Basic), Polish (A1-Basic).

