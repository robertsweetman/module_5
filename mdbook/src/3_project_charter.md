# Project Charter <!-- 1000 words -->

## Scoping & Prioritization

<!--
Table Section: Scoping & Prioritization (~150 words)
MoSCoW Analysis summary and Scope Prioritization

This section will contain an overview plan of the project you are proposing. 
It will build out from the business case by creating a core goal and set of objectives for the project.

This section should:
●  Create a scoping statement.
●  Apply MoSCoW Analysis (Must have, Should have, Could have, Won't have).
●  Prioritize scope to focus on key deliverables.
-->

### MoSCoW Analysis Summary

The MoSCoW framework prioritises deliverables against the problem statement and SMART goal established in [Section 1](1_business_case.md#problem-analysis--problem-statement). Each item is justified by its relationship to a root cause identified through the POPIT and Fishbone analyses in [Section 2](2_business_analysis_methodology.md#fishbone-diagram-analysis).

| Priority | Deliverable | Justification |
|---|---|---|
| **Must** | Hub/spoke network design, Entra ID for authentication, security baseline agreed | Without a secure design the platform increases risk exposure — directly contradicting the CATWOE Environmental constraint around public trust and the cyber security findings (Booth, 2025). |
| **Must** | Subscription factory (platform-core): automated provisioning of Terraform backends, pipelines, UAMI and scaffolded repositories | Addresses the primary POPIT Process root causes (no CI/CD, manual deployments, CAB bottleneck) and directly targets DORA Change Lead Time and Deployment Frequency. |
| **Must** | DORA baseline dashboard and onboarding of three pilot teams | Required to evidence the SMART goal. Without measurement the transformation cannot be evaluated (Forsgren, Humble and Kim, 2018) |
| **Should** | Policy-as-code guardrails (Azure Policy, Defender for Cloud) | Shifts security left into the platform, reducing reliance on manual CAB review and supporting the move from ITIL v3 to v4 principles (Williams, 2025) |
| **Should** | Automated testing stages (dev → test → production) in pipeline templates | Identified in the POPIT Technology analysis as absent; essential for improving DORA Change Failure Rate |
| **Could** | Self-service portal UI, cost management dashboards, IaC drift detection | Enhances developer experience but not critical to proving the initial SMART goal within 12 months |
| **Won't** | Multi-cloud support, full legacy application migration, SAFe-scale ceremonies | Out of scope for this phase Legacy migration is a different program of work |

### Scope Prioritization

The three **Must** have requirements follow sequentially. 

Infrastructure architecture decisions need to be made before implementation work starts. Then the pipeline/provisioning can begin (platform-core) where infrastructure as code is enabled to automatically create spoke subscriptions for application teams. 

Then the three application teams can be onboarded and taught about the DORA metrics, shown the dashboards and their way of working can be integrated across the tooling - Azure DevOps, Teams, Repos and Deployment pipelines using secure User Assigned Managed Identities

## Impact Analysis

<!--
Table Section: Impact Analysis (~300 words)
Business Impact Analysis (BIA) and Cost Benefit Analysis (CBA) summaries

This section should:
●  Conduct Business Impact Analysis (BIA) to assess organizational impact.
●  Perform Cost Benefit Analysis (CBA).
●  Create an initial cost estimate.
●  Include budget considerations for the project.
●  Identify the project's key deliverables, milestones, and budget.

Potential features to this section are:
●  A work breakdown structure
●  An initial cost estimate

Note: Total table allocation is 450 words (150+300), but this file has 1000 word limit from original brief.
-->

### Business Impact Analysis (BIA)

As well as the upside of modernisation the business must also recognise the severe downside of a failure to modernise.

In the rapidly changing IT landscape and increased security threats (Booth, 2025) failure to to do bring systems, processes and tooling up-to-date leads to further inertia and fear around change.

| Impact Area | Current State Risk | Post-IDP State |
| --- | --- | --- |
| **Service Continuity** | Outages discovered via complaints; no rollback capability | Automated monitoring, blue/green deployments, rollback within minutes |
| **Security & Compliance** | No policy-as-code; manual patching on ageing VMs; no centralised identity governance | Entra ID RBAC, Azure Policy enforcement at subscription creation, Defender for Cloud baselines |
| **Delivery Speed** | 2-week minimum CAB lead time; no CI/CD | Automated pipelines targeting < 1 day lead time; Deployment of changes go through pipelines and automated tests not the CAB |
| **Staff Capability** | 2010-era practices; low confidence | Teams onboarded to modern tooling with guardrails that reduce cognitive load |
| **Financial** | Escalating support costs for legacy VMs; reactive incident response | Predictable Azure consumption model; proactive monitoring reduces mean time to recovery |

Doing nothing increases risk of severe reputational damage and security exposure. It also further codifies the existing mid 2010's practices and approaches to service delivery. 

### Cost Benefit Analysis (CBA)

Some benefits are hard to quantify, for example, reputational risk in the event of a security breach but we can make a few approximations across a 12 month period.

#### Costs

| Category | Cost Estimate | Notes |
| -------- | ------------- | ----- |
| **Azure costs (infra)** | £100K / year | Costs in year 1 will be quite low and scale as more aplications come on board |
| **Platform Engineers x 2** | £250K | Cost to achieve goal of 3 application teams onboarded
| **Training** | £20K | Workshops, documentation, onboarding |

Total Costs - £370K approx for 12 months

#### Benefits

| Benefit | Annual Savings | Notes |
| ------- | -------------- | ----- |
| **CAB phased out** | £40K | 10 - 20 attendees time every week, automated change approvals eliminate most meetings |
| **Developer productivity increase** | £50-100K | Self service deployments, remove delays waiting for approvals |
| **Risk reduction (security incidents)** | Quantification of this is difficult but it can be classed as potentially millions
| **Faster service delivery** | Quantification of this is again difficult

While the first year investment is 2 - 3 times the quantifiable benefits the intangible value of risk reduction and delivering quality services faster compound over time. 

Again we have to keep in mind the escalating risks of inaction and build a platform which delivers more capability as investments are made into its capabilities by treating the IDP as a product.

<!--
RUBRIC C:
Applies basic knowledge to identify some constraints and risks with limited detail.
Occasionally acknowledges trends, using them to inform partial integration of best practices.

RUBRIC B:
Explains and analyses key constraints and risks.
Develops a project plan with consistent integration of best practices, showing awareness of current trends and innovations.

RUBRIC A:
Synthesises complex information into a concise and coherent project plan.
Critically evaluates constraints and risks, strategically integrating relevant trends and innovations to drive organisational benefits.
-->