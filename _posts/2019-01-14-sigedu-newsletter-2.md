---
title: SIGEDU/BEA Newsletter \#2
author: bea
author_profile: true
excerpt: "The second edition of the SIGEDU/BEA Newsletter."
tags:
  newsletter
categories:
    blog
toc: true
toc_label: "Sections"
toc_icon: "cog"
---

Hi Everyone,

we hope you're having a good start to 2019! We have several updates for you:

- Results of SIGEDU elections
- New website and blog
- New Twitter account
- BEA 2019 Shared Task on Grammatical Error Correction
- Upcoming Conferences on Educational Applications
- Job Advertisements

You can directly navigate to any of the sections by using the table of contents to the right.

Best,
the SIGEDU team


## Results of SIGEDU elections

Last year, the ACL exec accepted our proposal to turn BEA into a Special Interest Group (SIGEDU). We are now excited to announce the results of the SIGEDU elections and the names for the first set of elected officers:

- **President**: Jill Burstein (Educational Testing Service)
- **Secretary**: Ekaterina Kochmar (University of Cambridge)
- **Treasurer**: Helen Yannakoudakis (University of Cambridge)
- **Board Members**: Claudia Leacock (Grammarly), Nitin Madnani (Educational Testing Service), Ildiko Pilan (Develop Diverse), Torsten Zesch (University of Duisburg-Essen)

Our officers took office on June 6, 2018 for a term of 2 years. Their duties include helping grow the organisation and running the BEA workshop (more details can be found in the [constitution](https://sig-edu.org/constitution)). This is the start of something completely new and exciting and we hope, with your help, to further expand and transform the field of Education and NLP!  

If you or your organization would like to sponsor SIGEDU, or know anyone who might be interested, please [get in touch](mailto: bea.nlp.workshop@gmail.com)! Sponsorship goes toward subsidising costs for students attending the workshop. Last year, our Gold Sponsors were Duolingo, Grammarly, National Board of Medical Examiners and Turnitin / Lightside Labs; our Silver Sponsors were Educational Testing Service and iLexIR; and our Bronze Sponsors were Cognii and Newsela.

## New website and blog

Hopefully as you can tell from this newsletter, we have a brand-new [website](https://sig-edu.org) for SIGEDU with a new design and a new logo! The most important thing to note about this website is that it’s designed and populated with the BEA community in mind: the code for the website is fully open-source and [hosted](https://github.com/sigedu-org/website) on GitHub. Therefore, literally _anyone_ can submit a pull request to the repository (see notes below) to suggest any additions or changes to the content that is currently on the website. We believe that this will inculcate a stronger sense of community ownership and, more practically, not over-burden one or two people with having to maintain or update the website. The SIGEDU officers have already started collaborating in this manner on the website and we hope that all of you will also follow suit!

In addition to asking for your help with the GitHub repository, we also wish to ask the community to help produce interesting and useful content for the website that can benefit all of us. We hope that many of you will write guest blog posts about your research and contribute links to interesting tools and resources. We have some preliminary ideas on who to ask but please don’t wait for us to reach out to you! If you have ideas for blog posts, interesting links, or other ways in which we can serve the EduNLP community, please [contact us](mailto: bea.nlp.workshop@gmail.com). 

*Notes*:

- If you are new to version control and GitHub, [this guide](https://guides.github.com/introduction/git-handbook/) may be very helpful.

- To learn about creating pull requests and collaborating on GitHub, use [this guide](https://help.github.com/articles/about-pull-requests/).
	
## New Twitter account 

Speaking of contacting us, we now have an official Twitter account: [@aclsigedu](https://twitter.com/aclsigedu). Please follow us for SIGEDU/BEA announcements, EduNLP-related links and, other information. Again, feel free to tweet interesting links at us so we can retweet them and share with the entire community.

## BEA 2019 Shared Task on Grammatical Error Correction

This year, BEA hosts a new edition of the shared task on Grammatical Error Correction. The task has attracted a lot of attention in the past, and given that it’s been 5 years since the last shared task on GEC, we are very excited about this round! Please join [the task](https://www.cl.cam.ac.uk/research/nl/bea2019st/) and help spreading the word about it. 
 
### Introduction 

Grammatical error correction (GEC) is the task of automatically correcting grammatical errors in text; e.g. *I follows his advices* -> *I followed his advice*. It can be used to not only help language learners improve their writing skills, but also alert native speakers to accidental mistakes or typos.
 
GEC gained significant attention in the Helping Our Own (HOO) and CoNLL shared tasks between 2011 and 2014, but has since become more difficult to evaluate given a lack of standardised experimental settings. In particular, recent systems have been trained, tuned and tested on different combinations of corpora using different metrics. One of the aims of this shared task is hence to once again provide a platform where different approaches can be trained and tested under the same conditions.
 
Another significant problem facing the field is that system performance is still primarily benchmarked against the CoNLL-2014 test set, even though this 5-year-old dataset only contains 50 essays on 2 different topics written by 25 South-East Asian undergraduates in Singapore. This means that systems have increasingly overfit to a very specific genre of English and so do not generalise well to other domains. As a result, this shared task introduces the Write&Improve corpus, a new error-annotated dataset that represents a much more diverse cross-section of English language levels and domains. [Write&Improve](https://writeandimprove.com/) is an online web platform that assists non-native English students with their writing. 
 
Participating teams will be provided with training and development data from the Write&Improve corpus to build their systems. Depending on the chosen track, supplementary data may also be used. System output will be evaluated on a blind test set using [ERRANT](https://github.com/chrisjbryant/errant).
 
In addition to learner data, we will provide an annotated development and test set extracted from the LOCNESS corpus, a collection of essays written by native English students compiled by the Centre for English Corpus Linguistics at the University of Louvain. 
 
### Tracks

There are 3 tracks in the BEA 2019 shared task. Each track controls the amount of annotated data that can be used in a system. We place no restrictions on the amount of unannotated data that can be used (e.g. for language modelling).
 
* **Restricted**. In the restricted setting, participants may only use the following annotated datasets: FCE-train, Lang-8 Corpus of Learner English, NUCLE and Write&Improve. Note that we restrict participants to the preprocessed Lang-8 Corpus of Learner English rather than the raw, multilingual Lang-8 Learner Corpus because participants would otherwise need to filter the raw corpus themselves.
 
* **Unrestricted**. In the unrestricted setting, participants may use any and all datasets, including those in the restricted setting.
 
* **Unsupervised (or minimally supervised)**. In the unsupervised setting, participants may not use any annotated training data. Since current state-of-the-art systems rely on as much training data as possible to reach the best performance, the goal of the unsupervised track is to encourage research into systems that do not rely on annotated training data. This track should be of particular interest to researchers working with low-resource languages. Since we also expect this to be a challenging track however, we will allow participants to use the W&I development set to develop their systems. 
 
### Participation

In order to participate in the BEA 2019 Shared Task, teams are required to submit their system output anytime up to Friday, March 29, 2019 at 23:59 GMT. There is no explicit registration procedure. Further details about the submission process will be provided soon.
 
### Important Dates

- Friday, Jan 25, 2019: New training data released
- Monday, March 25, 2019: New test data released
- Friday, March 29, 2019: System output submission deadline
- Friday, April 12, 2019: System results announced
- Friday, May 3, 2019: System paper submission deadline
- Friday, May 17, 2019: Review deadline
- Friday, May 24, 2019: Notification of acceptance
- Friday, June 7, 2019: Camera-ready submission deadline
- Friday, August 2, 2019: BEA-2019 Workshop (Florence, Italy)
 
### Organizers

- Christopher Bryant, University of Cambridge
- Mariano Felice, University of Cambridge
- Øistein Andersen, University of Cambridge
- Ted Briscoe, University of Cambridge
 
### Contact

Further details can be found on the task [webpage](https://www.cl.cam.ac.uk/research/nl/bea2019st/). Any other questions and queries about the shared task can be sent to the shared task [email address](mailto: bea2019st@gmail.com). 


## Upcoming Conference on Educational Applications: 

### L@S 2019

- **Location**: Chicago, United States
- **Official Website**: [https://learningatscale.acm.org/las2019/](https://learningatscale.acm.org/las2019/)
- **Dates**: June 24 and 25 2019

  **Introduction**<br/>

  Learning @ Scale (L@S) investigates large-scale, technology-mediated learning environments with many learners and few experts to guide them. Large-scale learning environments are incredibly diverse: massive open online courses, intelligent tutoring systems, open learning courseware, learning games, citizen science communities, collaborative programming communities (such as Scratch), community tutorial systems (such as StackOverflow), shared critique communities (such as DeviantArt), and the countless informal communities of learners (such as the Explain It Like I’m Five sub-Reddit) are all examples of learning at scale. These systems either depend upon large numbers of learners, or they are enriched through use of data from previous use by many learners. They share a common purpose–to increase human potential–and a common infrastructure of data and computation to enable learning at scale.

  The 2019 Learning at Scale conference will take place on June 24 and 25 in Chicago, Illinois, USA, at the Palmer House Hilton. The conference is co-located with and immediately precedes the [2019 International Conference on AI in Education](http://caed-lab.com/aied2019/index.html) in the same city and venue.

  **Submission Dates**

  The deadline time for each day is 11:59PM UTC-12 (Anywhere on Earth).
  
  - Abstract for Research or Synthesis Paper Submission: February 1, 2019
  - Full Research or Synthesis Paper Submission: February 8, 2019
  - Work-in-Progress Posters and Demonstrations: April 1, 2019
  - Camera-Ready Research or Synthesis Paper Submissions: April 18, 2019

### AIED 2019

- **Location**: Chicago, United States
- **Official Website**: [http://caed-lab.com/aied2019/index.html](http://caed-lab.com/aied2019/index.html)
- **Dates**: 25 to 29 Jun 2019

  **Introduction**

  The 20th International Conference on Artificial Intelligence in Education (AIED 2019) conference theme will be “Education for All in the XXI Century”. Inequity within and between countries continues to grow in the industrial age. Intelligent information technologies have been proposed to reduce this difference, but may instead increase the digital divide if applied without reflection. Education plays a central role in this problem, as it is one of the key approaches that could help to reduce this difference. However, further work is needed to understand how to provide equitable education for all, and many questions remain to be answered. What are the main barriers to providing educational opportunities to underserved teachers and learners? How can AI and advanced technologies help overcome these difficulties? How can this work be done ethically? In this conference we gather the collective intelligence of the community to think about this problem and provide innovative and creative solutions.

  **Submission Dates**
  - Abstract for Full Papers: Feb, 1, 11:59pm PST 
  - Full Papers, Industry Papers & Posters: Feb 8, 2019, 11:59pm PST
  - Workshop & Tutorial Proposals: Feb 27, 2019, 11:59pm PST
  - Doctoral Consortium papers: Feb 27, 2019, 11:59pm PST
  - Interactive Events: April 10, 2019, 11:59pm PST

  Please submit papers [here](https://easychair.org/conferences/?conf=aied2019).

## Job Advertisements

### Data Scientist at Pearson

> Pearson Boulder is growing and we have an opening for a researcher / data scientist.  Our group conducts applied research at the intersection of NLP, ML, HCI with an eye towards creating new educational experiences for teachers and students alike.  We are at the forefront of positioning Pearson as an AI company.
> 
> I look forward to going to work everyday and I love the interactions and discussions I have with my co-workers.  If you're interested or have any questions, I'd be happy to field any questions at lee.becker@pearson.com.
> 
> Position details and application links can be found [here](https://bit.ly/2Ginn6v)
> 
> Lee Becker


### Postdocts in Response Generation at Heriot-Watt University, Edinburgh

- **Title**: Postdoctoral Research Associate in response generation for [Spoken Dialogue Systems at the Interaction Lab, Edinburgh](https://sites.google.com/site/hwinteractionlab/).
- **Closing date**: 21st January 2019
- **Apply here**: https://www.hw.ac.uk/about/work/jobs/job_SVJDMjA0NTM.htm

**Job Details**<br/>
Applications are sought for 2 full-time Research Associates in the Interaction Lab at Heriot-Watt University.  The Research Assistants will work on the EPSRC project "MaDrIgAL - Multi-Dimensional Interaction Management and Adaptive Learning" (EP/N017536/1) to investigate, develop, and evaluate response generation in spoken dialogue systems. In particular, we seek a candidate with experience in machine learning approaches to NLP/ dialogue systems, and closely related fields.

**Location**<br/>
The successful candidate will join and collaborate with a group of 7 faculty members, 6 postdoctoral researchers and >10 PhD students. Our team was competing in the [Amazon Alexa Finals](https://developer.amazon.com/alexaprize) twice in a row and is one of the biggest dialogue groups in the world. We have close ties with the Edinburgh Centre for Robotics and we also have a weekly pub outing. The City of Edinburgh has been ranked second in a [global quality of life survey](http://bit.ly/2pIhh37).

**Dates**<br/>
The post is available from April 2019 until May 2020 in the first instance, with opportunities for extension. Start date is negotiable.

**Salary**<br/>
Grade 7 or 8 depending on experience (GBP 32,236.00-40,792.00).

**Key Duties and Responsibilities**<br/>
The main duties of the post are to perform collaborative research on the above-named EPSRC project, to contribute to research publications, to write and submit research articles, and to participate in international conferences. Detailed research duties are to implement and evaluate methods for response generation and adaptive learning in spoken dialogue systems, and to collect and analyse dialogue data.

We are looking for:
- Ph.D. in Computer Science, Artificial Intelligence, or a related field 
- Research experience in machine learning and/or NLP.
- Evidence of a strong publication record in the aforementioned areas.
- Excellent programming skills.
- Good command of English in writing and speaking.

**Contact**<br/>

For informal queries, please contact [Prof. Verena Rieser](mailto: v.t.rieser@hw.ac.uk)
