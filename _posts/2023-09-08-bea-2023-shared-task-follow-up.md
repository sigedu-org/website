---
title: BEA 2023 Shared Task Follow-Up
author: bea
author_profile: true
categories:
  news
excerpt: 
  "The shared task data and metrics are now available for download. See this post for more information."
tags:
  shared task
  data
  metrics
toc: false
published: true
---

Dear BEA community,

We would like to share with you an update on the shared task that was held at the BEA workshop this year.

The [BEA 2023 Shared Task on Generating AI Teacher Responses in Educational Dialogues](https://sig-edu.org/sharedtask/2023) ran from March 24 to May 6. The goal of the task was to benchmark the ability of generative language models to act as AI teachers, replying to a student in a teacher-student dialogue. Eight teams participated in the competition hosted on [CodaLab](https://codalab.lisn.upsaclay.fr/competitions/11705). They experimented with a wide variety of state-of-the-art models, including Alpaca, Bloom, DialoGPT, DistilGPT-2, Flan-T5, GPT-2, GPT-3, GPT-4, LLaMA, OPT-2.7B, and T5-base. Their submissions were automatically scored using BERTScore and DialogRPT metrics, and the top three among them were further manually evaluated in terms of pedagogical ability. The [NAISTeacher system](https://aclanthology.org/2023.bea-1.63/), which ranked first in both automated and human evaluation, generated responses with GPT-3.5 Turbo using an ensemble of prompts and DialogRPT-based ranking of responses for given dialogue contexts. These results were presented at the 18th edition of the BEA workshop in Toronto on July 13, 2023. More information can be found on the [shared task website](https://sig-edu.org/sharedtask/2023), in the [shared task overview paper](https://aclanthology.org/2023.bea-1.64.pdf), and in the corresponding system papers that can be found in the [workshop proceedings on ACL Anthology](https://aclanthology.org/volumes/2023.bea-1/).

If you are interested in following up on this task: because the CodaLab competition is no longer open to submissions, the shared task data can no longer be downloaded from the platform and the scoring program can no longer be used to run the evaluation metrics. To obtain the shared task data, you must now register for the shared task via [this Google Form](https://forms.gle/JhDtAMiJwadNmgKv7). In this form, you must sign and comply with the terms and conditions of the task and the TSCC data. After a successful registration, you will receive a confirmation email with the data. To run the shared task metrics, you should now download the anaistack/bea-2023-shared-task-metrics Docker image that is available [on Docker Hub](https://hub.docker.com/repository/docker/anaistack/bea-2023-shared-task-metrics/) and run it locally on your computer. See [https://github.com/anaistack/bea-2023-shared-task](https://github.com/anaistack/bea-2023-shared-task) for more information.

If you encounter any problems, do not hesitate to submit an issue on the GitHub repository.

We hope the shared task will be of interest to you.

Sincerely,

The BEA 2023 Shared Task Organizers