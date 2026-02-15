# Business Case <!-- 850 words: Root Cause Analysis ~450 + Solution & Goal ~400 -->

The client engagement is based on modernising how council services are developed, supported and delivered to the public.

The council recognises that legacy systems cannot be supported indefinitely and that new service delivey is hampered by outdated software development processes and tools.  

## Root Cause Analysis

While there are many ways to analyse the current state of the organisation (Phillips, 2026) SWOT, PESTLE etc. they have some limitations in this scenario.

SWOT looks at strengths and weaknesses but doesn't particularly handle conflicting perspectives. Pestle focuses on external inputs but we're discussing an internal transformation projects and Porter's Five Forces are primarily based on assumptions about a competitive market place, similar to SC Analysis.

CATWOE (Customers, Actors, Transformation, Worldview, Owners and Environment) analysis is geared towards "messy" problems (Umbrex 2026) in public bodies where stakeholders hold different opinions and priorities as to what's important.

CATWOE seeks to surface various stakeholders assumptions amid changing political, budgetary, technical and service delivery constraints.






<!-- 
Table Section: Root Cause Analysis (~450 words)
Problem Analysis, Business Transformation types, and Internal/External factors

This section should: 
 
●  Illustrate the context. 
●  State and discuss the problem. 
●  Include a problem statement that clearly defines the scope and focus of the business problem you will investigate.
●  Analyze business transformation types relevant to the problem.
●  Identify internal and external factors affecting the organization.
-->

### Problem Analysis

Applying the CATWOE framework, the transformation can be defined as the moving from a set of legacy services to a platform that empowers service delivery, speeds it up and maintains security and trust in the organisation.

Different stakeholders have other perceptions based on their wordlview, for examples Developers see the issues in terms of technical debt, manual deployment processes and supporting legacy software. 

Executives and Finance team members look through a lens of cost and sustainability as well as needing to react quickly to changing governmental policy.

Service managers would love the focus to be on customer experience and ease of support of the services as well as the security concerns that come with running something that's public facing. 

The problem statement must consider all of these perspectives: *The council's current software development practices are insufficiently standardised, poorly governed and difficult to secure, resulting in slow service delivery, escalating costs and exposure to risk.*

### Business Transformation Types

The T (Transformation) in CATWOE will result in Development Process Improvements which will be nested inside a wider Software Transformation Process. In this case a more streamlined Development Process will underpin and support a wider Software Transformation. 

In modern Software Transformation programs, attempting to adopt a cloud-native architecture (for example) *without* improving the Development Process is like climbing a mountain without shoes. It *can* be done but doing so will be painful and unpleasant. 

A foundational research discovery of the early DevOps papers (Dora.dev, 2021) was that Development teams return better business outcomes if they hit these metrics.

* Change Lead Time - how fast does a change move from code check in to prod?
* Deployment Frequency - how often are changes deployed to production?
* Failed Deployment Recovery Time - if something does fail, for how long?
* Change Fail Rate - if a change is made, how often is it rolled back?
* Deployment Rework Rate - ratio of deployments that happen because of some unplanned issue in production

A useful way to summarise these points would be that as friction preventing the deployment of software reduces, the Development Process improves which inevitably accellerates Software Transformation, regardless of exactly what type it is.


<!-- 

Development Process Improvement	

- Development process improvement refers to changes in how software is planned, developed, tested, and deployed. This includes adopting new methodologies (like Agile or DevOps), implementing CI/CD pipelines, or improving quality assurance practices.

Software Transformation Process	

- Specifically focuses on changes or upgrades made to an organisation's software systems, applications, development processes, and technical infrastructure. This could involve modernising legacy systems, implementing new development methodologies, or adopting cloud-native architectures.
-->

### Internal Factors

The analysis here is all about who is impacted inside the organisation (Actors) versus those with authority (Owners) over its direction. If we consider Developers & Support staff as actors they are subject to the competing priorities of the Owner class like budgets, political deadlines and internal politics. 

#### Adopting Best Practice

A developer might want to adhere ridgidly to best practice but can only really do so within the constraints set by *owners*. At the same time owners might insist on an unrealistic timeline that risks introducting technical debt or security issues.

### External Factors

The E (Environment) and C (Customers) part of CATWOE are both really key external factors. Environment encompasses Security around customer's data and the extremely negative impact should this be compromised. Finances of course drive everything from technology choices to staffing, engagement and what solutions are even worth considering.

#### Security

Security is one of the key external factors driving the adoption of a standard set of practices, development environments, deployment pipelines and other tools.

"Highly Significant" cyber attacks rose by 50% in 2025 (Booth, 2025) alongside the ramping up of malicious activity by 

#### Finances

Certainly in local government this is a constraint that hasn't been well managed at all historically. 

#### Customers

At the end of the day, if voters receive a sub-par service, council staff will receive negative feedback and there could be wider political fallout.

The public expect the same level of digital (self) service that they would get from an Amazon or any commercial organisation (REF: needed)

## Solution & Goal

We propose adopting Platform Engineering practices through the deployment of an Internal Developer Platform (IDP). 

Platform Engineering, according to juliakm (2023), is "a practice built up from DevOps principles that seeks to improve each development team's security, compliance, costs, and time-to-business value through improved developer experiences and self-service within a secure, governed framework. It's both product-based mindset shift and a set of tools and systems to support it."

<!--
Solution Consideration, SMART Goal Statement, and Justification

This section should:
●  Argue why the transformation solution is needed.  
●  Demonstrate the impact it could have on the organization.
●  Create a core goal (SMART Goal Statement) for the project.
●  Provide justification for the chosen solution.
-->

### Solution Consideration

### SMART Goal Statement

**Goal:** Within 12 months of start, enroll three project teams in the IDP, reduce change lead time by 50% using repeatable deployment pipelines and baseline their performance against the DORA metrics.

### Justification

An Internl Development Platform delivers

<!--
RUBRIC C:
Shows foundational understanding with basic application of business analysis and project management principles.
Identifies and superficially analyses business problems, constructing a rudimentary business case.
Uses minimal research and references at least one organisational theory or best practice to illustrate effective teamwork in digital solutions.

RUBRIC B:
Clearly explains and effectively applies business analysis and project management principles in a systematic manner.
Analyses business problems with marked accuracy, developing a coherent business case informed by both professional and academic sources.
Demonstrates effective team collaboration strategies through an understanding of current practices.

RUBRIC A:
Strategically integrates business analysis and project management principles to address complex business challenges.
Critically analyses optimised solutions and a thorough business case.
Proposes ambitious organisational improvements with strategic planning to maximise team effectiveness and collaboration.
-->