# NewsBL_LLM
This is the source code for the paper with the title: **Can Large Language Models Effectively Rerank News Articles for Background Linking?**

The code is written using both Java (version "14.0.1") and Python (Python 3.8).

**Required Data:**

You need to download first the **Washington Post collection** file: https://trec.nist.gov/data/wapost/. The dataset is publicly available but you need to sign first an organizational aggrement form. Make Sure you request **V4** of this collection.

If you want to use the code without this dataset, then create some sample news articles in a collection file. An example of how an article's JSON object is formatted is given in the file: **NewsArticleFormat.txt**.

For preprocessing the news articles, you need the stop words file provided in this repository.

**1) Indexing the data:**

- Unarchive **Java.zip**.
- Create a maven project using the unarchived directory. This repository contains the **<Pom.xml>** file that defines the required dependencies for this project.
- Compile your project
- To create an inverted index for the data, run **<indexer.class>**. The indexer class will first split the dataset file into multiple files for a quick indexing process, then it will call multiple threads to start indexing.

**2) Create a SQL database for the data:**

- Use a local SQL engine such as SQLPro to create a database "WPostDB".
- Import the provided file : **WPostDB.sql** into your created database to create the required tables.
- Run **<Database.class>** from within your maven project to insert the news articles from the dataset into the created database.


**3) Retrieve the Candidate Background Links:**

- Run **<BackgroundLinking.class>**.

**4) Rerank the candidate background links:**

- for each LLM we experimented with in this work, you will find a python class that includes methods for implementing our proposed reranking approaches.
- required python packages: pymysql, timeout_decorator, openai, google.generativeai

